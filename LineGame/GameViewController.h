//
//  GameViewController.h
//  LineGame
//
//  Created by Milan Justel on 4/26/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GameState;
@class GameSettings;

@interface GameViewController : UIViewController

@property (strong, nonatomic) GameState* state;
@property (weak, nonatomic) IBOutlet UILabel *rowsLabel;
@property (weak, nonatomic) IBOutlet UILabel *aiDifficultyLabel;

- (void)startGameWithSettings:(GameSettings*)settings;
- (IBAction)makeNewGame:(UIStoryboardSegue*)segue;
- (IBAction)cancelNewGame:(UIStoryboardSegue*)segue;

@end
