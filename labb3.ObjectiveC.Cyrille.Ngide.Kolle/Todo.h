//
//  Todo.h
//  labb3.ObjectiveC.Cyrille.Ngide.Kolle
//
//  Created by Indigo´sDad on 2020-01-20.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Todo : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) BOOL isImportant;
@property (nonatomic) BOOL isDone;
@property (nonatomic) NSDate* date;

@property (nonatomic) NSString* stringDate;

-(instancetype) initWithName: (NSString*) name andIsImportant: (BOOL) isImportant andIsDone:(BOOL) isDone;

-(NSString*) getTodo;


@end

NS_ASSUME_NONNULL_END
