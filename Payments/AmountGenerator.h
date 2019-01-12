//
//  QuestionGenerator.h
//  Payments
//
//  Created by Jenny Chang on 11/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface AmountGenerator : NSObject

-(int)generateAmount;

typedef enum PaymentOptions
{
    Undefined = 0,
    Paypal, // by setting first to 0, 1 and 2 automatically sets itself
    Stripe,
    Amazon,
} PaymentOptions;

-(PaymentOptions)convertFromStringToEnum:(NSString *)input;
@property PaymentOptions payp;

@end

NS_ASSUME_NONNULL_END
