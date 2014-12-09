//
//  NotificationController.m
//  WatchDemo WatchKit Extension
//
//  Created by Rafa Barberá on 08/12/14.
//  Copyright (c) 2014 develapps. All rights reserved.
//

#import "NotificationController.h"

@import CoreLocation;


@interface NotificationController()
@property (weak, nonatomic) IBOutlet WKInterfaceMap *interfaceMap;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *messageLabel;

@end


@implementation NotificationController

- (void)didReceiveRemoteNotification:(NSDictionary *)remoteNotification withCompletion:(void (^)(WKUserNotificationInterfaceType))completionHandler {
    
    NSDictionary *locationData = remoteNotification[@"locationData"];
    if (!locationData) {
        completionHandler(WKUserNotificationInterfaceTypeDefault);
        return;
    }
    
    CLLocationCoordinate2D center = CLLocationCoordinate2DMake([locationData[@"latitude"] floatValue], [locationData[@"longitude"] floatValue]);
    
    double mapSize = [locationData[@"size"] doubleValue];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(center, mapSize, mapSize);
    
    [self.interfaceMap setCoordinateRegion:region];
    [self.interfaceMap addAnnotation:center withPinColor:WKInterfaceMapPinColorGreen];
    
    [self.messageLabel setText:locationData[@"name"]];
    
    completionHandler(WKUserNotificationInterfaceTypeCustom);
}

@end



