//
//  FailedBankListCell.m
//  FailedBanks
//
//  Created by Edward on 13-8-4.
//  Copyright (c) 2013年 Edward. All rights reserved.
//

#import "FailedBankListCell.h"
#import "FailedBankInfo.h"

@implementation FailedBankListCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    
    }
    return self;
}

- (void)bindWithObject:(id)object
{
  NSLog(@"Object:%@",object);
  
  FailedBankInfo *infp = (FailedBankInfo *)object;
  self.textLabel.text = infp.name;
}

@end
