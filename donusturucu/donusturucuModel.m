//
//  donusturucuModel.m
//  donusturucu
//
//  Created by Oğuzhan Varsak on 3.08.2018.
//  Copyright © 2018 Oğuzhan Varsak. All rights reserved.
//

#import "donusturucuModel.h"

@implementation donusturucuModel

- (id) init {
    self = [super init];
    return self;
}

-(void) donustur {
    self.cikis = [NSString stringWithFormat:@"%@",
                         [NSData dataWithBytes:[self.giris cStringUsingEncoding:NSUTF8StringEncoding]
                                        length:strlen([self.giris cStringUsingEncoding:NSUTF8StringEncoding])]];
    
    for(NSString * toRemove in [NSArray arrayWithObjects:@"<", @">", @" ", nil])
        self.cikis = [self.cikis stringByReplacingOccurrencesOfString:toRemove withString:@""];
}
@end
