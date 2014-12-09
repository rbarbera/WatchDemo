//
//  ViewController.m
//  WatchDemo
//
//  Created by Rafa Barberá on 08/12/14.
//  Copyright (c) 2014 develapps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *messageTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)doSendMessage:(id)sender {
    NSUserDefaults *groupDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.demowatch.develapps.es"];
    
    NSDictionary *groupData = @{ @"message" : self.messageTextField.text };
    [groupDefaults setObject:groupData forKey:@"glanceData"];
}

@end
