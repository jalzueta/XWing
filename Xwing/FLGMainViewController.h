//
//  FLGMainViewController.h
//  Xwing
//
//  Created by Javi Alzueta on 6/4/15.
//  Copyright (c) 2015 FillinGAPPs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FLGMainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *spaceView;
@property (weak, nonatomic) IBOutlet UIImageView *xwingView;

@property (strong, nonatomic) UITapGestureRecognizer *tap;

@end
