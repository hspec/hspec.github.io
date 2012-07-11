### A report of hspec's behavior

<pre class="terminal">

the "describe" function<span class="success">
 - takes a description of what the behavior is for
 - groups behaviors for what's being described</span>

  a nested description<span class="success">
   - has it's own specs</span>

the "it" function<span class="success">
 - takes a description of a desired behavior
 - takes an example of that behavior
 - can use a Bool, HUnit Test, QuickCheck property, or "pending" as an example
 - will treat exceptions as failures</span>

the "hspec" function<span class="success">
 - displays a header for each thing being described
 - displays one row for each behavior
 - displays a row for each successfull, failed, or pending example
 - displays a detailed list of failed examples
 - displays a '#' with an additional message for pending examples
 - summarizes the time it takes to finish
 - summarizes the number of examples and failures
 - outputs failed examples in red, pending in yellow, and successful in green</span>

Bool as an example<span class="success">
 - is just an expression that evaluates to a Bool</span>

HUnit TestCase as an example<span class="success">
 - is specified with the HUnit "TestCase" data constructor
 - is the assumed example for IO() actions
 - will show the failed assertion text if available (e.g. assertBool)
 - will show the failed assertion expected and actual values if available (e.g. assertEqual)</span>

QuickCheck property as an example<span class="success">
 - is specified with the "property" function
 - will show what falsified it</span>

pending as an example<span class="success">
 - is specified with the "pending" function and an explanation
 - accepts a message to display in the report</span>

the "hHspecWithFormat" function<span class="success">
 - can use the "silent" formatter to show no output
 - can use the "progress" formatter to show '..F...FF.F' style output
 - can use the "specdoc" formatter to show all examples (default)
 - can use the "failed_examples" formatter to show only failed examples</span>

quantify (an internal function)<span class="success">
 - returns an amount and a word given an amount and word
 - returns a singular word given the number 1
 - returns a plural word given a number greater than 1
 - returns a plural word given the number 0</span>

Finished in 0.0433 seconds, used 0.0320 seconds of CPU time

<span class="success">32 examples, 0 failures</span>
</pre>
