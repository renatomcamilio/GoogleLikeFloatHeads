//
//  ViewController.m
//  GoogleLikeFloatHeads
//
//  Created by Renato Camilio on 2/18/15.
//  Copyright (c) 2015 Renato Camilio. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)addButtonWasPressed:(id)sender {
    FloatingMenuController *floatingMenuController = [[FloatingMenuController alloc] initFromView:self.addButton];
    [self presentViewController:floatingMenuController animated:NO completion:nil];
}

@end
