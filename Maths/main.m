//
//  main.m
//  Maths
//
//  Created by Callum Davies on 2017-02-07.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameon = YES;
        
        ScoreKeeper *scoreBoard = [[ScoreKeeper alloc] init];
        
        while (gameon == YES) {
        
            AdditionQuestion *question1 = [[AdditionQuestion alloc] init];
            
            NSLog(@"%@", question1.question);
            
            //Get user input
            InputHandler * input1 = [[InputHandler alloc] init];
            NSString *trimmedString = [input1 getString];
            
            //convert modded user input to intValue
            NSInteger userAnswer = [trimmedString intValue];
            
            if ([trimmedString isEqualToString:@"quit"]) {
                break;
            }
            
            //compare
            if (userAnswer == question1.answer) {
                NSLog(@"Right!");
                scoreBoard.rightAnswers++;
            } else {
                NSLog(@"Wrong!");
                scoreBoard.wrongAnswers++;
            }
            
            [scoreBoard currentScore];
        }
    }
    return 0;
}
