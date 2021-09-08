//
//  ViewController.m
//  BLAAllDemo
//
//  Created by chensiyu on 2021/8/23.
//

#import "ViewController.h"
#import "TestLayer.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    TestLayer *layer = [TestLayer layer];
    layer.frame = CGRectMake(0, 0, 300, 300);
    layer.contents = (__bridge  id)[UIImage imageNamed:@"chengdu_logo"].CGImage;
    
    [self.view.layer addSublayer:layer];
    [layer setNeedsDisplay];
}


@end
