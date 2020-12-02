# Advent of Code Day 1 - Puzzle 1

# Before you leave, the Elves in accounting just need you to fix your expense report
# (your puzzle input); apparently, something isn't quite adding up.
#
# Specifically, they need you to find the two entries that sum to 2020 and then multiply
# those two numbers together.
#
# For example, suppose your expense report contained the following:
#
# 1721
# 979
# 366
# 299
# 675
# 1456
#
# In this list, the two entries that sum to 2020 are 1721 and 299. Multiplying them together
# produces 1721 * 299 = 514579, so the correct answer is 514579.
#
# Of course, your expense report is much larger. Find the two entries that sum to 2020;
# what do you get if you multiply them together?

## Note - I have gone beyond the requirements in order to practice my code & assist my learning

# require ('pry')

  # expenses = [1721, 979, 366, 299, 675, 1456]
  # total = 2020

def get_highest_number(expenses)
  return expenses.max_by { |expense| expense }
end

def get_total(expenses)

  sum = 0

  for expense in expenses
    sum += expense
  end

  return sum

end

def get_twenty_twenty(expenses, total)

  arr = expenses.combination(2).detect { |expense1, expense2| expense1 + expense2 == total }
  multiplied_total = arr[0] * arr[1]

  return "These two numbers which add up to #{total} when multiplied gives us #{multiplied_total}"

end
