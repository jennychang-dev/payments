//
//  PaypalPaymentService.h
//  Payments
//
//  Created by Jenny Chang on 11/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "AmountGenerator.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaypalPaymentService : NSObject <PaymentDelegate>

@property (nonatomic, assign) int decisionTime;

@end

NS_ASSUME_NONNULL_END
