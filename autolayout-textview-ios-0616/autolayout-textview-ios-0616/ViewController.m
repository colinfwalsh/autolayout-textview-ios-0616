//
//  ViewController.m
//  autolayout-textview-ios-0616
//
//  Created by Colin Walsh on 6/27/16.
//  Copyright © 2016 Colin Walsh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextView *textField;

@property (strong, nonatomic) IBOutlet UIButton *bottomRightButton;
@property (strong, nonatomic) IBOutlet UIButton *bottomLeftButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //Superclass constraints removed
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view removeConstraints:self.view.constraints];
    
    //Bottomleft button constraints removed
    self.bottomLeftButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.bottomLeftButton removeConstraints:self.bottomLeftButton.constraints];
    
    //Bottomright button constraints removed
    self.bottomRightButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.bottomRightButton removeConstraints:self.bottomRightButton.constraints];
    
    //Textfield constraints removed
    self.textField.translatesAutoresizingMaskIntoConstraints = NO;
    [self.textField removeConstraints:self.textField.constraints];
    
    //Anchor bottomRight button
    [self.bottomRightButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active = YES;
    [self.bottomRightButton.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-10].active = YES;
    
    //Anchor bottomLeft button
    [self.bottomLeftButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active = YES;
    [self.bottomLeftButton.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:10].active = YES;
  
    
    //Anchor textField
    [self.textField.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:40].active = YES;
    [self.textField.bottomAnchor constraintEqualToAnchor:self.bottomLeftButton.bottomAnchor constant:-40].active = YES;
    [self.textField.leftAnchor constraintEqualToAnchor: self.view.leftAnchor].active = YES;
    [self.textField.widthAnchor constraintEqualToAnchor:self.view.widthAnchor constant:-10].active = YES;
    [self.textField.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [self.textField.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
