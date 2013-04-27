//
//  SettingsViewController.h
//  LineGame
//
//  Created by Milan Justel on 4/26/13.
//  Copyright (c) 2013 Milan Justel. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GameSettings;

@interface SettingsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UISegmentedControl* rowSegmentController;
@property (strong, nonatomic) IBOutlet UISegmentedControl* aiSegmentController;

@property (strong, nonatomic) GameSettings* settings;

- (IBAction)changeRows:(id)sender;
- (IBAction)changeAI:(id)sender;

@end
