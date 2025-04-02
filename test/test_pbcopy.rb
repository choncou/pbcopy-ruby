#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative "test_helper"

class TestPbcopy < Minitest::Test
  def setup
    # Clear clipboard before each test
    clear_clipboard
  end

  def test_pbcopy_returns_input
    test_string = "This text was copied to clipboard using pbcopy-ruby gem!"
    result = pbcopy(test_string)
    assert_equal test_string, result
    assert_equal test_string, `pbpaste`.strip
  end

  def test_pbcopy_with_non_string
    result = pbcopy(123)
    assert_equal "123", `pbpaste`.strip
    assert_equal 123, result
  end

  def test_pbcopy_with_array
    array = [:a, :b, :c]
    result = pbcopy(array)
    assert_equal array.to_s, `pbpaste`.strip
    assert_equal array, result
  end

  def test_pbcopy_empty_string
    result = pbcopy("")
    assert_equal "", `pbpaste`.strip
    assert_equal "", result
  end
end 