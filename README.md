# Random Sorting

This is a really bad idea, but it was fun. Deterministic output, non-deterministic runtime performance.

We're monkey patching a predicate function for checking thata given Enumerable/Array is sorted and then patching in a new sorting "algorithm" that recursively shuffles the Enumerable/Array until it's sorted

It totally blows the stack after a length of about 8 on my machine. Could maybe use some TCO, but I don't know how to really do that just yet, so whatevers.

Don't use this, ever, for anything. It was basically an excuse to learn about monkey patching which segued into how to write and build a gem.

There aren't any tests for it, either. Sue me
