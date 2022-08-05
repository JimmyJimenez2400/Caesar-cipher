# The Odin Project - Caesar-cipher

## Challenge: 
implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string.

## Solution:
-Make two methods. One call shift_number, the other called caesar-cipher.
### shift_number
-Function is called with two arguments, a word for individual letters and desired offset which is "shift"
-Initalize a variable called alphabet_range, where its range goes from 'a'..'z' that will count
-Initialize a variable that will hold "a".ord ascii
-Implement equation that will shift word base on shift. Making sure it loops from 'a'..'z', turning it back into a char. Equation is ((word.ord - first + shift) % alphabet_range + first ).chr 
### caesar_cipher
-Function is called with two parameters, first is string, second is shift
-grab string, downcase, split into individual letters, map to transform array, call shift_number, then join individual letters back into string.
