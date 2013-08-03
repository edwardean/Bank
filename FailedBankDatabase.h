//
//  FailedBankDatabase.h
//  FailedBanks
//
//  Created by Edward on 13-8-4.
//  Copyright (c) 2013年 Edward. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface FailedBankDatabase : NSObject
{
  sqlite3 *_database;
}

+ (FailedBankDatabase *)databse;
- (NSArray *)failedBankInfos;

@end
