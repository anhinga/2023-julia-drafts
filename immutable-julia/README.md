We are having problems with certain Zygote gradients for mutable dictionaries:

https://github.com/anhinga/late-2022-julia-drafts/tree/main/dmm-port-from-clojure/using-Zygote

We are not sure if this problem is caused by
"Don't Unroll Adjoint: Differentiating SSA-Form Programs", https://arxiv.org/abs/1810.07951,
being too optimistic on page 5, where it says:

>One caveat: pullbacks frequently close over their inputs
(for example, both input arrays in matrix multiplication),
and if they are mutated the pullback will be incorrect. Arrays
must therefore either be immutable, be copied on capture,
or have mutations recorded and reversed during the
adjoint program. This is generally not true for operations
on data structures, so things like stacks need no special support.

Because of this, Zygote does allow to mutate dictionaries, but here
I am using nested dictionaries to perform matrix multiplication and such,
so without understanding Zygote internals better it is difficult to say,
if mutable dictionaries are actually OK here.

At the same time, for an immutable version of similar computation 
those gradients work fine in JAX:

https://github.com/anhinga/jax-pytree-example/tree/main/August-2023

So, the question is whether an immutable version would work better with Zygote.

However, so far we are bumping into `ERROR: map is not defined on sets`
generated for Zygote-produced gradient code using sets and keysets.

So it is not clear if this is a viable direction.

GPT-4 has been very helpful in assisting this translation from immutable Python
to immutable Julia, but it is not clear if it can be of much help with
Zygote intricacies (in my experience, both today and earlier, it does not
understand Zygote intricacies all that well).

P.S. In the latest variant, I managed to get rid of sets completely, but I am
getting

```
ERROR: MethodError: no method matching (::ChainRulesCore.ProjectTo{AbstractArray, NamedTuple{(:element, :axes), Tuple{ChainRulesCore.ProjectTo{Float64, NamedTuple{(), Tuple{}}}, Tuple{Base.OneTo{Int64}}}}})(::Tuple{Float64, Float64})
```

This looks more manageable, but I am going to postpone this. Basically, the problem
of needing a help of a Zygote expert remains, just like it has been the case with

https://github.com/anhinga/late-2022-julia-drafts/tree/main/dmm-port-from-clojure/using-Zygote

I am going to see if JAX handles this for me without any expert help,
and I'll eventually revisit the Julia route.
