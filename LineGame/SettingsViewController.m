//
//  SettingsViewController.m
//  LineGame
//
//  Created by Milan Justel on 4/26/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import "SettingsViewController.h"
#import "GameViewController.h"
#import "GameSettings.h"

@interface SettingsViewController ()

@property (readonly) int numRows;
@property (readonly) int aiDifficulty;

@end

@implementation SettingsViewController

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([[segue identifier] isEqualToString:@"makeNewGame"]) {
    _settings = [[GameSettings alloc] initWithRows:_numRows AI:_aiDifficulty];
  }
}

- (IBAction)changeRows:(id)sender {
  UISegmentedControl* segCont = (UISegmentedControl*) sender;
  _numRows = segCont.selectedSegmentIndex;
}

- (IBAction)changeAI:(id)sender {
  UISegmentedControl* segCont = (UISegmentedControl*) sender;
  _aiDifficulty = segCont.selectedSegmentIndex;
}

@end
