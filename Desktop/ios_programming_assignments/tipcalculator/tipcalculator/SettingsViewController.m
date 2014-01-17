//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Sonal Jain on 1/15/14.
//  Copyright (c) 2014 Sonal Singhal. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultControl;
- (IBAction)saveDefault:(id)sender;

@end

@implementation SettingsViewController

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
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int defaultValue = [defaults integerForKey:@"defaultTip"];
    [self.defaultControl setSelectedSegmentIndex:defaultValue];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveDefault:(id)sender {
    int defaultValue = self.defaultControl.selectedSegmentIndex;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:defaultValue forKey:@"defaultTip"];
    [defaults synchronize];
}
@end
