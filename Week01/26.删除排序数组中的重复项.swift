/*
 * @lc app=leetcode.cn id=26 lang=swift
 *
 * [26] 删除排序数组中的重复项
 */

// @lc code=start
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
       let count = nums.count
       if  count <= 1 {
           return count
       }
       var k = 0
       for i in 1..<count {
           if nums[i] != nums[k] {
               k += 1
               nums[k] = nums[i]
           }
       }
       return k + 1
    }
}
// @lc code=end

