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
    mult_keys = setdiff(setdiff(joint_keys, number_keys), dict_keys)
    # the remaining case does not generate values and is omitted
    number_key_values = Dict(key => (mult_mask[key]*v_value[key]) for key in number_keys)
    dict_key_values = Dict(key => mult_mask_v_value(mult_mask[key], v_value[key]) for key in dict_keys)
    mult_key_values = Dict(key => mult_v_value(mult_mask[key], v_value[key]) for key in mult_keys) 
    merge(number_key_values, dict_key_values, mult_key_values)
end

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
