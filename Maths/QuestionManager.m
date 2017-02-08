//
//  QuestionManager.m
//  Maths
//
//  Created by Callum Davies on 2017-02-08.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questions = [NSMutableArray array];
    }
    return self;
}


-(NSString *)timeOutput {
    NSTimeInterval totalTime = 0;
    
    for (AdditionQuestion *question in self.questions) {
        totalTime += question.answerTime;
        
    }
    
    NSTimeInterval averageTime = totalTime/[self.questions count];

    NSString *timePrintout = [NSString stringWithFormat:@"total time: %fs, average time: %0.fs", totalTime, averageTime];
    return timePrintout;
}

@end
