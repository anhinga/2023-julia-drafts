### Testing that basic Zygote autograd taking gradients with respect to trees work for a DMM-lite

```julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.9.2 (2023-07-05)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

julia> cd("Desktop/GitHub/2023-julia-drafts/reproduce-in-Julia-1.9.2/DMM-lite")

julia> include("variadic-dp-v0-0-1.jl")
left: 0.0 right: 0.0

timer: 0.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 1.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("t" => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict())
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 0.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(), "dict-1" => Dict())

left: 0.0 right: 0.0

timer: 1.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 2.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 0.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 1.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 2.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 3.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 1.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 3.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 4.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 4.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 5.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 5.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 6.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 6.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 7.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 7.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 8.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 8.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 9.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 9.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 10.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 10.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 11.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("e" => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 11.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 12.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 12.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 13.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 13.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 14.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 14.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 15.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 15.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 16.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 16.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 17.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 17.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 18.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 18.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 19.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 19.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 20.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 20.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 21.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("s" => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 21.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 22.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 22.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 23.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 23.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 24.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 24.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 25.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 25.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 26.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 26.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 27.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 27.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 28.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 28.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 29.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 29.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 30.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 30.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 31.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("t" => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 1.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 31.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 32.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 1.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 32.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 33.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 0.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 0.0 right: 0.0

timer: 33.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 34.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 0.0))

left: 1.0 right: 0.0

timer: 34.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 35.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 35.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 36.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 36.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 37.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 37.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 38.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 38.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 39.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 39.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 40.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 40.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 41.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict(" " => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 41.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 42.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 42.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 43.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 43.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 44.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 44.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 45.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 45.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 46.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 46.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 47.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 47.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 48.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 48.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 49.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 49.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 50.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 50.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 51.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("s" => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 51.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 52.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 52.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 53.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 53.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 54.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 54.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 55.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 55.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 56.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 56.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 57.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 57.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 58.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 58.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 59.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 59.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 60.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 60.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 61.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("t" => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 2.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 61.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 62.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 2.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 62.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 63.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 1.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 1.0 right: 0.0

timer: 63.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 64.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 1.0))

left: 2.0 right: 0.0

timer: 64.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 65.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 65.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 66.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 66.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 67.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 67.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 68.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 68.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 69.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 69.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 70.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 70.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 71.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("r" => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 71.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 72.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 72.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 73.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 73.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 74.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 74.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 75.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 75.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 76.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 76.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 77.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 77.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 78.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 78.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 79.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 79.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 80.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 80.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 81.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("i" => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 81.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 82.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 82.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 83.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 83.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 84.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 84.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 85.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 85.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 86.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 86.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 87.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 87.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 88.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 88.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 89.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 89.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 90.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 90.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 91.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("n" => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 91.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 92.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 92.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 93.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 93.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 94.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 94.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 95.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 95.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 96.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 96.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 97.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 97.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 98.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 98.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 99.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 99.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 100.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 100.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 101.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("g" => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 101.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 102.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 102.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 103.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 103.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 104.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 104.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 105.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 105.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 106.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 106.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 107.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 107.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 108.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 108.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 109.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 109.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 110.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 110.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 111.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("." => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 111.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 112.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 1.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 0.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 0.0

timer: 112.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 113.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 1.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 1.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 0.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 1.0

timer: 113.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 114.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 1.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 1.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 1.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 1.0

timer: 114.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 115.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 1.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 1.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 1.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 1.0

timer: 115.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 116.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 1.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 1.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 1.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 1.0

timer: 116.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 117.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 1.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 1.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 1.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 1.0

timer: 117.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 118.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 1.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 1.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 1.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 1.0

timer: 118.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 119.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 1.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 1.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 1.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 1.0

timer: 119.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 120.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 1.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 1.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 1.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 1.0

timer: 120.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 121.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("." => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 1.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 1.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 1.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 1.0

timer: 121.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 122.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 1.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 1.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 1.0

timer: 122.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 123.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 2.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 1.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 2.0

timer: 123.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 124.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 2.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 2.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 2.0

timer: 124.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 125.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 2.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 2.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 2.0

timer: 125.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 126.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 2.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 2.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 2.0

timer: 126.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 127.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 2.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 2.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 2.0

timer: 127.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 128.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 2.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 2.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 2.0

timer: 128.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 129.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 2.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 2.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 2.0

timer: 129.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 130.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 2.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 2.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 2.0

timer: 130.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 131.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("." => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 2.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 2.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 2.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 2.0

timer: 131.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 132.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 3.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 2.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 2.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 2.0

timer: 132.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 133.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 3.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 3.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 2.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 3.0

timer: 133.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 134.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 3.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 3.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 3.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 3.0

timer: 134.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 135.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 3.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 3.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 3.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 3.0

timer: 135.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 136.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 3.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 3.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 3.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 3.0

timer: 136.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 137.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 3.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 3.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 3.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 3.0

timer: 137.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 138.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 3.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 3.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 3.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 3.0

timer: 138.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 139.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 3.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 3.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 3.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 3.0

timer: 139.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 140.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 3.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 3.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 3.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 3.0

timer: 140.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 141.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict("." => 1.0))
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 3.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 3.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 3.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 3.0

timer: 141.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 142.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 4.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 3.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 3.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 3.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 3.0

timer: 142.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 143.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 4.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 4.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 2.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 4.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 3.0), "dict-1" => Dict(":number" => 2.0))

left: 2.0 right: 4.0

timer: 143.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 144.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 4.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 4.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 3.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 4.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 4.0), "dict-1" => Dict(":number" => 2.0))

left: 3.0 right: 4.0

timer: 144.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 145.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 4.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 4.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 3.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 4.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 4.0), "dict-1" => Dict(":number" => 3.0))

left: 3.0 right: 4.0

timer: 145.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 146.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 4.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 4.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 3.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 4.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 4.0), "dict-1" => Dict(":number" => 3.0))

left: 3.0 right: 4.0

timer: 146.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 147.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 4.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 4.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 3.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 4.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 4.0), "dict-1" => Dict(":number" => 3.0))

left: 3.0 right: 4.0

timer: 147.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 148.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 4.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 4.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 3.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 4.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 4.0), "dict-1" => Dict(":number" => 3.0))

left: 3.0 right: 4.0

timer: 148.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 149.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 4.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 4.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 3.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 4.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 4.0), "dict-1" => Dict(":number" => 3.0))

left: 3.0 right: 4.0

timer: 149.0
timer:   Dict{String, Dict{String, Float32}}("timer" => Dict(":number" => 150.0))
input:   Dict{String, Dict{String, Float32}}("char" => Dict())
accum:   Dict{String, Dict{String, Float32}}("dict" => Dict("n" => 1.0, "g" => 1.0, "e" => 1.0, " " => 1.0, "t" => 3.0, "r" => 1.0, "s" => 2.0, "." => 4.0, "i" => 1.0))
norm:    Dict{String, Dict{String, Float32}}("norm" => Dict(":number" => 4.0))
compare: Dict{String, Dict{String, Float32}}("true" => Dict(":number" => 3.0), "false" => Dict(":number" => 0.0))
dot:     Dict{String, Dict{String, Float32}}("dot" => Dict(":number" => 4.0))

OUTPUT: Dict{String, Dict{String, Float32}}("dict-2" => Dict(":number" => 4.0), "dict-1" => Dict(":number" => 3.0))

left: 3.0 right: 4.0

timer: 150.0
left: 3.0 right: 4.0

timer: 151.0
left: 3.0 right: 4.0

timer: 152.0
left: 3.0 right: 5.0

timer: 153.0
left: 4.0 right: 5.0

timer: 154.0
loss: 390.0
Computing gradient
left: 4.0 right: 5.0

timer: 155.0
left: 4.0 right: 5.0

timer: 156.0
left: 4.0 right: 5.0

timer: 157.0
left: 4.0 right: 5.0

timer: 158.0
left: 4.0 right: 5.0

timer: 159.0
grad: (Dict{Any, Any}("dot" => Dict{Any, Any}("dict-2" => Dict{Any, Any}("eos" => Dict{Any, Any}("char" => -200.0f0)), "dict-1" => Dict{Any, Any}("accum" => Dict{Any, Any}("dict" => -200.0f0))), "output" => Dict{Any, Any}("dict-2" => Dict{Any, Any}("dot" => Dict{Any, Any}("dot" => -250.0f0)), "dict-1" => Dict{Any, Any}("compare" => Dict{Any, Any}("true" => -240.0f0))), "compare" => Dict{Any, Any}("dict-2" => Dict{Any, Any}("const_1" => Dict{Any, Any}("const_1" => 48.0f0)), "dict-1" => Dict{Any, Any}("norm" => Dict{Any, Any}("norm" => -240.0f0))), "norm" => Dict{Any, Any}("dict" => Dict{Any, Any}("accum" => Dict{Any, Any}("dict" => -180.0f0)))),)

julia> 
```
