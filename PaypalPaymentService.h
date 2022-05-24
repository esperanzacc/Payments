//
//  PaypalPaymentService.h
//  Payments
//
//  Created by Esperanza on 2022-05-23.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface PaypalPaymentService : NSObject <PaymentDelegate>
-(void) processPaymentAmount: (NSInteger) payment;
@end

NS_ASSUME_NONNULL_END
