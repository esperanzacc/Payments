//
//  AmazonPaymentService.h
//  Payments
//
//  Created by Esperanza on 2022-05-23.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface AmazonPaymentService : NSObject <PaymentDelegate>
-(void) processPaymentAmount: (NSInteger) payment;
- (BOOL)canProcessPayment;
@end

NS_ASSUME_NONNULL_END
