//
//  TestLayer.m
//  ZYHMetroSDKDemo
//
//  Created by chensiyu on 2021/8/20.
//

#import "TestLayer.h"
#import <UIKit/UIKit.h>

@interface TestLayer (){
    
}

@end

@implementation TestLayer

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.path = [[UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 100, 100)] CGPath];
        self.strokeColor = [UIColor redColor].CGColor;
    }
    return self;
}

- (void)setContents:(id)contents {
    NSLog(@"class = %@ , _cmd = %@ = %@",NSStringFromClass([self class]), NSStringFromSelector(_cmd), contents);
    [super setContents:contents];
}

- (id)contents {

    id contents = [super contents];
    NSLog(@"class = %@ , _cmd = %@ = %@",NSStringFromClass([self class]), NSStringFromSelector(_cmd), contents);
    return contents;
}

- (void)display {
    [super display];
    NSLog(@"class = %@ , _cmd = %@",NSStringFromClass([self class]), NSStringFromSelector(_cmd));
}

- (void)drawInContext:(CGContextRef)ctx {
    [super drawInContext:ctx];
    NSLog(@"class = %@ , _cmd = %@",NSStringFromClass([self class]), NSStringFromSelector(_cmd));
//    UIImage *image = [UIImage imageNamed:@"common_img_404"];
//    CGContextDrawImage(ctx, self.bounds, image.CGImage);
}


@end
