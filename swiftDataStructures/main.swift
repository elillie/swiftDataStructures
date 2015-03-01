//
//  main.swift
//  swiftDataStructures
//
//  Created by Ethan Lillie on 12/22/14.
//  Copyright (c) 2014 Ethan Lillie. All rights reserved.
//

import Foundation

//Stack Test
//var stack = ELStack<Int>()
//stack.push(3)
//var three = stack.pop()
//println(three)
//var err = stack.pop()
//println(err)

//Queue Test

//var queue = ELQueue<Int>(queueLength:5)
//queue.enqueue(3)
//queue.enqueue(4)
//queue.enqueue(3)
//queue.enqueue(4)
//var three = queue.dequeue()
//var four = queue.dequeue()
//println(three)
//println(four)
//queue.enqueue(3)
//queue.enqueue(4)
//three = queue.dequeue()
//four = queue.dequeue()
//println(three)
//println(four)
//queue.enqueue(3)
//queue.enqueue(4)
//three = queue.dequeue()
//four = queue.dequeue()
//println(three)
//println(four)

//LinkedList Test

//var node1 = ELLLNode<Int>(key: 3)
//var node2 = ELLLNode<Int>(key: 7)
//
//var list = ELLinkedList<Int>()
//list.listInsert(node1)
//list.listInsert(node2)
//
//var nodeWithThree = list.listSearch(3)
//
//println(nodeWithThree.key)

//Binary Search Tree Test

var node1 = ELBTNode<Int>(key: 4)
var node2 = ELBTNode<Int>(key: 8)

var node3 = ELBTNode<Int>(key: 7)
var node4 = ELBTNode<Int>(key: 1)

var node5 = ELBTNode<Int>(key: 2)
var node6 = ELBTNode<Int>(key: 5)

var tree = ELBinaryTree<Int>()
tree.treeInsert(node1)
tree.treeInsert(node2)
tree.treeInsert(node3)
tree.treeInsert(node4)
tree.treeInsert(node5)
tree.treeInsert(node6)

tree.inorderTreeWalk(node1)

var five = tree.iterativeTreeSearch(node1, k: 5)

println(five.key)

var min = tree.treeMin(node1)

println(min)

var max = tree.treeMax(node1)

println(max)

