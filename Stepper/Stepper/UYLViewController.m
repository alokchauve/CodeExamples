//
//  UYLViewController.m
//  Stepper
//
//  Created by Keith Harrison on 03-Jan-2012 http://useyourloaf.com
//  Copyright (c) 2012 Keith Harrison. All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are met:
//
//  Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//
//  Redistributions in binary form must reproduce the above copyright
//  notice, this list of conditions and the following disclaimer in the
//  documentation and/or other materials provided with the distribution.
//
//  Neither the name of Keith Harrison nor the names of its contributors
//  may be used to endorse or promote products derived from this software
//  without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDER ''AS IS'' AND ANY
//  EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
//  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER BE LIABLE FOR ANY
//  DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
//  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
//  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
//  ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
//  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 

#import "UYLViewController.h"

@implementation UYLViewController
@synthesize stepper;
@synthesize counter;

#pragma mark - View lifecycle

- (void)viewDidUnload
{
    [self setCounter:nil];
    [self setStepper:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return UIInterfaceOrientationIsPortrait(interfaceOrientation);
}

- (IBAction)autorepeatChanged:(UISwitch *)sender {
    
    self.stepper.autorepeat = [sender isOn];
}

- (IBAction)continuousChanged:(UISwitch *)sender {
    
    self.stepper.continuous = [sender isOn];
}

- (IBAction)wrapChanged:(UISwitch *)sender {
    
    self.stepper.wraps = [sender isOn];
}

- (IBAction)stepperChanged:(UIStepper *)sender {
    
    NSUInteger value = sender.value;
    self.counter.text = [NSString stringWithFormat:@"%03d",value];
}

- (void)dealloc {
    [counter release];
    [stepper release];
    [super dealloc];
}
@end
