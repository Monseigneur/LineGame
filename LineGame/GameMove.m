//
//  GameMove.m
//  LineGame
//
//  Created by Milan Justel on 4/15/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import "GameMove.h"

@implementation GameMove

- (id)initWithRow:(int)row numLines:(int)lines {
  self = [super init];
  if (self) {
    _row = row;
    _numLines = lines;
    return self;
  }
  return nil;
}

@end
