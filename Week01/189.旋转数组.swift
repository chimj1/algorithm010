/*
 * @lc app=leetcode.cn id=189 lang=swift
 *
 * [189] 旋转数组
 */

// @lc code=start
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
       if (k == 0) {return}
        let times = k % nums.count
        let n = nums.count
        nums = Array(nums[n-times..<n]) + Array(nums[0..<n-times]) 
    }
}
// @lc code=end

