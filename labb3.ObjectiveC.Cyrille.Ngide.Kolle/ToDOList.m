//
//  ToDOList.m
//  labb3.ObjectiveC.Cyrille.Ngide.Kolle
//
//  Created by Indigo´sDad on 2020-01-20.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import "ToDOList.h"
#import "MyTableViewController.h"


@implementation ToDOList

-(instancetype)init{
    if (self) {
        self.todoos = [NSMutableArray new];
       // NSString *name;
        //[self createATodo:name];
    }
    return self;
}

- (void)doneTodoos{
    
}

- (void)createATodo:(NSString*) name{
    
    Todo *todo =[[[Todo alloc]init]initWithName:name andIsImportant:NO andIsDone:NO];
    NSLog(@"new todo");
    [self.todoos addObject:todo];
    
}

- (void)listOfAllTodos{
    
}
-(void)completedTodos{

}
-(NSMutableArray*) converttTodo{
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    
    for(Todo *tod in self.todoos){
        [arr addObject:[tod getTodo]];
    }
    return arr;
}
- (NSInteger)getSize{
    return self.todoos.count;
}


@end

