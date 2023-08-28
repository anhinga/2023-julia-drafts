function mult_v_value(multiplier, v_value)
    if typeof(v_value) <: Number
        return multiplier*v_value
    else
        return Dict(key => mult_v_value(multiplier, v_value[key]) for key in keys(v_value))
    end
end

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
# 
# julia> mult_v_value(5.0, d)
# Dict{String, Any} with 3 entries:
#   "x" => 40.0
#   "a" => Dict("v"=>-45.0, "t"=>35.0)
#   "y" => -15.0

function mult_mask_v_value(mult_mask::Dict{String, Any} , v_value::Dict{String, Any})
    joint_keys = Dict{String, Any}(key => 1.0 for (key, value) in merge(mult_mask, v_value))
    number_keys = Dict{String, Any}(key => 1.0 for (key, value) in joint_keys 
	                                if !(mult_mask[key] isa Dict) && !(v_value[key] isa Dict))
    dict_keys = Dict{String, Any}(key => 1.0 for (key, value) in joint_keys 
	                              if mult_mask[key] isa Dict && v_value[key] isa Dict)
    mult_keys = Dict{String, Any}(key => 1.0 for (key, value) in joint_keys
	                              if !(mult_mask[key] isa Dict) && v_value[key] isa Dict)
    # the remaining case does not generate values and is omitted
    number_key_values = Dict(key => (mult_mask[key]*v_value[key]) for (key, value) in number_keys)
    dict_key_values = Dict(key => mult_mask_v_value(mult_mask[key], v_value[key]) for (key, value) in dict_keys)
    mult_key_values = Dict(key => mult_v_value(mult_mask[key], v_value[key]) for (key, value) in mult_keys) 
    merge(number_key_values, dict_key_values, mult_key_values)
end

# julia> mult_mask_v_value(d, d)
# Dict{Any, Any} with 3 entries:
#  "x" => 64.0
#  "a" => Dict{Any, Any}("v"=>81.0, "t"=>49.0)
#  "y" => 9.0

function add_v_values(v_values...)
    trees = [v_value for v_value in v_values if v_value isa Dict]
    numbers = [v_value for v_value in v_values if !(v_value isa Dict)]
    if isempty(trees)
        return sum(numbers)
    end
    all_trees = !isempty(numbers) ? [trees..., Dict(":number" => sum(numbers))] : trees
    all_keys = Dict{String, Any}(key => 1.0 for tree in all_trees for (key, value) in tree)
    merged = Dict(
        key => add_v_values([tree[key] for tree in all_trees if haskey(tree, key)]...)
        for (key, value) in all_keys
    )
    return merged
end

# julia> tree1 = Dict{String, Any}("a" => 1, "b" => Dict{String, Any}("c" => 2, "d" => 3), "e" => 4)
# Dict{String, Any} with 3 entries:
#   "e" => 4
#   "b" => Dict{String, Any}("c"=>2, "d"=>3)
#   "a" => 1
# 
# julia> tree2 = Dict{String, Any}("a" => Dict{String, Any}("z" => 0), "b" => Dict{String, Any}("c" => 6), "f" => 7)
# Dict{String, Any} with 3 entries:
#   "f" => 7
#   "b" => Dict{String, Any}("c"=>6)
#   "a" => Dict{String, Any}("z"=>0)
# 
# julia> tree3 = Dict{String, Any}("b" => 7)
# Dict{String, Any} with 1 entry:
#   "b" => 7
# 
# julia> add_v_values(tree1, tree2)
# Dict{String, Any} with 4 entries:
#   "f" => 7
#   "e" => 4
#   "b" => Dict("c"=>8, "d"=>3)
#   "a" => Dict(":number"=>1, "z"=>0)
# 
# julia> add_v_values(tree1, tree3)
# Dict{String, Any} with 3 entries:
#   "e" => 4
#   "b" => Dict(":number"=>7, "c"=>2, "d"=>3)
#   "a" => 1
# 
# julia> add_v_values(tree2, tree3)
# Dict{String, Any} with 3 entries:
#   "f" => 7
#   "b" => Dict(":number"=>7, "c"=>6)
#   "a" => Dict("z"=>0)
# 
# julia> add_v_values(tree1, tree2, tree3)
# Dict{String, Any} with 4 entries:
#   "f" => 7
#   "e" => 4
#   "b" => Dict(":number"=>7, "c"=>8, "d"=>3)
#   "a" => Dict(":number"=>1, "z"=>0)

function mult_mask_lin_comb(mult_mask::Dict{String, Any} , v_value::Dict{String, Any})
    joint_keys = Dict{String, Any}(key => 1.0 for (key, value) in merge(mult_mask, v_value))
    number_keys = Dict{String, Any}(key => 1.0 for (key, value) in joint_keys 
	                                if !(mult_mask[key] isa Dict) && !(v_value[key] isa Dict))
    dict_keys = Dict{String, Any}(key => 1.0 for (key, value) in joint_keys  
	                              if mult_mask[key] isa Dict && v_value[key] isa Dict)
    mult_keys = Dict{String, Any}(key => 1.0 for (key, value) in joint_keys  
	                              if !(mult_mask[key] isa Dict) && v_value[key] isa Dict)
    # the remaining case does not generate values and is omitted
    number_values = [mult_mask[key]*v_value[key] for (key, value) in number_keys]
    dict_values = [mult_mask_lin_comb(mult_mask[key], v_value[key]) for (key, value) in dict_keys]
    mult_values = [mult_v_value(mult_mask[key], v_value[key]) for (key, value) in mult_keys]
    add_v_values(vcat(number_values, dict_values, mult_values)...)
end

# julia> dict_a = Dict{String, Any}("a" => 2.0, "b" => 3.0, "c" => 2.5)
# Dict{String, Any} with 3 entries:
#   "c" => 2.5
#   "b" => 3.0
#   "a" => 2.0
#
# julia> dict_f = Dict{String, Any}("a" => 2.0, "b" => 3.0, "c" => Dict{String, Any}(":number" => 6.0, "u" => 1.0))
# Dict{String, Any} with 3 entries:
#   "c" => Dict{String, Any}(":number"=>6.0, "u"=>1.0)
#   "b" => 3.0
#   "a" => 2.0
#
# julia> mult_mask_lin_comb(dict_a, dict_a)
# 19.25
#
# julia> mult_mask_lin_comb(dict_f, dict_f)
# 50.0
#
#  julia> mult_mask_lin_comb(dict_a, dict_f)
#  Dict{String, Float64} with 2 entries:
#   ":number" => 28.0
#   "u"       => 2.5
#
# julia> mult_mask_lin_comb(dict_f, dict_a)
# 13.0

But gradients don't work with sets!!!

julia> function self_apply(x)
           return mult_mask_lin_comb(x, x)
       end
self_apply (generic function with 1 method)

julia> self_apply(dict_f)
50.0

julia> this_grad = gradient(self_apply, dict_f)
ERROR: MethodError: no method matching (::ChainRulesCore.ProjectTo{AbstractArray, NamedTuple{(:element, :axes), Tuple{ChainRulesCore.ProjectTo{Float64, NamedTuple{(), Tuple{}}}, Tuple{Base.OneTo{Int64}}}}})(::Tuple{Float64, Float64})

Closest candidates are:
  (::ChainRulesCore.ProjectTo{AbstractArray})(::Union{LinearAlgebra.Adjoint{T, var"#s971"}, LinearAlgebra.Transpose{T, var"#s971"}} where {T, var"#s971"<:(AbstractVector)})
   @ ChainRulesCore C:\Users\anhin\.julia\packages\ChainRulesCore\0t04l\src\projection.jl:247
  (::ChainRulesCore.ProjectTo{AbstractArray})(::AbstractArray{<:ChainRulesCore.AbstractZero})
   @ ChainRulesCore C:\Users\anhin\.julia\packages\ChainRulesCore\0t04l\src\projection.jl:244
  (::ChainRulesCore.ProjectTo{AbstractArray})(::AbstractArray{S, M}) where {S, M}
   @ ChainRulesCore C:\Users\anhin\.julia\packages\ChainRulesCore\0t04l\src\projection.jl:219
  ...

Stacktrace:
  [1] (::ChainRules.var"#1411#1416"{ChainRulesCore.ProjectTo{AbstractArray, NamedTuple{(:element, :axes), Tuple{ChainRulesCore.ProjectTo{Float64, NamedTuple{(), Tuple{}}}, Tuple{Base.OneTo{Int64}}}}}, Tuple{UnitRange{Int64}}, ChainRulesCore.Tangent{Any, Tuple{Float64, Float64, Float64}}})()
    @ ChainRules C:\Users\anhin\.julia\packages\ChainRules\9sNmB\src\rulesets\Base\array.jl:310
  [2] unthunk
    @ C:\Users\anhin\.julia\packages\ChainRulesCore\0t04l\src\tangent_types\thunks.jl:204 [inlined]
  [3] unthunk(x::ChainRulesCore.InplaceableThunk{ChainRulesCore.Thunk{ChainRules.var"#1411#1416"{ChainRulesCore.ProjectTo{AbstractArray, NamedTuple{(:element, :axes), Tuple{ChainRulesCore.ProjectTo{Float64, NamedTuple{(), Tuple{}}}, Tuple{Base.OneTo{Int64}}}}}, Tuple{UnitRange{Int64}}, ChainRulesCore.Tangent{Any, Tuple{Float64, Float64, Float64}}}}, ChainRules.var"#1410#1415"{Tuple{UnitRange{Int64}}, ChainRulesCore.Tangent{Any, Tuple{Float64, Float64, Float64}}}})
    @ ChainRulesCore C:\Users\anhin\.julia\packages\ChainRulesCore\0t04l\src\tangent_types\thunks.jl:237
  [4] wrap_chainrules_output
    @ C:\Users\anhin\.julia\packages\Zygote\4rucm\src\compiler\chainrules.jl:110 [inlined]
  [5] map
    @ .\tuple.jl:275 [inlined]
  [6] map
    @ .\tuple.jl:276 [inlined]
  [7] wrap_chainrules_output
    @ C:\Users\anhin\.julia\packages\Zygote\4rucm\src\compiler\chainrules.jl:111 [inlined]
  [8] (::Zygote.ZBack{ChainRules.var"#vcat_pullback#1412"{Tuple{ChainRulesCore.ProjectTo{AbstractArray, NamedTuple{(:element, :axes), Tuple{ChainRulesCore.ProjectTo{Float64, NamedTuple{(), Tuple{}}}, Tuple{Base.OneTo{Int64}}}}}, ChainRulesCore.ProjectTo{AbstractArray, NamedTuple{(:element, :axes), Tuple{ChainRulesCore.ProjectTo{Float64, NamedTuple{(), Tuple{}}}, Tuple{Base.OneTo{Int64}}}}}, ChainRulesCore.ProjectTo{AbstractArray, NamedTuple{(:elements, :axes), Tuple{Vector{Any}, Tuple{Base.OneTo{Int64}}}}}}, Tuple{Tuple{Int64}, Tuple{Int64}, Tuple{Int64}}, Val{1}}})(dy::Tuple{Float64, Float64, Float64})
    @ Zygote C:\Users\anhin\.julia\packages\Zygote\4rucm\src\compiler\chainrules.jl:211
  [9] Pullback
    @ .\REPL[148]:13 [inlined]
 [10] (::Zygote.Pullback{Tuple{typeof(mult_mask_lin_comb), Dict{String, Any}, Dict{String, Any}}, Tuple{Zygote.Pullback{Tuple{Type{Base.Generator}, var"#226#236", Vector{Pair{String, Any}}}, Tuple{Zygote.Pullback{Tuple{Type{Base.Generator{Vector{Pair{String, Any}}, var"#226#236"}}, var"#226#236", Vector{Pair{String, Any}}}, Tuple{Zygote.var"#2214#back#313"{Zygote.Jnew{Base.Generator{Vector{Pair{String, Any}},
