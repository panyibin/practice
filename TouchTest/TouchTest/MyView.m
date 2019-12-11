//
//  MyView.m
//  TouchTest
//
//  Created by PanYibin on 2019/12/11.
//  Copyright © 2019 PanYibin. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"MyView touchesBegan");
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"MyView touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"MyView touchesMoved");
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"MyView touchesCancelled");
    [super touchesCancelled:touches withEvent:event];    
}
@end
