import UIKit

var greeting = "Hello, playground"

//* Definition for a binary tree node.
class TreeNode {
    var value: Int
    var left: TreeNode?
    var right: TreeNode?

    init(value: Int) {
        self.value = value
        self.left = nil
        self.right = nil
    }
}



func checkSymetric(_ tree: TreeNode?) -> Bool{
    if tree?.value == nil {
        return true
    }
    return helper(left: tree?.left, right: tree?.right)
}

func helper(left : TreeNode?, right: TreeNode?) -> Bool {
    if (left == nil && right == nil) {
        return true
    }
    if (left == nil || right == nil || left?.value != right?.value) {
        return false
    }
    
    return helper(left: left?.left, right: right?.right) && helper(left: left?.right, right: right?.left)
}

let nodeOne = TreeNode(value: 1)
nodeOne.left = TreeNode(value: 2)
nodeOne.right = TreeNode(value: 2)
//nodeOne.left?.left = TreeNode(value: 3)
nodeOne.left?.right = TreeNode(value: 4)
//nodeOne.right?.left = TreeNode(value: 4)
nodeOne.right?.right = TreeNode(value: 4)


print(checkSymetric(nodeOne))
