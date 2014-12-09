//
//  GlanceController.m
//  WatchDemo WatchKit Extension
//
//  Created by Rafa Barberá on 08/12/14.
//  Copyright (c) 2014 develapps. All rights reserved.
//

#import "GlanceController.h"


@interface GlanceController()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *messageLabel;

@end


@implementation GlanceController

- (void)willActivate {
    NSUserDefaults *groupDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.demowatch.develapps.es"];
    
    NSDictionary *groupData = [groupDefaults objectForKey:@"glanceData"];
    
    [self.messageLabel setText:groupData[@"message"]];

}

@end



