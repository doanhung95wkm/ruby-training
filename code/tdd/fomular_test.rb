require 'minitest/autorun'
require './fomular'
require 'pry'

class TestSum < Minitest::Test
	def setup
		@fomular = Fomular.new	
	end

	def test_sum
		assert_equal 3, @fomular.sum(1,2)
	end	

	def test_normal_div
		assert_equal 1, @fomular.div(3, 3)
	end

	def test_div_zero
		assert_equal nil, @fomular.div(3, 0)
	end
end

