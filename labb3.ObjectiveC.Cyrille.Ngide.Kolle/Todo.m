//
//  Todo.m
//  labb3.ObjectiveC.Cyrille.Ngide.Kolle
//
//  Created by Indigo´sDad on 2020-01-20.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import "Todo.h"

@implementation Todo

-(instancetype) initWithName: (NSString*) name andIsImportant: (BOOL) isImportant andIsDone:(BOOL) isDone{
    self = [super init];
    if (self){
        self.name = name;
        self.isDone = isDone;
        self.isImportant = isImportant;
    }
    
    return self;
}

-(NSString*) getTodo{
    return self.name;
}



@end
