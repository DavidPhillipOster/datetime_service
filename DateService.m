//
//  DateService.m
//  DateService
//
//  Created by David Phillip Oster on 7/10/2021.
//  Copyright 2021 David Phillip Oster. Apache 2 License
//

#import "DateService.h"
#import <AppKit/AppKit.h>

@implementation DateService

- (void)doDateService:(NSPasteboard *)pboard userData:(NSString *)userData error:(NSString **)error {
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  [formatter setFormatterBehavior:NSDateFormatterBehavior10_4];
  if (0 == [userData length]) {
    userData = @"M/dd/yyyy";
  }
  [formatter setDateFormat:userData];
  NSString *outString = [formatter stringFromDate:[NSDate date]];
  [pboard clearContents];
  [pboard writeObjects:[NSArray arrayWithObject:outString]];
}

@end
