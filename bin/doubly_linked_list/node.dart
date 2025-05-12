class Node<T> {
  T data;
  Node<T>? next;
  Node<T>? prev;

  Node(
    this.data, [
    this.next,
    this.prev,
  ]);
}
