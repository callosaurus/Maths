//
//  AdditionQuestion.m
//  Maths
//
//  Created by Callum Davies on 2017-02-07.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

@synthesize answer = _answer;

//Custom init with random numbers, question, and the correct answer
- (instancetype)init
{
    self = [super init];
    if (self) {
        _startTime = [NSDate date];
        int randNumber1 = (arc4random_uniform(90) + 10);
        int randNumber2 = (arc4random_uniform(90) + 10);
        
        NSString *randomQuestion = [NSString stringWithFormat:@"%i + %i? Enter 'quit' to quit", randNumber1, randNumber2];
        _question = randomQuestion;
        
        NSUInteger randomAnswer = randNumber1 + randNumber2;
        _answer = randomAnswer;
        
    }
    return self;
}

//Getter method
- (NSInteger)answer {
    _endTime = [NSDate date];
    //NSLog(@"The end time is %@", _endTime);
    return _answer;
}

-(NSTimeInterval)answerTime {
    NSTimeInterval timeToAnswer = [_endTime timeIntervalSinceDate:_startTime];
    return timeToAnswer;
}

@end
