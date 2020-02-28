//
//  SingletonClass.m
//  Labb1.ObjectiveC.CyrilleNgideKolle
//
//  Created by Indigo´sDad on 2020-01-16.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import "SingletonClass.h"
#import "MyTableViewController.h"
#import <UIKit/UIKit.h>

@implementation SingletonClass

static SingletonClass *instance = nil;

+(id) Instance {
    if(instance == nil){
        
    instance = [[SingletonClass alloc] init];
    }
    return instance;
}


-(void) setData: (NSString*) value{
    self.inputString = value;
}
- (NSString*)getData{
    return self.inputString;
}

@end


    


