//
//  ImageViewer.m
//  WatchDemo
//
//  Created by Rafa Barberá on 09/12/14.
//  Copyright (c) 2014 develapps. All rights reserved.
//

#import "ImageViewer.h"

@interface ImageViewer ()

@property (weak, nonatomic) IBOutlet WKInterfaceImage *interfaceImage;

@end

@implementation ImageViewer

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (!self) {
        return nil;
    }
    
    [_interfaceImage setImageNamed:context[@"imageName"]];
    
    return self;
}

@end
