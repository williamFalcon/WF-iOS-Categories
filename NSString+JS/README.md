NSString+JS
==============
Adds javascript-like methods (with obj-c method syntax) to NSString:
 
## Methods
- **`-(int)indexOfString:(NSString *)string`**   
Returns the position of the first found occurrence of a specified value in a string.
Returns -1 if the string is not found


- **`-(int)lastIndexOfString:(NSString *)string`**   
Returns the position of the last found occurrence of a specified value in a string
Returns -1 if the string is not found


- **`-(NSArray *)splitOnChar:(char)ch`**   
Splits a string into an array of substrings


- **`-(NSString *)substringFrom:(NSInteger)from to:(NSInteger)to`**   
Extracts part of a string, beginning at the character at the specified position, and returns the specified number of characters


- **`-(NSString *)substringToString:(NSString*)string`**   
Extracts part of a string, from beginning to the beginning of the input string.
Returns null if not found.


- **`-(NSString *)substringFromString:(NSString*)string`**   
Extracts part of a string, from end to the beginning of the input string.
Returns null if not found.


- **`-(NSString *)concat:(NSString *)string`**   
Joins two or more strings, and returns a copy of the joined strings


- **`-(NSString *)trim`**   
Removes whitespace from both ends of a string


- **`-(BOOL)isBlank`**   
Returns yes if string consists of only white spaces


- **`-(BOOL)contains:(NSString *)string`**   
Returns yes if string contains input string

