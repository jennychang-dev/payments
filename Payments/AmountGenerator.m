//
//  QuestionGenerator.m
//  Payments
//
//  Created by Jenny Chang on 11/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import "AmountGenerator.h"

@implementation AmountGenerator

-(int)generateAmount {
    return 100 + arc4random_uniform(900);
}

-(PaymentOptions)convertFromStringToEnum:(NSString *)input {
    if ([input isEqualToString:@"Paypal"]) {
        return Paypal;
    } else if ([input isEqualToString:@"Stripe"]) {
        return Stripe;
    } else if ([input isEqualToString:@"Amazon"]) {
        return Amazon;
    } else {
        return Undefined;
    }
}


@end
