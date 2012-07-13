## Getting started
### Step 1: Describe your desired behavior

$MathSpec$

### Step 2: Write some code

$Math0$

### Step 3: Run and watch it fail

<pre class="terminal">
$ runhaskell MathSpec.hs

absolute
<span class="fail"> - returns the original number when given a positive input FAILED [1]
 - returns a positive number when given a negative input FAILED [2]
 - returns zero when given zero FAILED [3]

1) absolute returns the original number when given a positive input FAILED
Prelude.undefined

2) absolute returns a positive number when given a negative input FAILED
Prelude.undefined

3) absolute returns zero when given zero FAILED
Prelude.undefined</span>

Finished in 0.0004 seconds, used 0.0000 seconds of CPU time

<span class="fail">3 examples, 3 failures</span>
</pre>

### Step 4: Implement your desired behavior

$Math$

### Step 5: Run again and see it pass

<pre class="terminal">
$ runhaskell MathSpec.hs

absolute
<span class="success"> - returns the original number when given a positive input
 - returns a positive number when given a negative input
 - returns zero when given zero</span>

Finished in 0.0004 seconds, used 0.0000 seconds of CPU time

<span class="success">3 examples, 0 failures</span>
</pre>

## Where to go from here?

* Have a look at the [API documentation][api-docs].
* Use [QuickCheck][api-quickcheck] and [HUnit][api-hunit] for your examples.
* Use [RSpec-style expectation terminology][expectations] for your examples.
* Learn about [automatic spec discovery][hspec-discover]
* Have a look at a [report of hspec's behavior][hspec-report].

[hspec-report]:     report.html
[api-docs]:  http://hackage.haskell.org/packages/archive/hspec/latest/doc/html/Test-Hspec.html
                      "Haddock documentation for the non-monadic API"
[api-hunit]:        http://hackage.haskell.org/packages/archive/hspec/latest/doc/html/Test-Hspec-HUnit.html
                      "Haddock documentation for HUnit integartion"
[api-quickcheck]:   http://hackage.haskell.org/packages/archive/hspec/latest/doc/html/Test-Hspec-QuickCheck.html
                      "Haddock documentation for QuickCheck integartion"
[hspec-discover]:   https://github.com/hspec/hspec/tree/master/hspec-discover#readme
                      "README for hspec-discover"
[expectations]:     https://github.com/sol/hspec-expectations#readme
                      "README for hspec-expectations"
