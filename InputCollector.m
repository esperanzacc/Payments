//
//  InputCollector.m
//  Payments
//
//  Created by Esperanza on 2022-05-23.
//

#import "InputCollector.h"

@implementation InputCollector

- (NSString *) getUserInput: (NSString *) prompt {
  char inputChars[255];

  fgets(inputChars, 255, stdin);

  NSString *str = [NSString stringWithUTF8String:inputChars];
  return [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
