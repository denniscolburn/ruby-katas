# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

# nums = [2,11,15,7]
# target = 9

def two_sum(nums, target)
	map = {}
	output = []
	(0..(nums.size - 1)).each do |i|
		complement = target - nums[i]
		if (map.key?(complement))
			output += [map[complement], i]
		end
		map[nums[i]] = i
	end
	output
end
