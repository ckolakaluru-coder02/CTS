using System;

class ECommerceSearch
{
    static int LinearSearch(string[] products, string target)
    {
        for (int i = 0; i < products.Length; i++)
        {
            if (products[i].Equals(target, StringComparison.OrdinalIgnoreCase))
            {
                return i + 1;
            }
        }

        return -1;
    }

    static void Main()
    {
        string[] products = { "Laptop", "Mobile", "Headphones", "Smartwatch", "Keyboard" };

        string target = "Smartwatch";

        int position = LinearSearch(products, target);

        if (position == -1)
        {
            Console.WriteLine("Product Not Found");
        }
        else
        {
            Console.WriteLine("Product Found at Position : " + position);
        }
    }
}