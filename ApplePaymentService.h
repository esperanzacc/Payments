//
//  ApplePaymentService.h
//  Payments
//
//  Created by Esperanza on 2022-05-24.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface ApplePaymentService : NSObject <PaymentDelegate>
-(void) processPaymentAmount: (NSInteger) payment;
- (BOOL)canProcessPayment;
@end

NS_ASSUME_NONNULL_END
