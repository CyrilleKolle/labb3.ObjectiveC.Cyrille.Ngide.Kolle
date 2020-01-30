//
//  ToDOList.h
//  labb3.ObjectiveC.Cyrille.Ngide.Kolle
//
//  Created by Indigo´sDad on 2020-01-20.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Todo.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDOList : NSObject

@property (nonatomic) NSMutableArray *todoos;
@property (nonatomic) Todo* todo;

-(void)createATodo:(NSString*) name;

-(void)listOfAllTodos;



-(void)completedTodos;

-(NSInteger) getSize;
-(NSMutableArray*) converttTodo;

@end

NS_ASSUME_NONNULL_END
