//
//  ScoreKeeper.m
//  Maths
//
//  Created by Callum Davies on 2017-02-07.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(void)currentScore {
    
    float percentage = ((float)_rightAnswers/((float)_rightAnswers + (float)_wrongAnswers));
    percentage = percentage * 100;
    
    NSLog(@"score: %d right, %d wrong ---- %.2f%%", self.rightAnswers, self.wrongAnswers, percentage);
    
}

@end
