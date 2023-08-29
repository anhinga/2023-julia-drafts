# this one works:

# julia> d = Dict{String, Any}("x" => 8.0, "y" => -3.0)
# Dict{String, Any} with 2 entries:
#   "x" => 8.0
#   "y" => -3.0
#
# julia> d["a"] = Dict{String, Any}("t" => 7.0, "v" => -9.0)
# Dict{String, Any} with 2 entries:
#   "v" => -9.0
#   "t" => 7.0
#
# julia> d
# Dict{String, Any} with 3 entries:
#   "x" => 8.0
#   "a" => Dict{String, Any}("v"=>-9.0, "t"=>7.0)
#   "y" => -3.0

function norm(v_value)
    if typeof(v_value) <: Number
        return v_value*v_value
    else
        return sum(norm(v_value[key]) for key in keys(v_value))
    end
end

# julia> norm(d)
# 203.0
# 
# julia> using Zygote
#
# julia> this_grad = gradient(norm, d)
# (Dict{Any, Any}("x" => 16.0, "a" => Dict{Any, Any}("v" => -18.0, "t" => 14.0), "y" => -6.0),)

function norm2(v_value)
    if typeof(v_value) <: Number
        return v_value*v_value
    else
        return sum(norm2(value) for (key, value) in v_value)
    end
end

# julia> norm2(d)
# 203.0
# 
# julia> this_grad = gradient(norm2, d)
# (Dict{Any, Any}("x" => 16.0, "a" => Dict{Any, Any}("v" => -18.0, "t" => 14.0), "y" => -6.0),)

# ******************************************************************************************************
# But with the following I am getting a ridiculous diagnostics

function v_value_of_squares(v_value)
    if typeof(v_value) <: Number
        return v_value*v_value
    else
        return return Dict(key => v_value_of_squares(value) for (key, value) in v_value)
    end
end

function sum_leaves(v_value)
    if typeof(v_value) <: Number
        return v_value
    else
        return sum(sum_leaves(value) for (key, value) in v_value)
    end
end

function norm3(v_value)
    sum_leaves(v_value_of_squares(v_value))
end

# julia> v_value_of_squares(d)
# Dict{String, Any} with 3 entries:
#  "x" => 64.0
#  "a" => Dict("v"=>81.0, "t"=>49.0)
#  "y" => 9.0
#
# julia> norm3(d)
# 203.0
#
# julia> this_grad = gradient(norm3, d)
# ERROR: Compiling Tuple{Type{Dict}, Base.Generator{Dict{String, Any}, var"#5#6"}}: try/catch is not supported.
# Refer to the Zygote documentation for fixes.
# https://fluxml.ai/Zygote.jl/latest/limitations
#
# Stacktrace:
#  [1] macro expansion
#    @ C:\Users\anhin\.julia\packages\Zygote\4rucm\src\compiler\interface2.jl:101 [inlined]
3  [2] _pullback(ctx::Zygote.Context{false}, f::Type{Dict}, args::Base.Generator{Dict{String, Any}, var"#5#6"})
#    @ Zygote C:\Users\anhin\.julia\packages\Zygote\4rucm\src\compiler\interface2.jl:101
#  [3] _pullback
#    @ .\REPL[4]:5 [inlined]
#  [4] _pullback(ctx::Zygote.Context{false}, f::typeof(v_value_of_squares), args::Dict{String, Any})
#    @ Zygote C:\Users\anhin\.julia\packages\Zygote\4rucm\src\compiler\interface2.jl:0
#  [5] _pullback
#    @ .\REPL[7]:2 [inlined]
#  [6] _pullback(ctx::Zygote.Context{false}, f::typeof(norm3), args::Dict{String, Any})
#    @ Zygote C:\Users\anhin\.julia\packages\Zygote\4rucm\src\compiler\interface2.jl:0
#  [7] pullback(f::Function, cx::Zygote.Context{false}, args::Dict{String, Any})
#    @ Zygote C:\Users\anhin\.julia\packages\Zygote\4rucm\src\compiler\interface.jl:44
#  [8] pullback
#    @ C:\Users\anhin\.julia\packages\Zygote\4rucm\src\compiler\interface.jl:42 [inlined]
#  [9] gradient(f::Function, args::Dict{String, Any})
#    @ Zygote C:\Users\anhin\.julia\packages\Zygote\4rucm\src\compiler\interface.jl:96
# [10] top-level scope
#    @ REPL[16]:1
