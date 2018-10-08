//
//  donusturucuModel.h
//  donusturucu
//
//  Created by Oğuzhan Varsak on 3.08.2018.
//  Copyright © 2018 Oğuzhan Varsak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface donusturucuModel : NSObject

@property (nonatomic, assign) NSString *giris;
@property (nonatomic, assign) NSString *cikis;

-(void) donustur;
@end
