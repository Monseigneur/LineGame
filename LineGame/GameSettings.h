//
//  GameSettings.h
//  LineGame
//
//  Created by Milan Justel on 4/26/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameSettings : NSObject

@property (readonly) int numRows;
@property (readonly) int aiDifficulty;

- (id)initWithRows:(int)rows AI:(int)aiDifficulty;

@end
