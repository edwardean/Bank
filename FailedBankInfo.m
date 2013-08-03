//
//  FailedBankInfo.m
//  FailedBanks
//
//  Created by Edward on 13-8-4.
//  Copyright (c) 2013年 Edward. All rights reserved.
//

#import "FailedBankInfo.h"

@implementation FailedBankInfo

- (id)initWithUniqueId:(int)uniqueId
                  name:(NSString *)name
                  city:(NSString *)city
                 state:(NSString *)state
                   acq:(NSString *)acq
{
  if (self = [super init]) {
    self.uniqueId = uniqueId;
    self.name = name;
    self.city = city;
    self.state = state;
    self.acq = acq;
  }
  return self;
}

@end
