//
//  InputCollector.h
//  Payments
//
//  Created by Esperanza on 2022-05-23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputCollector : NSObject

- (NSString *) getUserInput: (NSString *) prompt;
@end

NS_ASSUME_NONNULL_END
