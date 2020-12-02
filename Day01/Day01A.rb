## Advent of Code Day 1 - Puzzle 1 - Part 1

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

# Find the highest number in the array - extra for myself.
def get_highest_number(expenses)
  return expenses.max_by { |expense| expense }
end

# Find the total of all the numbers in the array - extra for myself.
def get_total(expenses)

  sum = 0

  for expense in expenses
    sum += expense
  end

  return sum

end

# Answer to the original question - pair the numbers in the array using the .combination and .detect methods to find the ones that match the total provided.
def get_twenty_twenty(expenses, total)

  arr = expenses.combination(2).detect { |expense1, expense2| expense1 + expense2 == total }
  multiplied_total = arr[0] * arr[1]

  return "The two numbers which add up to #{total} when multiplied gives us #{multiplied_total}"

end

## Advent of Code Day 1 - Puzzle 1 - Part 2

# The Elves in accounting are thankful for your help; one of them even offers you a starfish coin they had left over from a past vacation. They offer you a second one if you can find three numbers in your expense report that meet the same criteria.
#
# Using the above example again, the three entries that sum to 2020 are 979, 366, and 675. Multiplying them together produces the answer, 241861950.
#
# In your expense report, what is the product of the three entries that sum to 2020?

# Extension of the answer to Part 1, but for the 3 numbers to get to the total.
def get_twenty_twenty_from_three(expenses, total)

  arr = expenses.combination(3).detect { |expense1, expense2, expense3| expense1 + expense2 + expense3 == total }
  multiplied_total = arr[0] * arr[1] * arr[2]

  return "The three numbers which add up to #{total} when multiplied gives us #{multiplied_total}"

end
