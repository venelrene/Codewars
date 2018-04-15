"""
Given a list of digits, return the smallest number that could be formed from these digits, using the digits only once (= ignore duplicates).

Note: Only positive integers will be passed to the function (> 0 ), no negatives or zeros.

Examples
[1, 3, 1]  ==> 13

# [5, 7, 5, 9, 7]  ==> 579

# [1, 9, 3, 1, 7, 4, 6, 6, 7] ==> 134679
"""


def min_value(digits):
  sort = sorted(list(set(digits)))
  dig = int("".join(map(str, sort)))
  return dig