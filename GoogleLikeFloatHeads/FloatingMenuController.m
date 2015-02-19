//
//  FloatingMenuController.m
//  GoogleLikeFloatHeads
//
//  Created by Renato Camilio on 2/18/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import "FloatingMenuController.h"


@interface FloatingMenuController ()
@property (nonatomic, strong) UIView *fromView;
@property (nonatomic, strong) UIVisualEffectView *blurredView;
@property (nonatomic, strong) FloatingButton *closeButton;
@end

@implementation FloatingMenuController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.blurredView.frame = self.view.bounds;
    
    [self setupCloseButton];
    [self.closeButton addTarget:self action:@selector(dismissSelf:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:self.blurredView];
    [self.view addSubview:self.closeButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setupCloseButton {
    self.closeButton = [[FloatingButton alloc] initWithFrame:CGRectMake(0, 0, 50, 50)
                                                    andImage:[UIImage imageNamed:@"icon-close"]
                                          andBackgroundColor:[UIColor flatRedColor]];
    self.closeButton.center = self.fromView.center;
}

- (void)dismissSelf:(id)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}

- (instancetype)initFromView:(UIView *)fromView {
    if (self = [super initWithNibName:nil bundle:nil]) {
        self.fromView = fromView;
        
        self.modalPresentationStyle = UIModalPresentationOverFullScreen;
        self.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
        
        UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
        self.blurredView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    }
    
    return self;
}

@end
