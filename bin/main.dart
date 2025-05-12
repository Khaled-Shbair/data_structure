import 'stack/stack.dart';
import 'doubly_linked_list/doubly_linked_list.dart';

void main() {
  /// Stack: First In - Last Out (FILO)
  Stack<int> stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print('////////////////////////////////////////////////////////////////////');
  // Challenge 1: Reverse a List
  print('Without Reverse Order:');
  stack.printWithOutReverseOrder();
  print('With Reverse Order:');
  stack.printWithReverseOrder();
  print('////////////////////////////////////////////////////////////////////');
  //Challenge 2: Balance the Parentheses
  print('isBalanced:${isBalanced('(Khaled Shbair)')}');
  print('isBalanced: ${isBalanced('(Khaled Shbair')}');
  print('isBalanced: ${isBalanced('(Khaled Shbair(')}');
  print('isBalanced: ${isBalanced('(Khaled) Shbair')}');
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
  /// Singly linked list, on type from linked list
  final linkedList = DoublyLinkedList<int>();
  linkedList.insert(2);
  linkedList.insert(3);
  linkedList.insert(1);
  linkedList.insert(8);
  linkedList.insert(7);
  linkedList.insert(2);
  linkedList.insert(4);
  print('////////////////////////////////////////////////////////////////////');
  // Challenge 1: Print in Reverse
  print('Print without Reverse:');
  linkedList.printList();
  print('Print with Reverse:');
  linkedList.printReverse();
  print('////////////////////////////////////////////////////////////////////');
  // Challenge 2: Find the Middle Node
  linkedList.findMiddleNode();
  print('////////////////////////////////////////////////////////////////////');
  // Challenge 3: Reverse a Linked List
  print('Print Before Reverse:');
  linkedList.printList();
  print('Print After Reverse:');
  linkedList.reverse();
  linkedList.printList();
  print('////////////////////////////////////////////////////////////////////');
  // Challenge 4: Remove All Occurrences
  print('Print Before Remove Occurrences:');
  linkedList.printList();
  print('Print After Remove Occurrences:');
  linkedList.removeAllOccurrences(2);
  linkedList.printList();
  print('////////////////////////////////////////////////////////////////////');
}
