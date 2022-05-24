//
//  ApplePaymentService.m
//  Payments
//
//  Created by Esperanza on 2022-05-24.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void) processPaymentAmount: (NSInteger) payment {
  NSLog(@"Use ApplePay to pay %ld.", payment);
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
