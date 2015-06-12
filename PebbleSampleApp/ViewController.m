//
//  ViewController.m
//  PebbleSampleApp
//
//  Created by Sarvjeet on 12/06/15.
//  Copyright (c) 2015 emx. All rights reserved.
//


#import "ViewController.h"


@interface ViewController ()
{
   IBOutlet UILabel *labelForResponse, *DataLoggingL;
}

@end


@implementation ViewController


#pragma mark - View Lifecycle


- (void)viewDidLoad
{
    [super viewDidLoad];

    [[[PBPebbleCentral defaultCentral] dataLoggingService] setDelegate:self];

}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:YES];
}


- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:YES];
}


- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



#pragma mark - DataLoggingService



- (BOOL)dataLoggingService:(PBDataLoggingService *)service hasUInt32s:(const UInt32 [])data numberOfItems:(UInt16)numberOfItems forDataLoggingSession:(PBDataLoggingSessionMetadata *)sessionMetadata
{
    labelForResponse.text = @"recieved message";
    
    NSLog(@"recieved message");
    
    return YES;
}


- (void)dataLoggingService:(PBDataLoggingService *)service sessionDidFinish:(PBDataLoggingSessionMetadata *)sessionMetadata
{
    DataLoggingL.text = @"sessionFinish";

    NSLog(@"sessionFinish");
}



@end
