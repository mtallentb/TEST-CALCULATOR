require 'minitest/autorun'
require './calculator'

class TestCalculator < Minitest::Test

  def setup
    puts "set up"
  end

  def test_success
    assert_equal 4, Calculator.new.add(2,2)
  end

  def test_failure
    assert_equal 3, Calculator.new.add(2,2), "Adding doesn't work"
  end

  def teardown
    puts "tear down"
  end

  # Write test methods for subtract, multiply, and divide

  def test_add_success
    assert_equal 0, Calculator.new.subtract(2,2)
  end

  def test_add_failure
    assert_equal 3, Calculator.new.subtract(2,2), "Subtracting doesn't work"
  end

  def test_multiply_success
    assert_equal 9, Calculator.new.multiply(3,3)
  end

  def test_multiply_failure
    assert_equal 3, Calculator.new.multiply(3,3), "Multiplying doesn't work"
  end

  def test_divide_success
    assert_equal 3, Calculator.new.divide(9,3)
  end

  def test__divide_failure
    assert_equal 5, Calculator.new.divide(9,3), "Dividing doesn't work"
  end

end