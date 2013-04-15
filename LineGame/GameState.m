//
//  GameState.m
//  LineGame
//
//  Created by Milan Justel on 4/15/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import "GameState.h"
#import "GameMove.h"

@implementation GameState

- (id)initWithNumRows:(int)numRows {
  self = [super init];
  if (self) {
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
