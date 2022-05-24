//
//  PaymentGateway.m
//  Payments
//
//  Created by Esperanza on 2022-05-23.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void) processPaymentAmount: (NSInteger) payment {
  if ([self.delegate canProcessPayment]) {
    [self.delegate processPaymentAmount:payment];
  } else {
    NSLog(@"Sorry, Your payment can not be processed.");
  }
  
}

@end
