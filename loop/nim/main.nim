import os
import std/strutils

let maxStr = paramStr(1)
let max = parseInt(maxStr)
var sum = 0
for i in 0 .. max:
  sum += i

echo sum
