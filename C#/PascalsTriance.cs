using System;  
public class PascalsTriangle 
{  
    //Print pascal's triangle with first n lines
    // cerner_2^5_2018
    public static void Main()
    {
        int numberOfRows, row, blk, i, j;
        int c = 1;
        
        Console.Write("Input number of rows: ");
        numberOfRows = Convert.ToInt32(Console.ReadLine());   
        for(i=0;i<numberOfRows;i++)
        {
            for(blk = 1; blk <= numberOfRows-i; blk++)
            {
                Console.Write("  ");
            }
            for(j = 0; j <= i; j++)
            {
                if (j == 0 || i == 0)
				{
                    c = 1;
				}
                else
				{
                   c = c * (i - j + 1)/j;
				}
                Console.Write("{0}   ",c);
            }
            Console.Write("\n");
        }
    } 
}

