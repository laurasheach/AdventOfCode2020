require( 'minitest/autorun')
require( 'minitest/rg')
require_relative('Day01A')

class Day01A < MiniTest::Test

  def setup

    @expenses1 = [1721, 979, 366, 299, 675, 1456]
    @expenses2 = [625, 966, 1122, 489, 736, 1568, 351, 1531, 210, 668, 966]

  end

  def test_get_max_number
    assert_equal(1721, get_highest_number(@expenses1))
  end

  def test_get_total
    assert_equal(5496, get_total(@expenses1))
  end

  def test_get_twenty_twenty
    assert_equal("These two numbers which add up to 2020 when multiplied gives us 514579", get_twenty_twenty(@expenses1,2020))
    assert_equal("These two numbers which add up to 2020 when multiplied gives us 748659", get_twenty_twenty(@expenses2,2020))
  end

end
