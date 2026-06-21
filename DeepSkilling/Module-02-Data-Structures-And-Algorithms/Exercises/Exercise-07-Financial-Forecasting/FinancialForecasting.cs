using System;

class FinancialForecasting
{
    static double CalculateFutureValue(double presentValue, double growthRate, int years)
    {
        if (years == 0)
        {
            return presentValue;
        }

        return CalculateFutureValue(presentValue * (1 + growthRate), growthRate, years - 1);
    }

    static void Main()
    {
        double presentValue = 10000;
        double growthRate = 0.10;
        int years = 5;

        double futureValue = CalculateFutureValue(presentValue, growthRate, years);

        Console.WriteLine("Future Value: ₹" + futureValue.ToString("F2"));
    }
}