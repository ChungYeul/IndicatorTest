//
//  ViewController.m
//  IndicatorTest
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 T. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator1;
@property (strong, nonatomic) UIActivityIndicatorView *indicator2;
@end

@implementation ViewController
- (IBAction)startIndicator:(id)sender {
    [self.indicator1 startAnimating];
    
    // 0.3초 뒤 시작
    [self.indicator2 performSelector:@selector(startAnimating) withObject:nil afterDelay:0.3f];
}
- (IBAction)stopIndicator:(id)sender {
    [self.indicator1 stopAnimating];
    
    // 0.7초 뒤 멈춤
    [self.indicator2 performSelector:@selector(stopAnimating) withObject:nil afterDelay:0.7f];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 코드로 작성
    self.indicator2 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    self.indicator2.hidesWhenStopped = YES;
    self.indicator2.center = CGPointMake(160, 350);
    [self.view addSubview:self.indicator2];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
