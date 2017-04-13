//
//  YLPHours.h
//  YelpAPI
//
//  Created by Connor Crawford on 4/13/17.
//
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YLPHours : NSObject

@property (nonatomic, getter=isOvernight, readonly) BOOL overnight;

@property (nonatomic, readonly) uint day;

@property (nonatomic, readonly, copy) NSDateComponents *startTimeComponents;
@property (nonatomic, readonly, copy) NSDateComponents *endTimeComponents;

@end

NS_ASSUME_NONNULL_END
