//
//  GameViewController.m
//  LineGame
//
//  Created by Milan Justel on 4/26/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import "GameViewController.h"
#import "GameState.h"

@interface GameViewController ()

@end

@implementation GameViewController

- (void)startGameWithSettings:(GameSettings*)settings {
  _state = [[GameState alloc] initWithSettings:settings];
  [self viewDidLoad];
}

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
  _rowsLabel.text = [NSString stringWithFormat:@"Rows: %d", [_state numRows]];
  _aiDifficultyLabel.text = [NSString stringWithFormat:@"AI Difficulty: %d", [_state aiDifficulty]];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([[segue identifier] isEqualToString:@"playGame"]) {
    
  }
}

@end
