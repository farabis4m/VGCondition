//
//  VGStringRangeCondition.h
//  VGCondition
//
//  Created by vlad gorbenko on 7/8/15.
//  Copyright (c) 2015 vladgorbenko. All rights reserved.
//

#import "VGStringCondition.h"

#import "VGRangeConditionProtocol.h"

@interface VGStringRangeCondition : VGStringCondition <VGRangeConditionProtocol>

@property (nonatomic, strong) NSNumber *min;
@property (nonatomic, strong) NSNumber *max;

@end
