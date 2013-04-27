//
//  GameState.h
//  LineGame
//
//  Created by Milan Justel on 4/15/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GameMove;
@class GameSettings;

@interface GameState : NSObject

@property (strong, nonatomic) GameSettings* settings;
@property (readonly) int linesLeft;

- (id)initWithSettings:(GameSettings*)settings;
- (int)numRows;
- (int)aiDifficulty;
- (BOOL)isGameOver;
- (BOOL)isValidMove:(GameMove*)moveToPlay;
- (void)playMove:(GameMove*)moveToPlay;

@end
