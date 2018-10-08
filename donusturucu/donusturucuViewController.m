//
//  donusturucuViewController.m
//  donusturucu
//
//  Created by Oğuzhan Varsak on 3.08.2018.
//  Copyright © 2018 Oğuzhan Varsak. All rights reserved.
//

#import "donusturucuViewController.h"
#import "donusturucuWindowController.h"
@implementation donusturucuViewController
@synthesize model, textField1, labelSonuc;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

- (IBAction)donusturBtn:(id)sender {
    NSString *girisKelime = textField1.stringValue;
    
    labelSonuc.stringValue = [NSString stringWithFormat:@"%@",
                  [NSData dataWithBytes:[girisKelime cStringUsingEncoding:NSUTF8StringEncoding]
                                 length:strlen([girisKelime cStringUsingEncoding:NSUTF8StringEncoding])]];
    
    for(NSString * toRemove in [NSArray arrayWithObjects:@"<", @">", @" ", nil])
        labelSonuc.stringValue = [labelSonuc.stringValue stringByReplacingOccurrencesOfString:toRemove withString:@""];
}

- (IBAction)helpBtn:(id)sender {
    donusturucuWindowController *windowController = [[donusturucuWindowController alloc] initWithWindowNibName:@"donusturucuWindowController"];
    [windowController showWindow:self];
}
@end
