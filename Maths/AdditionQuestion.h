//
//  AdditionQuestion.h
//  Maths
//
//  Created by Callum Davies on 2017-02-07.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

@property NSString* question;
@property (nonatomic) NSInteger answer;
@property NSDate *startTime;
@property NSDate *endTime;

-(instancetype)init;
-(NSInteger)answer;
-(NSTimeInterval)answerTime;

@end
