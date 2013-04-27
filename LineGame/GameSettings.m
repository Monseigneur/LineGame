//
//  GameSettings.m
//  LineGame
//
//  Created by Milan Justel on 4/26/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import "GameSettings.h"

@implementation GameSettings

- (id)initWithRows:(int)rows AI:(int)aiDifficulty {
  self = [super init];
  if (self) {
    _numRows = rows;
    _aiDifficulty = aiDifficulty;
    return self;
  }
  return nil;
}

@end
