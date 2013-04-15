//
//  GameMove.h
//  LineGame
//
//  Created by Milan Justel on 4/15/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameMove : NSObject

@property (readonly) int row;
@property (readonly) int numLines;

- (id)initWithRow:(int)row numLines:(int)lines;

@end
