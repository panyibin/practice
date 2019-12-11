//
//  MyButton.m
//  TouchTest
//
//  Created by PanYibin on 2019/12/11.
//  Copyright © 2019 PanYibin. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"myButton touchesBegan");
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"myButton touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"myButton touchesMoved");
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"myButton touchesCancelled");
    [super touchesCancelled:touches withEvent:event];    
}

@end
