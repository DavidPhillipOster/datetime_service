//
//  main.m
//  DateService
//
//  Created by David Phillip Oster on 7/10/2021
//  Copyright 2021 David Phillip Oster. Apache 2 License
//

#import <AppKit/AppKit.h>
#import "DateService.h"

int main(int argc, char *argv[]) {
  @autoreleasepool {
    DateService *service = [[DateService alloc] init];
    NSRegisterServicesProvider(service, @"DateService");
    [[NSRunLoop currentRunLoop] run];
  }
  return 0;
}
