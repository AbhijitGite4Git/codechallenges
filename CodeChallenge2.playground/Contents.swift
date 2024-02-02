import UIKit

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


func invertTree(root : TreeNode?) -> TreeNode{
    swap(tree: root)
    return root!
}

func swap(tree: TreeNode?){
    if (tree == nil) {
        return
    }
    if let validTree = tree {
        if let swappedTempLeft = validTree.left {
            tree?.left = validTree.right
            tree?.right = swappedTempLeft
        }
       
    }
  
    swap(tree: tree?.left)
    swap(tree: tree?.right)
}



let nodeOne = TreeNode(value: 4)
nodeOne.left = TreeNode(value: 2)
nodeOne.right = TreeNode(value: 7)
nodeOne.left?.left = TreeNode(value: 1)
nodeOne.left?.right = TreeNode(value: 3)
nodeOne.right?.left = TreeNode(value: 6)
nodeOne.right?.right = TreeNode(value: 9)

func createBinaryTree(_ array: [Int?]) -> TreeNode? {
    return createBinaryTreeHelper(array, index: 0)
}


func createBinaryTreeHelper(_ array: [Int?], index: Int) -> TreeNode? {
    guard index < array.count, let value = array[index] else {
        return nil
    }

    let node = TreeNode(value)
    node.left = createBinaryTreeHelper(array, index: 2 * index + 1)
    node.right = createBinaryTreeHelper(array, index: 2 * index + 2)

    return node
}

let array = [4, 2, 7, 1, 3, 6, 9]
if let root = createBinaryTree(array) {
    // The binary tree has been created, and you can use the 'root' node.
    // Perform operations on the tree as needed.
    print("Binary Tree created successfully!")
    print(invertTree(root: root))
} else {
    print("Failed to create Binary Tree.")
}



