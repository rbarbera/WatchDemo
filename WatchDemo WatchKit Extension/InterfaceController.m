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

- (void)willActivate {
    [self.interfaceImage setImageNamed:@"invernalia"];
    [self.interfaceLabel setText:@"Winter is coming"];
}


@end



