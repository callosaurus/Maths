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
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Declare variables
        BOOL gameon = YES;
        ScoreKeeper *scoreBoard = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        
        //Start while loop
        while (gameon == YES) {
        
            AdditionQuestion *question1 = [[AdditionQuestion alloc] init];
            [questionManager.questions addObject:question1];
            
            
            NSLog(@"%@", question1.question);
            
            //Get user input
            InputHandler * input1 = [[InputHandler alloc] init];
            NSString *trimmedString = [input1 getString];
            
            
            //Get answer time
            [question1 answer];
            float answerTime = [question1 answerTime];
            int roundedAnswerTime = roundf(answerTime);
            NSLog(@"%d", roundedAnswerTime);

            
            //convert modded user input to intValue
            NSInteger userAnswer = [trimmedString intValue];
            
            
            //Quit option
            if ([trimmedString isEqualToString:@"quit"]) {
                break;
            }
            
            
            //Compare
            if (userAnswer == question1.answer) {
                NSLog(@"Right!");
                scoreBoard.rightAnswers++;
            } else {
                NSLog(@"Wrong!");
                scoreBoard.wrongAnswers++;
            }
            
            //Check score
            [scoreBoard currentScore];
            
            //Print time
            NSLog(@"%@",[questionManager timeOutput]);
        }
    }
    return 0;
}
