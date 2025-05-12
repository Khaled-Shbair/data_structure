import 'stack/stack.dart';

void main() {
  /// Stack: First In - Last Out (FILO)
  Stack<int> stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print('Without Reverse Order:');
  stack.printWithOutReverseOrder();
  print('With Reverse Order:');
  stack.printWithReverseOrder();
  print('isBalanced:${isBalanced('(Khaled Shbair)')}');
  print('isBalanced: ${isBalanced('(Khaled Shbair')}');
  print('isBalanced: ${isBalanced('(Khaled Shbair(')}');
  print('isBalanced: ${isBalanced('(Khaled) Shbair')}');
}

bool isBalanced(String input) {
  List<String> wordSplit = input.split('');
  final Stack<String> stack = Stack<String>();

  for (var char in wordSplit) {
    if (char == '(') {
      stack.push(char);
    } else if (char == ')') {
      if (stack.top == null) return false;
      stack.pop();
    }
  }

  return stack.top == null;
}
