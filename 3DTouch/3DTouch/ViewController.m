//
//  ViewController.m
//  3DTouch
//
//  Created by alpha on 16/3/24.
//  Copyright © 2016年 alpha. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()<UIViewControllerPreviewingDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    if (self.fouce) {
//        
//    }
    
//    [self registerForPreviewingWithDelegate:self sourceView:self.view];
    // Do any additional setup after loading the view, typically from a nib.
    
//    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
//    [webView setBackgroundColor:[UIColor greenColor]];
//    [self.view addSubview:webView];
//    [webView loadRequest:[NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com/"]]];
//    webView.allowsLinkPreview = true;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickBtn:(id)sender {
//    UIViewController *childVC = [[UIViewController alloc] init];
//    childVC.preferredContentSize = CGSizeMake(10.0f , 10.0f);
//    [childVC.view setBackgroundColor:[UIColor greenColor]];
//    
//    [self showViewController:childVC sender:self];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        NSLog(@"max %f",touch.maximumPossibleForce);
        NSLog(@"began %f",touch.force);
    }
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        NSLog(@"max %f",touch.maximumPossibleForce);
        NSLog(@"moved %f",touch.force);
    }
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        NSLog(@"max %f",touch.maximumPossibleForce);
        NSLog(@"ended %f",touch.force);
    }
}

#pragma mark UIViewControllerPreviewingDelegate

- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context
              viewControllerForLocation:(CGPoint) point {
    
    UIViewController *childVC = [[UIViewController alloc] init];
    childVC.preferredContentSize = CGSizeMake(10.0f , 10.0f);
    [childVC.view setBackgroundColor:[UIColor greenColor]];
    
    CGRect rect = CGRectMake(10, point.y - 10, self.view.frame.size.width - 20,20);
    context.sourceRect = rect;
    return childVC;
}

- (void)previewingContext:(id<UIViewControllerPreviewing>)context
     commitViewController:(UIViewController*)vc {
//    [self showViewController:vc sender:self];
//    [self showDetailViewController:vc sender:self];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
