//
//  PaymentGateway.h
//  Payments
//
//  Created by Jenny Chang on 11/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AmountGenerator.h"

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>
-(void)processPaymentAmount:(int)value;
-(BOOL)canProcessPayment;
@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id <PaymentDelegate> delegate;
@property (nonatomic, assign) int paymentAmount;


@end

NS_ASSUME_NONNULL_END
