//
//  FailedBankDatabase.m
//  FailedBanks
//
//  Created by Edward on 13-8-4.
//  Copyright (c) 2013年 Edward. All rights reserved.
//

#import "FailedBankDatabase.h"
#import "FailedBankInfo.h"

@implementation FailedBankDatabase

+ (FailedBankDatabase *)databse
{
  static FailedBankDatabase *database = nil;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    database = [[FailedBankDatabase alloc] init];
  });
  return database;
}

- (id)init
{
  if (self = [super init]) {
    NSString *sqlDB = [[NSBundle mainBundle] pathForResource:@"banklist" ofType:@"sqlite3"];
    
    if (sqlite3_open([sqlDB UTF8String], &_database) != SQLITE_OK) {
      NSLog(@"Can't open SqlDB");
    }
  }
  return self;
}

- (NSArray *)failedBankInfos
{
  NSMutableArray *retval = [[NSMutableArray alloc] init];
  NSString *query  =@"SELECT id, name, city, state, acquiring FROM failed_banks ORDER BY close_date DESC";
  sqlite3_stmt *statement;
  if (sqlite3_prepare_v2(_database, [query UTF8String], -1, &statement, nil) == SQLITE_OK) {
    while (sqlite3_step(statement) == SQLITE_ROW) {
      int uniqueId = sqlite3_column_int(statement, 0);
      char *nameChars = (char *)sqlite3_column_text(statement, 1);
      char *cityChars = (char *)sqlite3_column_text(statement, 2);
      char *stateChars = (char *)sqlite3_column_text(statement, 3);
      char *acqChars = (char *)sqlite3_column_text(statement, 4);
      
      NSString *name = [[NSString alloc] initWithUTF8String:nameChars];
      NSString *city = [[NSString alloc] initWithUTF8String:cityChars];
      NSString *state = [[NSString alloc] initWithUTF8String:stateChars];
      NSString *acq = [[NSString alloc] initWithUTF8String:acqChars];
      
      FailedBankInfo *info = [[FailedBankInfo alloc] initWithUniqueId:uniqueId name:name city:city state:state acq:acq];
      [retval addObject:info];
    }
    sqlite3_finalize(statement);
  }
  return retval;
}

- (void)dealloc
{
  sqlite3_close(_database);
}

@end
