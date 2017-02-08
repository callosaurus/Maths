//
//  ScoreKeeper.h
//  Maths
//
//  Created by Callum Davies on 2017-02-07.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int rightAnswers;
@property int wrongAnswers;

-(void)currentScore;

@end
