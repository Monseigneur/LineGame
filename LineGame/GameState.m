//
//  GameState.m
//  LineGame
//
//  Created by Milan Justel on 4/15/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import "GameState.h"
#import "GameMove.h"

@interface GameState()

@property NSMutableArray* lineArray;

@end

@implementation GameState

- (id)initWithNumRows:(int)numRows {
  self = [super init];
  if (self) {
    _numRows = numRows;
    _lineArray = [[NSMutableArray alloc] initWithCapacity:_numRows];
    for (int i = 0; i < [_lineArray count]; i++) {
      [_lineArray setObject:[[NSNumber alloc] initWithInt:i + 1] atIndexedSubscript:i];
    }
    
    return self;
  }
  return nil;
}

- (BOOL)isGameOver {
  return NO;
}

- (BOOL)isValidMove:(GameMove*)moveToPlay {
  return NO;
}

- (void)playMove:(GameMove*)moveToPlay {
  if ([self isValidMove:moveToPlay]) {
    // play
  }
}

@end
