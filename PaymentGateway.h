//
//  PaymentGateway.h
//  Payments
//
//  Created by Esperanza on 2022-05-23.
//

#import <Foundation/Foundation.h>

@class PaymentGateway;

NS_ASSUME_NONNULL_BEGIN
@protocol PaymentDelegate <NSObject>
-(void) processPaymentAmount: (NSInteger) payment;
-(BOOL) canProcessPayment;
@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> delegate;
-(void) processPaymentAmount: (NSInteger) payment;
@end

NS_ASSUME_NONNULL_END
