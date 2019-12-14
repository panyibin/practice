//
//  YDFlutterManager.h
//  NativeWithFlutter2
//
//  Created by panyibin on 2019/11/19.
//  Copyright © 2019 panyibin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>

#define YDFlutterSharedManager [YDFlutterManager sharedInstance]

NS_ASSUME_NONNULL_BEGIN

@interface YDFlutterManager : NSObject

@property (nonatomic, strong) FlutterEngine *flutterEngine;
@property (nonatomic, strong) FlutterEngine *flutterEngine2;

+ (instancetype)sharedInstance;

@end

NS_ASSUME_NONNULL_END
