//
//  ViewController.m
//  TestJenkins
//
//  Created by Liem Vo on 5/18/13.
//  Copyright (c) 2013 Liem Vo. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	[self setWelcomeText];
}



/*
 * Set welcome Text
 */
- (void) setWelcomeText
{
    self.labelWelcome.text = @"Test Jenkins for distribution iOS Application";
}

@end
