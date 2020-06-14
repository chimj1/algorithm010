/*
 * @lc app=leetcode.cn id=1 lang=swift
 *
 * [1] 两数之和
 */

// @lc code=start
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic: [Int: Int] = [:]
        for (index, num) in nums.enumerated() {
            let remainder = target - num
            if (dic.keys.contains(remainder)) {
                if let remainderIndex = dic[remainder], remainderIndex != index {
                    return [remainderIndex, index]
                }
            }
            dic[num] = index
        }
        return []
    }
}
// @lc code=end

