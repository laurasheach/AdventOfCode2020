## Advent of Code Day 1 - Puzzle 1 - Part 1

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

# Extension of the answer to Part 1, but for the 3 numbers to get to the total.
def get_twenty_twenty_from_three(expenses, total)

  arr = expenses.combination(3).detect { |expense1, expense2, expense3| expense1 + expense2 + expense3 == total }
  multiplied_total = arr[0] * arr[1] * arr[2]

  return "The three numbers which add up to #{total} when multiplied gives us #{multiplied_total}"

end
