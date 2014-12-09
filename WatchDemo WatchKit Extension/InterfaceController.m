//
//  InterfaceController.m
//  WatchDemo WatchKit Extension
//
//  Created by Rafa Barberá on 08/12/14.
//  Copyright (c) 2014 develapps. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceImage *interfaceImage;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *interfaceLabel;

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (!self) {
        return nil;
    }

    [self.interfaceImage setImageNamed:@"invernalia"];
    [self.interfaceLabel setText:@"Winter is coming"];
    
    return self;
}

- (IBAction)goToInvernalia {
    [self showImageWithName:@"invernalia"];
}

- (IBAction)goToMontjuic {
    [self showImageWithName:@"montjuic"];
}

- (void)showImageWithName:(NSString *)imageName {
    [self presentControllerWithName:@"ImageViewer" context:@{ @"imageName" : imageName }];
    
}

- (void)handleActionWithIdentifier:(NSString *)identifier forRemoteNotification:(NSDictionary *)remoteNotification {
    if ([identifier isEqualToString:@"hiButtonAction"]) {
        [self.interfaceImage setImageNamed:@"montjuic"];
        [self.interfaceLabel setText:@"Hi! Barcelona"];
    }
}

@end



