//
//  PaymentGateway.m
//  Payments
//
//  Created by Jenny Chang on 11/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "PaymentGateway.h"


@implementation PaymentGateway


-(void)processPaymentAmount:(int)value {
    // processing the amount the user owes
    AmountGenerator *amount = [[AmountGenerator alloc] init];
    [self.delegate processPaymentAmount:[amount generateAmount]];
    return;
}


@end
