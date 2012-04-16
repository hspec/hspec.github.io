## Getting started
### Step 1: Describe your desired behavior


<pre>
<span class="hs-comment">-- file MathSpec.hs</span>

module MathSpec where

import Test.Hspec.Monadic
import Math

main = hspecX $ do
  describe <span class="hspec-lit">"absolute"</span> $ do
    it <span class="hspec-lit">"returns the original number when given a positive input"</span> $
      absolute 1 == 1

    it <span class="hspec-lit">"returns a positive number when given a negative input"</span> $
      absolute (-1) == 1

    it <span class="hspec-lit">"returns zero when given zero"</span> $
      absolute 0 == 0
</pre>

### Step 2: Write some code

<pre>
<span class="hs-comment">-- file Math.hs</span>

module Math where

absolute n = undefined
</pre>

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
Prelude.undefined

Finished in 0.0004 seconds, used 0.0000 seconds of CPU time

3 examples, 3 failures</span>
</pre>

### Step 4: Implement your desired behavior

<pre>
<span class="hs-comment">-- file Math.hs</span>

module Math where

absolute n = if n < 0 then negate n else n
</pre>

### Step 5: Run again and see it pass

<pre class="terminal">
$ runhaskell MathSpec.hs

absolute
<span class="success"> - returns the original number when given a positive input
 - returns a positive number when given a negative input
 - returns zero when given zero

Finished in 0.0004 seconds, used 0.0000 seconds of CPU time

3 examples, 0 failures</span>
</pre>

## Where to go from here?

* Have a look at a [report of hspec's behavior][hspec-report].
* Learn more about the [monadic][api-monadic] and the
  [non-monadic][api-non-monadic] API.
* Use [QuickCheck][api-quickcheck] and [HUnit][api-hunit] for your examples.

[hspec-report]:     report.html
[api-monadic]:      http://hackage.haskell.org/packages/archive/hspec/latest/doc/html/Test-Hspec-Monadic.html
                      "Haddock documentation for the monadic API"
[api-non-monadic]:  http://hackage.haskell.org/packages/archive/hspec/latest/doc/html/Test-Hspec.html
                      "Haddock documentation for the non-monadic API"
[api-hunit]:        http://hackage.haskell.org/packages/archive/hspec/latest/doc/html/Test-Hspec-HUnit.html
                      "Haddock documentation for HUnit integartion"
[api-quickcheck]:   http://hackage.haskell.org/packages/archive/hspec/latest/doc/html/Test-Hspec-QuickCheck.html
                      "Haddock documentation for QuickCheck integartion"
