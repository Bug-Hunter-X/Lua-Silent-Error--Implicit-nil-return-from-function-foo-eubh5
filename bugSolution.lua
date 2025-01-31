local function foo(x)
  if x == nil then
    return 0  -- Explicit return statement added here
  else
    return x + 1
  end
end

print(foo(nil))  -- Output: 0
print(foo(5))   -- Output: 6

--This corrected version explicitly returns 0 when x is nil, fixing the unexpected behavior.  Always ensure all code paths within a function have an explicit return statement to avoid such silent errors.