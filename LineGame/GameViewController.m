//
//  GameViewController.m
//  LineGame
//
//  Created by Milan Justel on 4/26/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import "GameViewController.h"
#import "SettingsViewController.h"
#import "GameState.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    _state = nil;
    return self;
  }
  return nil;
}

- (void)startGameWithSettings:(GameSettings*)settings {
  _state = [[GameState alloc] initWithSettings:settings];
  [self viewDidLoad];
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  if (_state) {
    _rowsLabel.text = [NSString stringWithFormat:@"Rows: %d", [_state numRows]];
    _aiDifficultyLabel.text = [NSString stringWithFormat:@"AI Difficulty: %d", [_state aiDifficulty]];
  } else {
    _rowsLabel.text = @"No current game";
    _aiDifficultyLabel.text = @"";
  }
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)makeNewGame:(UIStoryboardSegue*)segue {
  if ([[segue identifier] isEqualToString:@"makeNewGame"]) {
    SettingsViewController* setCont = [segue sourceViewController];
    if ([setCont settings]) {
      [self startGameWithSettings:[setCont settings]];
      [self viewDidLoad];
    }
  }
}

- (IBAction)cancelNewGame:(UIStoryboardSegue*)segue {
  if ([[segue identifier] isEqualToString:@"cancelNewGame"]) {
    if (![self.presentedViewController isBeingDismissed]) {
      //[self dismissViewControllerAnimated:YES completion:NULL];
      _state = nil;
      [self viewDidLoad];
    }
  }
}

@end
