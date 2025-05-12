import 'node.dart';

class Stack<T> {
  Node<T>? top;
  int size = 0;

  void push(T data) {
    top = Node<T>(data, top);
    size++;
  }

  T? pop() {
    if (size < 0 || top != null) {
      T element = top!.data;
      top = top!.next;
      size--;
      return element;
    } else {
      print('Stack is empty');
      return null;
    }
  }

  void printWithOutReverseOrder() {
    var start = top;
    while (start != null) {
      print(start.data);
      start = start.next;
    }
  }

  void printWithReverseOrder() {
    var start = top;
    Stack<T> reverseStack = Stack<T>();

    while (start != null) {
      reverseStack.push(start.data);
      start = start.next;
    }

    while (reverseStack.size > 0) {
      print(reverseStack.pop());
    }
  }
}
