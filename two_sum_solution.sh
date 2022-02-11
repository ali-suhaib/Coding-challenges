#!/bin/bash

irb <<EOF

def two_sum(nums, target)
  if 2 <= nums.length && nums.length <= 10**4 && -10**9 <= target && target <= 10**9
    arr = []
    nums.map.each_with_index{ |x,i| 
      next if 2*x == target && nums.reverse.index(target-x) > i
      if -10**9 <= nums[i] && nums[i] <= 10**9
        if nums.include? (target-x)
          arr << i
          arr << nums.length-nums.reverse.index(target-x)-1
          break
        end
      end
    }
    arr  
  end
end

"Result ====#{two_sum([2,7,11,15],9)}"
"Result ====#{two_sum([3,2,4],6)}"
"Result ====#{two_sum([3,3],6)}"
EOF
