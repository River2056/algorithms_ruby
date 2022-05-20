require "test/unit"

def two_sum(nums, target)
  ref = {}
  for i in 0..nums.length do
    if ref.key?(nums[i])
      return [i, ref[nums[i]]]
    else
      diff = target - nums[i]
      ref[diff] = i
    end
  end
end

result = two_sum([2, 7, 11, 15], 9)
print "#{result}\n"
