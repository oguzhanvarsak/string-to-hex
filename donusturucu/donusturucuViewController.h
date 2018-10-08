//
//  donusturucuViewController.h
//  donusturucu
//
//  Created by Oğuzhan Varsak on 3.08.2018.
//  Copyright © 2018 Oğuzhan Varsak. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "donusturucuModel.h"

@interface donusturucuViewController : NSViewController {
    donusturucuModel *model;
}

@property (weak) IBOutlet NSTextField *textField1;
@property (weak) IBOutlet NSTextFieldCell *labelSonuc;


- (IBAction)donusturBtn:(id)sender;
- (IBAction)helpBtn:(id)sender;

@property (strong, nonatomic) donusturucuModel *model;


@end
