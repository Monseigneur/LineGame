//
//  GameState.h
//  LineGame
//
//  Created by Milan Justel on 4/15/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import <Foundation/Foundation.h>

@class GameMove;

@interface GameState : NSObject

@property (readonly) int numRows;
@property (readonly) int linesLeft;

- (id)initWithNumRows:(int)numRows;
- (BOOL)isGameOver;
- (BOOL)isValidMove:(GameMove*)moveToPlay;
- (void)playMove:(GameMove*)moveToPlay;

@end
