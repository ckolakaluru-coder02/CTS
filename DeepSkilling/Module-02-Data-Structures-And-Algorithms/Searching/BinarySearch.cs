using System;

class BinarySearchExample
{
    static int BinarySearch(int[] arr, int target)
    {
        int left = 0;
        int right = arr.Length - 1;

        while (left <= right)
        {
            int mid = left + (right - left) / 2;

            if (arr[mid] == target)
            {
                return mid;
            }
            else if (arr[mid] < target)
            {
                left = mid + 1;
            }
            else
            {
                right = mid - 1;
            }
        }

        return -1;
    }

    static void Main()
    {
        int[] arr = { 10, 20, 30, 40, 50, 60 };
        int target = 40;

        int result = BinarySearch(arr, target);

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