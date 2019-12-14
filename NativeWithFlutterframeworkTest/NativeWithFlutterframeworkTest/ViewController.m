//
//  ViewController.m
//  NativeWithFlutter2
//
//  Created by panyibin on 2019/11/19.
//  Copyright © 2019 panyibin. All rights reserved.
//

#import "ViewController.h"
#import "YDFlutterManager.h"
#import "AppDelegate.h"
@import Flutter;

@interface ViewController ()<FlutterStreamHandler>

@property (nonatomic, strong) FlutterEventSink flutterEventSink;
@property (nonatomic, strong) FlutterMethodChannel *methodChannel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    self.view.backgroundColor = [UIColor blueColor];
//    [YDFlutterManager sharedInstance];
}

- (IBAction)clickButton:(id)sender { 
    NSLog(@"click button");
//    FlutterEngine *flutterEngine = ((AppDelegate*)[UIApplication sharedApplication].delegate).flutterEngine;
    FlutterEngine *flutterEngine = YDFlutterSharedManager.flutterEngine;
    FlutterViewController *flutterVC = [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
//    FlutterViewController *flutterVC = [[FlutterViewController alloc] init];
    [flutterVC setInitialRoute:@"/Second"];
//    [flutterVC pushRoute:@"/Second"];

    //flutter 调 native, methodChannel
    FlutterMethodChannel *methodChannel = [FlutterMethodChannel methodChannelWithName:@"com.yidian.local/methodChannel" binaryMessenger:(NSObject<FlutterBinaryMessenger> *)flutterVC];
    [methodChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        if ([call.method isEqualToString:@"getAppName"]) {
            NSString *appName = @"yidianzixun";
            result(appName);
        }
    }];
    
    self.methodChannel = methodChannel;
    
//    //native 调 flutter
//    FlutterStandardMethodCodec *methodCodec = [FlutterStandardMethodCodec sharedInstance];
//    FlutterEventChannel *eventChannel = [[FlutterEventChannel alloc] initWithName:@"com.yidian.local/eventChannel" binaryMessenger:(NSObject<FlutterBinaryMessenger>*)flutterVC codec:methodCodec];
//
//    [eventChannel setStreamHandler:self];
    
    //native 调 flutter, messageChannel
//    FlutterBasicMessageChannel *messageChannel = [[FlutterBasicMessageChannel alloc] initWithName:@"com.yidian.local/messageChannel" binaryMessenger:(NSObject<FlutterBinaryMessenger> *)flutterVC codec:[FlutterJSONMessageCodec sharedInstance]];
    
//    [self presentViewController:flutterVC animated:YES completion:nil];
    
    flutterVC.view.frame = CGRectMake(0, 100, 300, 300);
    
    [self.view addSubview:flutterVC.view];
    [self addChildViewController:flutterVC];
    [flutterVC didMoveToParentViewController:self];
}

- (FlutterError* _Nullable)onListenWithArguments:(id _Nullable)arguments
                                       eventSink:(FlutterEventSink)events {
    self.flutterEventSink = [events copy];
    return nil;
}

- (FlutterError* _Nullable)onCancelWithArguments:(id _Nullable)arguments {
    return nil;
}

- (IBAction)clickButton2:(id)sender {
    NSLog(@"click button2");
    
    NSDictionary *info = @{
        @"name":@"yidain",
        @"age":@"100"
    };
    [self.methodChannel invokeMethod:@"nativeCallFutter_method1" arguments:info result:^(id  _Nullable result) {
        NSLog(@"nativeCallFlutter:%@", result);
    }];
//    self.flutterEventSink(@"test");
}

@end
