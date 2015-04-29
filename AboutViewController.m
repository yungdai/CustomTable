//
//  AboutViewController.m
//  CustomTable
//
//  Created by Yung Dai on 2015-04-20.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Add code to load web content in UIWebView
    
    // create an NSURL object called url and give it the path to the about.html file you put in the supporting files folder
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"about.html" ofType:nil]];
    
    // create an NSURLRequest object called request and initiate it with the new url NSURL object
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    // load the requets into the webView to load the content
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
