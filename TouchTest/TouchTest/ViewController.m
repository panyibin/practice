//
//  ViewController.m
//  TouchTest
//
//  Created by PanYibin on 2019/12/11.
//  Copyright © 2019 PanYibin. All rights reserved.
//

#import "ViewController.h"
#import "MyButton.h"
#import "MyView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MyButton *button = [[MyButton alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    [button addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    MyView *view = [[MyView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    view.backgroundColor = [UIColor redColor];
    [button addSubview:view];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped)];
    [button addGestureRecognizer:tapGesture];
    
}

- (void)clickButton {
    NSLog(@"button clicked");
}

- (void)viewTapped {
    NSLog(@"viewTapped");
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"vc touchesBegan");
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"vc touchesEnded");
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"vc touchesMoved");
    [super touchesMoved:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"vc touchesCancelled");
    [super touchesCancelled:touches withEvent:event];
}

@end
