//
//  ViewController.m
//  FailedBanks
//
//  Created by Edward on 13-8-4.
//  Copyright (c) 2013年 Edward. All rights reserved.
//

#import "FailedBankDatabase.h"
#import "ViewController.h"
#import "FailedBankListCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {

  }
  return self;
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
	self.title = @"Failed Banks";
  
  [self registerCellClass:[FailedBankListCell class]];
  
  ZHModel *model = [[ZHModel alloc] init];
  model.objects = [[FailedBankDatabase databse] failedBankInfos];
  
  [self modelDidFinishLoading:model];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

@end
