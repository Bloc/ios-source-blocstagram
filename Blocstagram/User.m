//
//  BLCUser.m
//  Blocstagram
//
//  Created by Aaron on 3/8/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype) initWithDictionary:(NSDictionary *)userDictionary {
    self = [super init];

    if (self) {
        self.idNumber = userDictionary[@"id"];
        self.userName = userDictionary[@"username"];
        self.fullName = userDictionary[@"full_name"];

        NSString *profileURLString = userDictionary[@"profile_picture"];
        NSURL *profileURL = [NSURL URLWithString:profileURLString];

        if (profileURL) {
            self.profilePictureURL = profileURL;
        }
    }

    return self;
}

@end
