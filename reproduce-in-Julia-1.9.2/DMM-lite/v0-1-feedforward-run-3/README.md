Making sure that software from https://github.com/anhinga/julia-flux-drafts/tree/main/arxiv-1606-09470-section3/May-August-2022/v0-1/feedforward-run-3 still works:

```julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.9.2 (2023-07-05)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

julia> cd("Desktop/GitHub/2023-julia-drafts/reproduce-in-Julia-1.9.2/DMM-lite/v0-1-feedforward-run-3")

julia> include("prepare.jl")
┌ Error: This version of CUDA.jl only supports NVIDIA drivers for CUDA 11.x or higher (yours is for CUDA 10.2.0)
└ @ CUDA C:\Users\anhin\.julia\packages\CUDA\tVtYo\src\initialization.jl:70
FEEDFORWARD with local recurrence and skip connections INCLUDED
DEFINED: opt
SKIPPED: adam_step!
The network is ready to train, use 'steps!(N)'

julia> count(trainable["network_matrix"])
1486

julia> steps!(2)
2023-07-24T15:27:46.058
STEP 1 ================================
prereg loss 434.98627 reg_l1 11.908083 reg_l2 0.150648
loss 434.99817
STEP 2 ================================
prereg loss 417.8722 reg_l1 11.291319 reg_l2 0.14108413
loss 417.88348
2023-07-24T15:29:53.360

julia>
```

Yes, this still looks fine.

Perhaps, a tiny bit of slowdown (127 seconds vs 111 seconds, so it looks like about 15% slower at the moment).
