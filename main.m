//
//  main.m
//  Payments
//
//  Created by Esperanza on 2022-05-23.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    InputCollector *inputCollector = [[InputCollector alloc]init];
    NSInteger randomVal = arc4random_uniform(900) + 100;
    NSString *message = [NSString stringWithFormat:@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", randomVal];
    NSLog(@"%@",message);
    
    PaymentGateway *paymentGateWay = [[PaymentGateway alloc]init];
    PaypalPaymentService *paypalPayment = [[PaypalPaymentService alloc]init];
    StripePaymentService *stripePayment = [[StripePaymentService alloc]init];
    AmazonPaymentService *amazonPayment = [[AmazonPaymentService alloc]init];
    ApplePaymentService *applePayment = [[ApplePaymentService alloc]init];
    
    while (YES) {
      NSString *userInput = [inputCollector getUserInput:message];
      NSLog(@"%ld", [userInput integerValue]);
      NSInteger option = [userInput integerValue];
      
      switch (option) {
        case 1:
          paymentGateWay.delegate = paypalPayment;
          break;
        case 2:
          paymentGateWay.delegate = stripePayment;
          break;
        case 3:
          paymentGateWay.delegate = amazonPayment;
          break;
        case 4:
          paymentGateWay.delegate = applePayment;
          break;
        default:
          break;
      }
      [paymentGateWay processPaymentAmount:randomVal];

    }
  }
  return 0;
}
