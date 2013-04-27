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
  [_rowSegmentController addTarget:self action:@selector(setRows:) forControlEvents:UIControlEventValueChanged];
  [_aiSegmentController addTarget:self action:@selector(setAiDifficulty:) forControlEvents:UIControlEventValueChanged];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([[segue identifier] isEqualToString:@"startGame"]) {
    GameSettings* settings = [[GameSettings alloc] initWithRows:_numRows AI:_aiDifficulty];
    GameViewController* gameView = [segue destinationViewController];
    [gameView startGameWithSettings:settings];
  }
}

- (IBAction)setRows:(id)sender {
  UISegmentedControl* segCont = (UISegmentedControl*) sender;
  _numRows = segCont.selectedSegmentIndex;
}

- (IBAction)setAiDifficulty:(id)sender {
  UISegmentedControl* segCont = (UISegmentedControl*) sender;
  _aiDifficulty = segCont.selectedSegmentIndex;
}

@end
