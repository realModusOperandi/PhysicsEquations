//
//  PHYAppDelegate.m
//  Physics Equations
//
//  Created by Liam on 1/17/14.
//  Copyright (c) 2014 Liam. All rights reserved.
//

#import "PHYAppDelegate.h"

@implementation PHYAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)calculateForce:(id)sender {
    NSNumber *charge1value = [NSNumber numberWithDouble:[[self charge1] doubleValue]*pow(10,[[self charge1exp] doubleValue])];
    //NSLog(@"%f", [[self charge1] doubleValue]*pow(10,[[self charge1exp] doubleValue]));
    NSNumber *charge2value = [NSNumber numberWithDouble:[[self charge2] doubleValue]*pow(10,[[self charge2mag] doubleValue])];
    NSNumber *constantValue = [NSNumber numberWithDouble:9.0 * pow(10, 9)];
    NSNumber *squareDistance = [NSNumber numberWithDouble:pow([[self distance] doubleValue], 2)];
    double forceValue = [constantValue doubleValue] * ([charge1value doubleValue] * [charge2value doubleValue]) / [squareDistance doubleValue];
    
    [[self force] setStringValue:[NSString stringWithFormat:@"%g Nm^2/C^2", forceValue]];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender {
    return YES;
}
@end
