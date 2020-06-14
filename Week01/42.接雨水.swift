/*
 * @lc app=leetcode.cn id=42 lang=swift
 *
 * [42] 接雨水
 */

// @lc code=start
class Solution {
    func trap(_ height: [Int]) -> Int {
        var left : Int = 0
        var right : Int = height.count - 1
        var max_left : Int = 0
        var max_right : Int = 0
        var res = 0
        while left <= right {
            if max_left < max_right {
                res += max(0, max_left - height[left])
                max_left = max(max_left, height[left])
                left += 1
            }else{
                res += max(0, max_right - height[right])
                max_right = max(max_right, height[right])
                right -= 1
            }
        }
        return res;
    }
}
// @lc code=end

