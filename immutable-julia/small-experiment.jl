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
        return sum(norm(value) for (key, value) in v_value)
    end
end

# julia> norm2(d)
# 203.0
# 
# julia> this_grad = gradient(norm2, d)
# (Dict{Any, Any}("x" => 16.0, "a" => Dict{Any, Any}("v" => -18.0, "t" => 14.0), "y" => -6.0),)
