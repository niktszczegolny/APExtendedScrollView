//
//  APViewController.m
//  APExtendedScrollView
//
//  Created by Andrzej on 23.01.2013.
//  Copyright (c) 2013 apuczyk. All rights reserved.
//

#import "APDemoViewController.h"

@interface APDemoViewController ()

@end

@implementation APDemoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor whiteColor];
    
    _scrollView = [[APScrollView alloc] initWithFrame:self.view.bounds];
    _scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 3, self.view.frame.size.height);
    _scrollView.pagingEnabled = YES;
    
    [_scrollView addSubview:[self _simpleLabelWithFrame:CGRectMake(0,
                                                                   0,
                                                                   self.view.frame.size.width,
                                                                   44)
                                                andText:@"Page 1"]];
    [_scrollView addSubview:[self _simpleLabelWithFrame:CGRectMake(self.view.frame.size.width,
                                                                   0,
                                                                   self.view.frame.size.width,
                                                                   44)
                                                andText:@"Page 2"]];
    [_scrollView addSubview:[self _simpleLabelWithFrame:CGRectMake(self.view.frame.size.width*2,
                                                                   0,
                                                                   self.view.frame.size.width,
                                                                   44)
                                                andText:@"Page 3"]];
    
    [self.view addSubview:_scrollView];
}

- (UILabel *)_simpleLabelWithFrame: (CGRect)frame andText: (NSString *)text {
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = text;
    label.font = [UIFont boldSystemFontOfSize:28.];
    label.textAlignment = NSTextAlignmentCenter;
    
    return label;
}


@end
