//
//  NSString+JS.m
//
//
//  Created by William Falcon on 1/5/14.
//  Copyright (c) 2014 William Falcon. All rights reserved.
//

#import "NSString+JS.h"

@implementation NSString (JS)


-(int)indexOfString:(NSString *)string{
    
    NSRange range;
    
    if (string){
        range = [self rangeOfString:string options:NSCaseInsensitiveSearch];
    }
        
    //return -1 if string not found
    if (range.length==0) {
        return -1;
    }
    return range.location;
}


-(int)lastIndexOfString:(NSString *)string{
    
    NSRange range;
    
    if (string){
        range = [self rangeOfString:string options:NSCaseInsensitiveSearch];
    }
    
    //return -1 if string not found
    if (range.length==0) {
        return -1;
    }
    
    return range.location;
}

-(NSArray *)splitOnString:(NSString *)string {
    if (string) {
        NSArray *results = [self componentsSeparatedByString:string];
        
        return results;

    }else{
        return NULL;
    }
}

-(NSArray *)splitOnChar:(char)ch {
    NSMutableArray *results = [NSMutableArray new];
    
    int start = 0;
    
    for(int i=0; i<[self length]; i++) {
        
        BOOL isAtSplitChar = [self characterAtIndex:i] == ch;
        BOOL isAtEnd = i == [self length] - 1;
        
        if(isAtSplitChar || isAtEnd) {
            
            //take the substring, add it to the array
            NSRange range;
            range.location = start;
            range.length = i - start + 1;
            
            if(isAtSplitChar)
                range.length -= 1;
            
            [results addObject:[self substringWithRange:range]];
            start = i + 1;
        }
        
        //handle the case where the last character was the split char.  we need an empty trailing element in the array.
        if(isAtEnd && isAtSplitChar)
            [results addObject:@""];
    }
    
    return results;
}


-(NSString *)substringFrom:(NSInteger)from to:(NSInteger)to {
    NSString *rightPart = [self substringFromIndex:from];
    return [rightPart substringToIndex:to-from];
}


-(NSString *)substringToString:(NSString*)ch{
    
    if (ch) {
        //find index of the input char
        int index = [self indexOfString:ch];
        
        //Handle case where string was not found
        if (index==-1) {
            return NULL;
        }
        
        NSString *result = [self substringFrom:0 to:index];
        
        return result;
    }else{
        return self;
    }
    
}

-(NSString *)substringFromString:(NSString*)ch{
    
    if (ch){
        //find index of the input char
        int index = [self indexOfString:ch];
        
        //Handle case where string was not found
        if (index==-1) {
            return NULL;
        }
        
        NSString *result = [self substringFrom:index+1 to:self.length];
        return result;
    }else{
        return NULL;
    }
}


-(NSString *)concat:(NSString *)string{
    if (string) {
        NSString *result = [NSString stringWithFormat:@"%@%@",self, string];
        return result;
    }else{
        return self;
    }
}


-(NSString *)trim {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}


-(BOOL)isBlank {
    if([[self trim] isEqualToString:@""])
        return YES;
    return NO;
}


-(BOOL)contains:(NSString *)string {
    if (string) {
        NSRange range = [self rangeOfString:string];
        return (range.location != NSNotFound);
    }else{
        return NO;
    }

}

-(NSString *)replaceAll:(NSString *)regex replacement:(NSString *)replacement{
    if (replacement) {
        return [self stringByReplacingOccurrencesOfString:regex
                                               withString: replacement
                                                  options: NSRegularExpressionSearch
                                                    range: NSMakeRange(0, self.length)];
    }else{
        return self;
    }
    
}

@end
