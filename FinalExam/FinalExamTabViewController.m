//
//  FinalExamTabViewController.m
//  FinalExam
//
//  Created by MariAnne Skolnik on 5/7/14.
//  Copyright (c) 2014 MariAnne Skolnik. All rights reserved.
//

#import "FinalExamTabViewController.h"
#import "Quiz8ViewController.h"


@interface FinalExamTabViewController ()

@end

@implementation FinalExamTabViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    if ([[item title] isEqualToString:@"Etcha"]) {
        [[UIApplication sharedApplication] setStatusBarOrientation: UIInterfaceOrientationLandscapeLeft animated:NO];
    };
    NSLog(@"%@",[item description]);
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([self.selectedViewController isMemberOfClass:[ViewController class]]) {
        
        return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft);
    } else {
        return (UIInterfaceOrientationIsPortrait(interfaceOrientation));
    }
}


-(BOOL)shouldAutorotate
{
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations {
    if ([self.selectedViewController isMemberOfClass:[ViewController class]]) {
        NSLog(@"Landscape");
        return UIInterfaceOrientationMaskLandscape;
    } else {
        NSLog(@"Portrait");
        return UIInterfaceOrientationMaskPortrait;
    }
}
@end

