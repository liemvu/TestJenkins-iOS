//
//  TestJenkinsTests.m
//  TestJenkinsTests
//
//  Created by Liem Vo on 5/18/13.
//  Copyright (c) 2013 Liem Vo. All rights reserved.
//

#import "HomeViewControllerTests.h"
#import "HomeViewController.h"
@implementation HomeViewControllerTests{
    HomeViewController * controller;
}

- (void)setUp
{
    [super setUp];
    NSString * storyboardName = IS_RUNNING_ON_IPAD ? @"MainStoryboard_iPad" : @"MainStoryboard_iPhone";
    UIStoryboard * storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    controller = [storyboard instantiateInitialViewController];
}

- (void)tearDown
{
    [super tearDown];
    controller = nil;
}

- (void)testHomeScreenIsInitialViewControllerInMainStoryboard
{
    STAssertEqualObjects([controller.class description], [[HomeViewController class] description], @"HomeViewController is not initial view controller of main storyboard!");
}

- (void) testHomeScreenHasWelcomeLabel
{
    [controller view];
    STAssertNotNil(controller.labelWelcome, @"Home View Controller must have welcome label!");
}

- (void) testWelcomeLableHasWelcomeText
{
    [controller view];
    STAssertEqualObjects(controller.labelWelcome.text, @"Test Jenkins for distribution iOS Application", @"Welcome Label must have welcome text 'Test Jenkins for distribution iOS Application'");
}

- (void) testShouldNotFail
{
    [controller view];
    STAssertNil(nil, @"should fail here");
}

@end
