using System;

class Node
{
    public int Data;
    public Node Next;

    public Node(int data)
    {
        Data = data;
        Next = null;
    }
}

class SinglyLinkedList
{
    Node head;

    public void InsertAtEnd(int data)
    {
        Node newNode = new Node(data);

        if (head == null)
        {
            head = newNode;
            return;
        }

        Node temp = head;
        while (temp.Next != null)
        {
            temp = temp.Next;
        }

        temp.Next = newNode;
    }

    public void Display()
    {
        Node temp = head;

        while (temp != null)
        {
            Console.Write(temp.Data + " -> ");
            temp = temp.Next;
        }

        Console.WriteLine("null");
    }

    static void Main()
    {
        SinglyLinkedList list = new SinglyLinkedList();

        list.InsertAtEnd(10);
        list.InsertAtEnd(20);
        list.InsertAtEnd(30);

        Console.WriteLine("Singly Linked List:");
        list.Display();
    }
}