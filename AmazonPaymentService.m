//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Esperanza on 2022-05-23.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService
-(void) processPaymentAmount: (NSInteger) payment {
  NSLog(@"Use AmazonPay to pay %ld.", payment);
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
