//
//  YLPHours.m
//  YelpAPI
//
//  Created by Connor Crawford on 4/13/17.
//
//

#import "YLPHours.h"

@implementation YLPHours : NSObject

- (instancetype)initWithDictionary:(NSDictionary *)hoursDict {
    if (self = [super init]) {
        _overnight = [hoursDict[@"is_overnight"] boolValue];
        
        _day = [hoursDict[@"day"] unsignedIntValue];
        
        NSString *startTimeStr = hoursDict[@"start"];
        NSString *endTimeStr = hoursDict[@"end"];
        
        NSInteger sHour = [[startTimeStr substringToIndex:2] integerValue];
        NSUInteger sMin = [[startTimeStr substringFromIndex:2] integerValue];
        _startTimeComponents = [[NSDateComponents alloc] init];
        [_startTimeComponents setHour:sHour];
        [_startTimeComponents setHour:sMin];
        
        NSInteger eHour = [[endTimeStr substringToIndex:2] integerValue];
        NSUInteger eMin = [[endTimeStr substringFromIndex:2] integerValue];
        _endTimeComponents = [[NSDateComponents alloc] init];
        [_endTimeComponents setHour:eHour];
        [_endTimeComponents setHour:eMin];
        
    }
    return self;
}


@end
