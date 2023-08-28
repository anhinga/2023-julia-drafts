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
    joint_keys = Set(keys(mult_mask)) ∩ Set(keys(v_value))
    number_keys = Set([key for key in joint_keys if !(mult_mask[key] isa Dict) && !(v_value[key] isa Dict)])
    dict_keys = Set([key for key in joint_keys if mult_mask[key] isa Dict && v_value[key] isa Dict])
    mult_keys = Set([key for key in joint_keys if !(mult_mask[key] isa Dict) && v_value[key] isa Dict])
    # the remaining case does not generate values and is omitted
    number_key_values = Dict(key => (mult_mask[key]*v_value[key]) for key in number_keys)
    dict_key_values = Dict(key => mult_mask_v_value(mult_mask[key], v_value[key]) for key in dict_keys)
    mult_key_values = Dict(key => mult_v_value(mult_mask[key], v_value[key]) for key in mult_keys) 
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
    all_keys = Set([key for tree in all_trees for key in keys(tree)])
    merged = Dict(
        key => add_v_values([tree[key] for tree in all_trees if haskey(tree, key)]...)
        for key in all_keys
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
    joint_keys = Set(keys(mult_mask)) ∩ Set(keys(v_value))
    number_keys = Set([key for key in joint_keys if !(mult_mask[key] isa Dict) && !(v_value[key] isa Dict)])
    dict_keys = Set([key for key in joint_keys if mult_mask[key] isa Dict && v_value[key] isa Dict])
    mult_keys = Set([key for key in joint_keys if !(mult_mask[key] isa Dict) && v_value[key] isa Dict])
    # the remaining case does not generate values and is omitted
    number_values = [mult_mask[key]*v_value[key] for key in number_keys]
    dict_values = [mult_mask_v_value(mult_mask[key], v_value[key]) for key in dict_keys]
    mult_values = [mult_v_value(mult_mask[key], v_value[key]) for key in mult_keys] 
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
# julia> mult_mask_lin_comb(dict_f, dict_f) # INCORRECT RESULT!
# Dict{String, Float64} with 2 entries:
#   ":number" => 49.0
#   "u"       => 1.0
#
#  julia> mult_mask_lin_comb(dict_a, dict_f)
#  Dict{String, Float64} with 2 entries:
#   ":number" => 28.0
#   "u"       => 2.5
#
# julia> mult_mask_lin_comb(dict_f, dict_a)
# 13.0
