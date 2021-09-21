import UIKit;
import SwiftUI;

/*:
 # Nathan Nguyen
 # CPSC 357 - 01
 # Problem 1: Is my number prime?
 ## Description:
 A prime number (or a prime) is a natural number greater than 1 that is not a product of two smaller natural numbers. A natural number greater than 1 that is not prime is called a composite number. For example, 5 is prime because the only ways of writing it as a product, 1 × 5 or 5 × 1, involve 5 itself. However, 4 is composite because it is a product (2 × 2) in which both numbers are smaller than 4.Implement a function that received as a input a natural number and return as a output true if the number is prime or false otherwise.
 
 ## Pseudocode:
 * Prime numbers are greater than 1 and cannot be product of two SMALLER numbers
 * Idea: Test all values greater than 1 up to but not including the inputted number and test if the remainder is zero.
 * If the remainder is zero, then the input number is divisble by a number
 * If remainder is not zero, then input number is not divisble by the number at that iteration
 * Ex: 4 % 2 == 0  -> return "4 is not prime"
 *    5 % 2 == 1 -> 5 % 3 == 2 -> 5 % 4 == 1 -> return "5 is prime"
 
 ## Explain what type of function did you select and why:
 * I created a function that accepted integers as a parameter and will return a boolean (true or false) on whether that integer is or is not prime. This seemed most efficient to determine whether or not a number is prime.
 
 ## Explain the parameters, variables:
 * Parameter a: Int -> An integer representing the number being tested
 * Return Bool -> A boolean representing whether or not the inputted integer is prime
 
 ## Define variable vs constants:
 * No usage of variables or constants in this program
 */

func isPrime(a: Int) -> Bool {
    for index in 2...(a-1) {
        if(a % index == 0){
            return false; // returns false if algorithm finds an integer that is a divisor of the inputted number
        }
    }
    return true; // Otherwise returns true if no divisors
}

print(isPrime(a: 4)); // Checks if 4 is prime - returns false
