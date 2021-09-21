import UIKit;
import SwiftUI;


/*:
 # Nathan Nguyen
 # CPSC 357 - 01
 # Problem 2: How much time should I wait?
 ## Description:
 Write a function that compute the time difference in minutes and hours from two given hours.  The function should have as input 4 numbers. The first two will be the first hour and first minute, and the second two will be the second hour and second minute. For example: First hour is 11:30 and second hour is 13:15, then first number is 11; second number 30; third number 13 and fourth number 15. The function should return the time difference between the two hours.
 
 ## Pseudocode:
 * Convert the two times into decimal notation
 * Subtract the two times to get the time difference
 * Change from decimal notation back into Hour:Minute Notation
 
 ## Note:
 * This function only works for times in a 24h clock (not 12h clock)
 
 ## Explain what type of function did you select and why:
 * I created a function that accepted the hour and minutes of the first time and the hour and minute of the second time. The function returns a tuple representing the hour and minute of the time difference. This seemed most functional for this program.
 
 ## Explain the parameters, variables:
 * Parameter hour1 : Double -> A double representing the hour of the first time
 * Paramter minute1 : Double -> A double representing the minutes of the first time
 * Parameter hour2 : Double -> A double representing the hour of the second time
 * Paramter minute2 : Double -> A double representing the minutes of the second time
 * Return (newHour : Int, newMinute : Int) ->  A tuple representing the hour and minute of the time difference
 
 ## Define variable vs constants:
 * Constant convertedMinute1 -> A conversion of minutes from the first time to decimal
 * Constant convertedMinute2 -> A conversion of minutes from the second time to decimal
 * Constant time1 -> The first time in terms of how many total hours
 * Constant time2 -> The second time in terms of how many total hours
 * Variable deltaTime -> The time difference between the two times
 * Variable newHour -> Variable used to count and keep track of how many full hours are in the time difference
 * Constant newMinute -> Variable used to keep track of how many total minutes are left over in the time difference

 */


func timeDiff(hour1: Double, minute1: Double, hour2: Double, minute2: Double) -> (newHour: Int, newMinute: Int){
    let convertedMinute1 = minute1 / 60;
    let time1 = hour1 + convertedMinute1;
    let convertedMinute2 = minute2 / 60;
    let time2 = hour2 + convertedMinute2;
    
    var deltaTime = time2 - time1; // Taking difference between the two times in terms of hours
    var newHour = 0;
    
    while (deltaTime >= 1){
        deltaTime -= 1;
        newHour += 1; // increments new hour for every full hour in deltaTime
    }
    
    let newMinute = Int(deltaTime * 60); // converts the leftover decimal of deltaTime into minutes
    
    return (newHour, newMinute); // returns the time difference as a tuple
}

let timeTuple = timeDiff(hour1:9, minute1: 15, hour2: 13, minute2: 30); // Finding time difference between 1:30pm and 9:15 am - should be 4:0 for four hours and 15 minutes
print("You should wait \(timeTuple.newHour):\(timeTuple.newMinute)");
