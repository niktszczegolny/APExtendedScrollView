//
//  APScrollView.h
//  APExtendedScrollView
//
//  Created by Andrzej on 23.01.2013.
//  Copyright (c) 2013 apuczyk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface APScrollView : UIScrollView {
    UIPageControl           * _statusBarPageControl;
    UIInterfaceOrientation    _lastOrientation;
}

@end
