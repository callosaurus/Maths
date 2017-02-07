//
//  main.m
//  Maths
//
//  Created by Callum Davies on 2017-02-07.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (YES) {
            
            char userInput [255];
            
            NSLog(@"I need your input");
            fgets(userInput, 255, stdin);
            
            NSString *convertedString = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
            
            NSCharacterSet *noBadChars = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            
            NSString *trimmedString = [convertedString stringByTrimmingCharactersInSet:noBadChars];
            
            NSLog(@"%@", trimmedString);
            
            
            
            
            
        }
    }
    return 0;
}
