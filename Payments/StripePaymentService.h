//
//  StripePaymentService.h
//  Payments
//
//  Created by Jenny Chang on 11/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface StripePaymentService : NSObject <PaymentDelegate>

@property (nonatomic, assign) int decisionTime;

@end

NS_ASSUME_NONNULL_END
