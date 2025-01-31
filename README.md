# Lua Silent Error: Implicit nil return
This repository demonstrates a subtle bug in Lua where a missing `return` statement in a conditional branch leads to an implicit `nil` return, causing unexpected behavior.  The bug is silent; it doesn't throw an error, making it harder to debug.

## Bug Description
The `foo` function is intended to return 0 if the input `x` is `nil` and `x + 1` otherwise. However, the `if x == nil then` block is missing a `return` statement. This results in an implicit `nil` being returned when `x` is `nil`, which can lead to unexpected results in other parts of the program. 

## How to Reproduce
1. Run `bug.lua`
2. Observe that the output for `foo(nil)` is `nil`, not `0` as expected.

## Solution
The `bugSolution.lua` file demonstrates the correct implementation with an explicit `return 0` statement in the `if` block.