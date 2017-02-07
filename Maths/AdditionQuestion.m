//
//  AdditionQuestion.m
//  Maths
//
//  Created by Callum Davies on 2017-02-07.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        int randNumber1 = (arc4random_uniform(90) + 10);
        int randNumber2 = (arc4random_uniform(90) + 10);
        
        NSString *randomQuestion = [NSString stringWithFormat:@"%i + %i?", randNumber1, randNumber2];
        _question = randomQuestion;
        
        NSUInteger randomAnswer = randNumber1 + randNumber2;
        _answer = randomAnswer;
        
    }
    return self;
}

@end
