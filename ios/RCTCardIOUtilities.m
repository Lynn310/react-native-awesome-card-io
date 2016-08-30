//
//  RCTCardIOUtilities.m
//  RNCardIO
//
//  Created by Yann Pringault on 25/08/16.
//  Copyright © 2016 Yann Pringault. All rights reserved.
//

#import "RCTCardIOUtilities.h"

@implementation RCTCardIOUtilities

RCT_EXPORT_MODULE();

- (NSDictionary *)constantsToExport {
    return @{
        @"DETECTION_MODE": DETECTION_MODE
    };
}

RCT_EXPORT_METHOD(canReadCardWithCamera:(RCTResponseSenderBlock)callback) {
    callback(@[@([CardIOUtilities canReadCardWithCamera])]);
}

RCT_EXPORT_METHOD(preload) {
    return [CardIOUtilities preload];
}

@end
