#!/usr/bin/env ruby

gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'nth_prime'

class NthPrimeTest < Minitest::Test
  def test_first_prime
    assert_equal 2, Prime.nth(1)
  end

  def test_second_prime
    assert_equal 3, Prime.nth(2)
  end

  def test_sixth_prime
    assert_equal 13, Prime.nth(6)
  end

  def test_big_prime
    assert_equal 104743, Prime.nth(10001)
  end

  def test_there_is_no_zeroth_prime
    assert_raises(ArgumentError) { Prime.nth(0) }
  end

  def test_bookkeeping
    assert_equal 1, BookKeeping::VERSION
  end
end
