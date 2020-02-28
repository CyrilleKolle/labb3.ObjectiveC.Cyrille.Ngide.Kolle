//
//  SingletonClass.h
//  Labb1.ObjectiveC.CyrilleNgideKolle
//
//  Created by Indigo´sDad on 2020-01-16.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MyTableViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface SingletonClass : NSObject

 @property(nonatomic)   NSString* inputString;

+(id) Instance;
-(void) setData: (NSString*) value;

-(NSString*) getData;

@end

NS_ASSUME_NONNULL_END
