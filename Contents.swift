/* Note: this program is not practical for a playground. To avoid getting TOO complicated,
 I chose not to use a loop of any sort for the decryption part, so unfortunately there
 is redundancy. I chose to include if statements for negative numbers only where I knew
 There would be negative numbers to save space and time.  I hope you find many operators
 in this example */

import UIKit

let alphabetArray:[String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I",
                    "J", "K", "L", "M", "N", "O", "P", "Q", "R",
                    "S", "T", "U", "V", "W", "X", "Y", "Z"]

//Concatenate array elements to form encrypted message.  With the '+' operator to concatenate 

var encryptedMessageWord1 = [alphabetArray[9] + alphabetArray[25] + alphabetArray[5]]

var encryptedMessageWord2 = [alphabetArray[17] + alphabetArray[25] + alphabetArray[4]]
    
var encryptedMessageWord3 = [alphabetArray[19] + alphabetArray[4]]

var decryptedMessageWord1:String

var decryptedMessageWord2:String

var decryptedMessageword3:String

//Assign pesky variables needed to do math. With the ASSIGNMENT OPERATOR
//'find' finds the index of an array element

let indexOfA = find (alphabetArray, "A")!
let indexOfB = find (alphabetArray, "B")!
let indexOfC = find (alphabetArray, "C")!
let indexOfD = find (alphabetArray, "D")!
let indexOfE = find (alphabetArray, "E")!
let indexOfF = find (alphabetArray, "F")!
let indexOfG = find (alphabetArray, "G")!
let indexOfH = find (alphabetArray, "H")!
let indexOfI = find (alphabetArray, "I")!
let indexOfJ = find (alphabetArray, "J")!
let indexOfK = find (alphabetArray, "K")!
let indexOfL = find (alphabetArray, "L")!
let indexOfM = find (alphabetArray, "M")!
let indexOfN = find (alphabetArray, "N")!
let indexOfO = find (alphabetArray, "O")!
let indexOfP = find (alphabetArray, "P")!
let indexOfQ = find (alphabetArray, "Q")!
let indexOfR = find (alphabetArray, "R")!
let indexOfS = find (alphabetArray, "S")!
let indexOfT = find (alphabetArray, "T")!
let indexOfU = find (alphabetArray, "U")!
let indexOfV = find (alphabetArray, "V")!
let indexOfW = find (alphabetArray, "W")!
let indexOfX = find (alphabetArray, "X")!
let indexOfY = find (alphabetArray, "Y")!
let indexOfZ = find (alphabetArray, "Z")!



//Now let's decrypt the message! 

let publicKey = 11      //We need to know what the key is in order to decrypt.  In an interactive program, 
                        //the user would have to know the key and the value would be stored here.



var decryptedIndex:Int  //This is where we will store the index of the decrypted index so we can use the
                        //index to find the right letter

var decryptedLetter1:String //This is where I will keep the decrypted letter (and the others are for the rest of the letters)
var decryptedLetter2:String
var decryptedLetter3:String
var decryptedLetter4:String
var decryptedLetter5:String
var decryptedLetter6:String
var decryptedLetter7:String
var decryptedLetter8:String

/*To solve decryption, we will use the equation x = (y - k) mod 26
x is the decrypted number, y is the number we currently have,
k is the key, and mod 26 is because there are 26 letters in the alphabet.
Ironically, this program does not use the % operator, but uses a 
method to go around it because the computer does not know how to deal
with the negative numbers. */

//Lets decrypt the first letter
//The number corresponding to the letter J is in our indexOfJ constant


decryptedIndex = (indexOfJ - publicKey)

    if (decryptedIndex < 0) //note the less than operator
    {
        decryptedIndex = -decryptedIndex
        decryptedIndex = decryptedIndex - 1

        decryptedIndex = 25 - decryptedIndex
    }
decryptedLetter1 = alphabetArray[decryptedIndex]


//Whew! Unfortuantely we have to repeat this process 7 more times :/
//If I really wanted this to be legit, I would have structured things 
//just a little differently and had a loop do the work, but we really 
//haven't learned these things yet anyway.  On to the next letter! Z.
//(Which by the way, we see twice so we will assign this value to both
//letter variables with a z

decryptedIndex = (indexOfZ - publicKey)
decryptedLetter2 = alphabetArray[decryptedIndex]
decryptedLetter5 = alphabetArray[decryptedIndex]

//Third letter is an 'F'

decryptedIndex = (indexOfF - publicKey)

if (decryptedIndex < 0) //note the less than operator
{
    decryptedIndex = -decryptedIndex
    decryptedIndex = decryptedIndex - 1
    
    decryptedIndex = 25 - decryptedIndex
}
decryptedLetter3 = alphabetArray[decryptedIndex]

//Now we can store the whole word in a variable.
//Let's call that variable decryptedWord1
decryptedMessageWord1 = decryptedLetter1 + decryptedLetter2 + decryptedLetter3

//Ok so we have one word decoded.  We have to do another word now. 
//Next letter is R

decryptedIndex = (indexOfR - publicKey)
decryptedLetter4 = alphabetArray[decryptedIndex]

//Time for E
decryptedIndex = (indexOfE - publicKey)
if (decryptedIndex < 0) //note the less than operator
{
    decryptedIndex = -decryptedIndex
    decryptedIndex = decryptedIndex - 1
    
    decryptedIndex = 25 - decryptedIndex
}
decryptedLetter6 = alphabetArray[decryptedIndex]
//and since we know we have an extra E in the encrypted message, 
//we should assign its decrypted value now.
decryptedLetter8 = alphabetArray[decryptedIndex]

//ONE MORE LETTER! T
decryptedIndex = (indexOfT - publicKey)
decryptedLetter7 = alphabetArray[decryptedIndex]

//OK we need to put the remaining to words into their variables
decryptedMessageWord2 = decryptedLetter4 + decryptedLetter5 + decryptedLetter6

decryptedMessageword3 = decryptedLetter7 + decryptedLetter8


//And print the result
println(decryptedMessageWord1 + " " + decryptedMessageWord2 + " " + decryptedMessageword3)












