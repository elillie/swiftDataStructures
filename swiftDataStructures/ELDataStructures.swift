//
//  ELStack.swift
//  swiftDataStructures
//
//  Created by Ethan Lillie on 12/22/14.
//  Copyright (c) 2014 Ethan Lillie. All rights reserved.
//

import Cocoa

struct ELStack<T> {
    var items = [T]()
    var top = 0
    func stackEmpty()->(Bool){
        if top == 0 {return true}
        else {return false}
    }
    mutating func push(item: T){
        items.append(item)
        top++;
    }
    mutating func pop() -> T{
//        if stackEmpty() {return}
//        else {
            return items.removeLast()
        //}
    }
}

class ELQueue<T> {
    var items = [T]()
    var head = 0
    var tail = 0
    var length = 0
    init(queueLength: Int){
        length = queueLength
    }
    func queueEmpty()->(Bool){
        if (head == tail) {return true}
        else {return false}
    }
    func enqueue(item: T){
        if (items.count == length) {
            println("no can do")
            return
        }
        items.insert(item, atIndex: tail)
        if (tail == length-1)
        {
            tail = 0
        } else {
            tail++
        }
    }
    func dequeue()->(T)
    {
        var x = items[head]
        items.removeAtIndex(head)
//        if (head == length-1)
//        {
//            head = 0
//        }else {
            //head++
            if (tail==0)
            {
                tail = length-1
            } else {
                tail--
            }
//        }
        return x
    }
}
class ELLLNode<T: Equatable> {
    var key:T? = nil
    var prev:ELLLNode<T>? = nil
    var next:ELLLNode<T>? = nil
    init (key aKey:T) {
        key = aKey
    }
}
class ELLinkedList<T: Equatable> {
    var head:ELLLNode<T>? = nil
    var tail:ELLLNode<T>? = nil
    func listSearch(searchKey:T) -> (ELLLNode<T>) {
        var x = self.head
        while (x?.key != searchKey && x != nil) {
            x = x?.next
        }
        return x!
    }
    func listInsert(x:ELLLNode<T>) {
        x.next = head
        if (head != nil) {
            head?.prev = x
        }
        head = x
        x.prev = nil
    }
    func listDelete(x:ELLLNode<T>) {
        if (x.prev != nil) {
            x.prev?.next = x.next
        } else {
            head = x.next
        }
        if (x.next != nil) {
            x.next?.prev = x.prev
        }
    }
}
class ELBTNode <T:Equatable> {
  var key:Int
  // satellite data
  var p:ELBTNode<T>? = nil
  var left:ELBTNode<T>? = nil
  var right: ELBTNode<T>? = nil
  init (key aKey:Int) {
    key = aKey
  }
}
class ELBinaryTree<T: Equatable> {
  var head:ELBTNode<T>? = nil
  //height?
  func treeInsert(x:ELBTNode<T>) {
    var foremost = head
    if (head == nil)
    {
      head = x
    } else {
      var placed = false
      while (placed == false) {
        if (x.key > foremost?.key)
        {
          if (foremost?.right? == nil)
          {
            foremost?.right = x
            placed = true
          } else {
            foremost = foremost?.right
          }
        } else {
          if (foremost?.left == nil)
          {
            foremost?.left = x
            placed = true
          } else {
            foremost = foremost?.left
          }
        }
      }
    }
  }
  func inorderTreeWalk(x:ELBTNode<T>?) {
    if (x != nil) {
      self.inorderTreeWalk(x!.left)
      println(x!.key)
      self.inorderTreeWalk(x!.right)
    }
  }
  func treeSearch(x:ELBTNode<T>?, k:Int)->(ELBTNode<T>) {
    if (x==nil||k==x?.key)
    {
      return x!
    }
    if (k<x?.key)
    {
      return self.treeSearch(x?.left, k: k)
    } else{
      return self.treeSearch(x?.right, k: k)
    }
  }
  func iterativeTreeSearch(x:ELBTNode<T>?, k:Int)->(ELBTNode<T>) {
    var xx = x
    while (xx != nil && k != xx?.key)
    {
      if (k<xx?.key) {
        xx = xx?.left
      } else {
        xx = xx?.right
      }
    }
    return xx!
  }
  func treeMin(x:ELBTNode<T>?)->(Int) {
    var xx = x
    while (xx?.left != nil) {
      xx = xx?.left
    }
    return xx!.key
  }
  func treeMax(x:ELBTNode<T>?)->(Int) {
    var xx = x
    while (xx?.right != nil) {
      xx = xx?.right
    }
    return xx!.key
  }
}