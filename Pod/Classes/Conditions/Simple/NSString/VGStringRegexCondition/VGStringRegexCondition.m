//
//  VGStringRegexCondition.m
//  Pods
//
//  Created by vlad gorbenko on 10/26/15.
//
//

#import "VGStringRegexCondition.h"

@implementation VGStringRegexCondition

#pragma mark - Lifecycle

+ (instancetype)conditionWithRegex:(NSString *)regex description:(NSString *)description {
    return [[self alloc] initWithRegex:regex description:description];
}

- (instancetype)initWithRegex:(NSString *)regex description:(NSString *)description {
    self = [super initWithDescription:description];
    if(self) {
        self.regex = regex;
    }
    return self;
}

#pragma mark - Validation

- (BOOL)checkValue:(NSString *)value {
    if([super checkValue:value]) {
        NSError *error = nil;
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:self.regex options:0 error:&error];
        NSUInteger numberOfMatches = [regex numberOfMatchesInString:value options:0 range:NSMakeRange(0, value.length)];
        return numberOfMatches == value.length;
    }
    return NO;
}

@end
