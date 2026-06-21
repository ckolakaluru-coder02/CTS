using System;

class ArrayOperations
{
    static void DisplayArray(int[] arr, int size)
    {
        Console.WriteLine("Array elements:");
        for (int i = 0; i < size; i++)
        {
            Console.Write(arr[i] + " ");
        }
        Console.WriteLine();
    }

    static int InsertElement(int[] arr, int size, int element, int position)
    {
        if (position < 0 || position > size)
        {
            Console.WriteLine("Invalid position");
            return size;
        }

        for (int i = size; i > position; i--)
        {
            arr[i] = arr[i - 1];
        }

        arr[position] = element;
        return size + 1;
    }

    static int DeleteElement(int[] arr, int size, int position)
    {
        if (position < 0 || position >= size)
        {
            Console.WriteLine("Invalid position");
            return size;
        }

        for (int i = position; i < size - 1; i++)
        {
            arr[i] = arr[i + 1];
        }

        return size - 1;
    }

    static void Main()
    {
        int[] arr = new int[10];
        int size = 5;

        arr[0] = 10;
        arr[1] = 20;
        arr[2] = 30;
        arr[3] = 40;
        arr[4] = 50;

        DisplayArray(arr, size);

        size = InsertElement(arr, size, 25, 2);
        Console.WriteLine("After insertion:");
        DisplayArray(arr, size);

        size = DeleteElement(arr, size, 3);
        Console.WriteLine("After deletion:");
        DisplayArray(arr, size);
    }
}