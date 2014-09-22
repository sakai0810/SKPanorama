//
//  ViewController.m
//  SKPanorama
//
//  Created by 酒井 翔也 on 2014/09/19.
//  Copyright (c) 2014年 酒井 翔也. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadPanoramaHtmlWithResourceName:@"tara-diego-panorama_2" toWebView:self.webView];

}

- (void)loadPanoramaHtmlWithResourceName:(NSString *)resourceName toWebView:(UIWebView *)webView
{
    NSString *pathToHtml = [[NSBundle mainBundle] pathForResource:resourceName ofType:@"html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL fileURLWithPath:pathToHtml]];
    [webView loadRequest:request];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
