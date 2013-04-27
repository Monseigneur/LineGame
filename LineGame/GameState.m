//
//  GameState.m
//  LineGame
//
//  Created by Milan Justel on 4/15/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import "GameState.h"
#import "GameMove.h"
#import "GameSettings.h"

@interface GameState()

@property NSMutableArray* lineArray;
@property NSMutableArray* moveArray;

@end

@implementation GameState

- (id)initWithSettings:(GameSettings*)settings {
  self = [super init];
  if (self) {
    _settings = settings;
    _lineArray = [[NSMutableArray alloc] initWithCapacity:[_settings numRows]];
    for (int i = 0; i < [_lineArray count]; i++) {
      [_lineArray setObject:[NSNumber numberWithInt:i + 1] atIndexedSubscript:i];
    }
    _moveArray = [[NSMutableArray alloc] init];
    
    return self;
  }
  return nil;
}

- (int)numRows {
  return [_settings numRows];
}

- (int)aiDifficulty {
  return [_settings aiDifficulty];
}

- (BOOL)isGameOver {
  return _linesLeft == 1;
}

- (BOOL)isValidMove:(GameMove*)moveToPlay {
  int remaining = [[_lineArray objectAtIndex:[moveToPlay row]] intValue];
  return (remaining < [moveToPlay numLines] && [moveToPlay numLines] < _linesLeft);
}

- (void)playMove:(GameMove*)moveToPlay {
  if ([self isValidMove:moveToPlay]) {
    int remaining = [[_lineArray objectAtIndex:[moveToPlay row]] intValue] - [moveToPlay numLines];
    [_lineArray setObject:[NSNumber numberWithInt:remaining] atIndexedSubscript:[moveToPlay row]];
    _linesLeft -= [moveToPlay numLines];
    [_moveArray insertObject:moveToPlay atIndex:[_moveArray count]];
  }
}

@end
