using System;

class LinearSearchExample
{
    static int LinearSearch(int[] arr, int target)
    {
        for (int i = 0; i < arr.Length; i++)
        {
            if (arr[i] == target)
            {
                return i;
            }
        }

        return -1;
    }

    static void Main()
    {
        int[] arr = { 10, 25, 30, 45, 50 };
        int target = 30;

        int result = LinearSearch(arr, target);

        if (result == -1)
        {
            Console.WriteLine("Element not found");
        }
        else
        {
            Console.WriteLine("Element found at index: " + result);
        }
    }
}