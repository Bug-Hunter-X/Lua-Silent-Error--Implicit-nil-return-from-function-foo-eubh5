local function foo(x)
  if x == nil then
    return 0  -- Missing 'return' here caused unexpected behavior
  else
    return x + 1
  end
end

print(foo(nil))  -- Output: 0
print(foo(5))   -- Output: 6

--In the above code, the omission of a return statement in the 'if' condition when x is nil leads to an implicit return of nil. This unexpected behavior can be hard to track down.
