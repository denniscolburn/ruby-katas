require 'rspec'
require '../lib/two_sum'

describe 'two_sum' do
	context 'returns the elements whose sum equals the target' do
		it 'returns the indexes of the elements whose sum equals the target' do
			nums = [2,11,15,7]
			target = 9
			expected_result = [0, 3]
			actual_result = two_sum(nums, target)
			expect(actual_result).to eq expected_result
		end
		it 'array with 2 elements whose sum equals the target - returns ' do
			nums = [2,7]
			target = 9
			expected_result = [0, 1]
			actual_result = two_sum(nums, target)
			expect(actual_result).to eq expected_result
		end
	end
	
	context 'returns an empty array' do
		it 'input array is empty' do
			nums = []
			target = 9
			expected_result = []
			actual_result = two_sum(nums, target)
			expect(actual_result).to eq expected_result
		end
		it 'array without two elements whose sum equals the target' do
			nums = [2,11,15,8]
			target = 9
			expected_result = []
			actual_result = two_sum(nums, target)
			expect(actual_result).to eq expected_result
		end
	end		
end