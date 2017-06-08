//
//  MJConditionGroup.m
//  MessageJudge
//
//  Created by GeXiao on 08/06/2017.
//  Copyright © 2017 GeXiao. All rights reserved.
//

#import "MJConditionGroup.h"

@implementation MJConditionGroup

- (BOOL)isMatchedForContent:(NSString *)content {
    if (self.conditions) {
        for (MJCondition *condition in self.conditions) {
            if (![condition isMatchedForContent:content]) {
                return NO;
            }
        }
    }
    return YES;
}

+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"conditions" : [MJCondition class]};
}

@end
