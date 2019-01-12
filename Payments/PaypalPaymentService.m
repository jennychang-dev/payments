//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Jenny Chang on 11/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService


- (void)processPaymentAmount:(int)value {
    
    NSLog(@"paypal would like to take %i amount",value);
}



-(BOOL)canProcessPayment {
    _decisionTime = 0 + arc4random_uniform(2);
    if (_decisionTime == 1) {
    NSLog(@"payps gonna take your monzzz");
    return YES;
    } else {
        NSLog(@"soz mate try again next time");
    return NO;
    }
}
    

    


@end
