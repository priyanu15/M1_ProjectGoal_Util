#include "taxcalculator.h"
/**
 * @file taxcalculator.c
 * @author Priyanu Tushar
 * @brief 
 * @version 0.1
 * @date 2022-02-25
 * 
 * @copyright Copyright (c) 2022
 * 
 */
//Header file
#include <stdio.h>

//Main function
int main(void)
{
    //Declaring and initializing variabless
    
    double income, tax;
    
    char quit = ' ';

    //Loop for multiple oparations
    
    while (quit != 'q' && quit != 'Q') {

        //Getting input from the user
      
        printf("\n\n\nInput your annual income:\t");
       
        scanf("%lf", &income);

        //Taxable income: 30 percent of the income isn't taxable
      
        income = income * 70 / 100;

        //Contitions for calculating tax
        
        if (income <= 250000) {
            
            tax = 0;                                            //No tax for 250000 or below income
        }

        else if (income <= 650000) {
            
            tax = (income - 250000) * 10 / 100;                 //10% tax for next 400000 income
        }

        else if (income <= 1150000) {
            
            tax = (income - 650000) * 15 / 100 + 40000;         //15% tax for next 500000 income
        }

        else if (income <= 2150000) {
            
            tax = (income - 1150000) * 20 / 100 + 115000;       //20% tax for next 1000000 income
        }

        else {
            
            tax = (income - 2150000) * 25 / 100 + 315000;       //25% tax for next any amount of income
        }

        //Giving the output
        
        printf("\n\n\nYour tax is:\t%0.2lf \n\n\n", tax);

        //Getting out of the loop
        
        getchar();
        
        printf("Input Q or q to exit. Input any other character to continue: ");
        
        scanf("%c", &quit);
    }

    
    return 0;
}