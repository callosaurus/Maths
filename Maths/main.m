//
//  main.m
//  Maths
//
//  Created by Callum Davies on 2017-02-07.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (YES) {
            
            char userInput [255];
            
            AdditionQuestion *question1 = [[AdditionQuestion alloc] init];
            
            NSLog(@"%@", question1.question);
            
            //Grab user input and process to NSInteger
            fgets(userInput, 255, stdin);
            NSString *convertedString = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
            NSCharacterSet *noBadChars = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *trimmedString = [convertedString stringByTrimmingCharactersInSet:noBadChars];
            NSInteger userAnswer = [trimmedString intValue];
           
            
            if (userAnswer == question1.answer) {
                NSLog(@"Right!");
            } else {
                NSLog(@"Wrong!");
            }
            
        }
    }
    return 0;
}
