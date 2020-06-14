/*
 * @lc app=leetcode.cn id=21 lang=swift
 *
 * [21] 合并两个有序链表
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2
        var prev : ListNode?

        let preHead =  ListNode(-1)
        prev = preHead
        while list1 != nil && list2 != nil {
            if (list1?.val)! <= (list2?.val)! {
                prev?.next = list1
                list1 = list1?.next
            }else {
                prev?.next = list2
                list2 = list2?.next
            }
            prev = prev?.next
        }
        prev?.next = list1 ?? list2
        return preHead.next
    }
}
// @lc code=end

