//
//  NSString+JS.h
//
//
//  Created by William Falcon on 1/5/14.
//  Copyright (c) 2014 William Falcon. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (JS)

/*
 Returns the position of the first found occurrence of a specified value in a string.
 Returns -1 if the string is not found
 */
-(int)indexOfString:(NSString *)string;



/*
 Returns the position of the last found occurrence of a specified value in a string
 Returns -1 if the string is not found
 
 */
-(int)lastIndexOfString:(NSString *)string;



/*
 Splits a string into an array of substrings
 */
-(NSArray *)splitOnChar:(char)ch;



/*
 Extracts part of a string, beginning at the character at the specified position, and returns the specified number of characters
 */
-(NSString *)substringFrom:(NSInteger)from to:(NSInteger)to;



/*
 Extracts part of a string, from beginning to the beginning of the input string.
 Returns null if not found.
 */
-(NSString *)substringToString:(NSString*)ch;



/*
 Extracts part of a string, from end to the eginning of the input string.
 Returns null if not found.
 */
-(NSString *)substringFromString:(NSString*)ch;



/*
 Joins two or more strings, and returns a copy of the joined strings
 */
-(NSString *)concat:(NSString *)string;



/*
 Removes whitespace from both ends of a string
 */
-(NSString *)trim;



/*
 Returns yes if string consists of only white spaces
 */
-(BOOL)isBlank;



/*
 Returns yes if string contains input string
 */
-(BOOL)contains:(NSString *)string;




@end
