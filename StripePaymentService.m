//
//  StripePaymentService.m
//  Payments
//
//  Created by Esperanza on 2022-05-23.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
-(void) processPaymentAmount: (NSInteger) payment {
  NSLog(@"Use StripePay to pay %ld.", payment);
}

- (BOOL)canProcessPayment {
  NSInteger num = arc4random_uniform(2);
  if (num == 0) {
    return NO;
  } else {
    return YES;
  }
}

@end
