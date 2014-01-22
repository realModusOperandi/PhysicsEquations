//
//  PHYAppDelegate.h
//  Physics Equations
//
//  Created by Liam on 1/17/14.
//  Copyright (c) 2014 Liam. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PHYAppDelegate : NSObject <NSApplicationDelegate>
- (IBAction)calculateForce:(id)sender;

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *charge1;
@property (weak) IBOutlet NSTextField *charge1exp;
@property (weak) IBOutlet NSTextField *charge2;
@property (weak) IBOutlet NSTextField *charge2mag;
@property (weak) IBOutlet NSTextField *distance;
@property (weak) IBOutlet NSTextField *force;

@end
