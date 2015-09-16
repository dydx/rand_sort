# Random Sorting

This is a really bad idea, but it was fun. Deterministic output, non-deterministic runtime performance.

We're monkey patching a predicate function for checking that a given Enumerable/Array is sorted and then patching in a new sorting "algorithm" that recursively shuffles the Enumerable/Array until it's sorted

It totally blows the stack after a length of about 8 on my machine. Could maybe use some TCO, but I don't know how to really do that just yet, so whatevers.

Don't use this, ever, for anything. It was basically an excuse to learn about monkey patching which segued into how to write and build a gem.

There aren't any tests for it, either. Sue me

# Usage

In your `Gemfile`:

```
gem 'rand_sort', :github => 'dydx/rand_sort'
```

then just `require 'rand_sort'` in your project

Now you can do things like this:

```
arr = (1..6).to_a.shuffle
p arr.rsort
```

The ability and right to do what you want is awesome, isn't it? Knowing the answer to "should I actually do this?" is also pretty awesome.

Don't do this. Please
