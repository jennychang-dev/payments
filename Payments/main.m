//
//  main.m
//  Payments
//
//  Created by Jenny Chang on 11/01/2019.
//  Copyright © 2019 Jenny Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AmountGenerator.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        AmountGenerator *a = [[AmountGenerator alloc] init];
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%i. Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon", [a generateAmount]);
        
        char str[100];
        fgets(str,100,stdin);
        
        NSString *userInput = [[NSString alloc] initWithUTF8String:str];
        userInput = [userInput stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        
        PaymentGateway *gateway = [[PaymentGateway alloc] init];
        
        StripePaymentService *stripey = [[StripePaymentService alloc] init];
        AmazonPaymentService *amazo = [[AmazonPaymentService alloc] init];
        PaypalPaymentService *payp = [[PaypalPaymentService alloc] init];
        
        switch ([a convertFromStringToEnum:userInput]) {
            case Paypal:
                gateway.delegate = payp;
                break;
            case Stripe:
                gateway.delegate = stripey;
                break;
            case Amazon:
                gateway.delegate = amazo;
                break;
            case Undefined:
                NSLog(@"can't process payment");
                break;
        }
        
        [gateway.delegate processPaymentAmount:[a generateAmount]];
        [gateway.delegate canProcessPayment];
        
    }
    return 0;
}
