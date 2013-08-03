//
//  FailedBankInfo.h
//  FailedBanks
//
//  Created by Edward on 13-8-4.
//  Copyright (c) 2013年 Edward. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FailedBankInfo : NSObject

@property (nonatomic, assign) int uniqueId;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *city;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *acq;

- (id)initWithUniqueId:(int)uniqueId
                  name:(NSString *)name
                  city:(NSString *)city
                 state:(NSString *)state
                   acq:(NSString *)acq;

@end
