//
//  YDFlutterManager.m
//  NativeWithFlutter2
//
//  Created by panyibin on 2019/11/19.
//  Copyright © 2019 panyibin. All rights reserved.
//

#import "YDFlutterManager.h"

@implementation YDFlutterManager

+ (instancetype)sharedInstance {
    static id _instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    
    return _instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.flutterEngine = [[FlutterEngine alloc] initWithName:@"god" project:nil];
        [self.flutterEngine runWithEntrypoint:nil];
        
        self.flutterEngine2 = [[FlutterEngine alloc] initWithName:@"boss" project:nil];
        [self.flutterEngine2 runWithEntrypoint:nil];
    }
    return self;
}

@end
