import '../doubly_linked_list/node.dart';

class DoublyLinkedList<T> {
  Node<T>? _head;
  Node<T>? _tail;
  int _size = 0;

  void insert(T data) {
    if (_head == null) {
      _insertAtFirst(data);
    } else {
      _insertAtLast(data);
    }
  }

  void _insertAtFirst(T data) {
    var newNode = Node<T>(data);
    if (_head == null) {
      _head = newNode;
      _tail = _head;
    }

    _size++;
  }

  void _insertAtLast(T data) {
    var newNode = Node<T>(data);
    if (_head != null) {
      _tail!.next = newNode;
      newNode.prev = _tail;
      _tail = newNode;
    }
    _size++;
  }

  void printList() {
    if (_size != 0) {
      Node<T> currentNode = _head!;
      String output = '';
      for (int x = 0; x <= _size; x++) {
        output += '${currentNode.data} ';
        if (currentNode.next == null) {
          break;
        } else {
          currentNode = currentNode.next!;
        }
      }
      print(output);
    } else {
      print('List is empty');
    }
  }

  void printReverse() {
    if (_size != 0 && _tail != null) {
      Node<T> currentNode = _tail!;
      String output = '';
      for (int i = 0; i <= _size; i++) {
        output += '${currentNode.data} ';
        if (currentNode.prev == null) {
          break;
        } else {
          currentNode = currentNode.prev!;
        }
      }
      print(output);
    } else {
      print('List is empty');
    }
  }

  void findMiddleNode() {
    if (_size != 0) {
      int middleIndex = _size ~/ 2;
      Node<T> currentNode = _head!;
      for (int x = 0; x < middleIndex; x++) {
        currentNode = currentNode.next!;
      }
      print('Middle Node: ${currentNode.data}');
    } else {
      print('List is empty');
    }
  }

  void reverse() {
    if (_size < 2) return;
    Node<T>? currentNode = _head;
    Node<T>? temp;
    for (int x = 0; x < _size; x++) {
      if (currentNode != null) {
        temp = currentNode.prev;
        currentNode.prev = currentNode.next;
        currentNode.next = temp;

        currentNode = currentNode.prev;
      }
      temp = _head;
      _head = _tail;
      _tail = temp;
    }
  }

  void removeAllOccurrences(T value) {
    if (_head != null || _size == 0) {
      Node<T> currentNode = _head!;
      for (int x = 0; x < _size; x++) {
        if (currentNode.data == value) {
          if (currentNode == _head) {
            _head = currentNode.next;
            _head!.prev = null;
          } else {
            currentNode.prev?.next = currentNode.next;
          }

          if (currentNode == _tail) {
            _tail = currentNode.prev;
            _tail!.next = null;
          } else {
            currentNode.next?.prev = currentNode.prev;
          }

          _size--;
        }

        currentNode = currentNode.next!;
      }
    } else {
      print('List is empty');
    }
  }
}
