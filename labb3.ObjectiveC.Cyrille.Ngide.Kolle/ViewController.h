//
//  ViewController.h
//  labb3.ObjectiveC.Cyrille.Ngide.Kolle
//
//  Created by Indigo´sDad on 2020-01-20.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo.h"
#import "ToDOList.h"
#import "SingletonClass.h"


@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic) IBOutlet UITableView* tableV;
@property (nonatomic) ToDOList* todolist;
@property (nonatomic) Todo* todo;
@property (nonatomic) NSMutableArray* arrayToDelete;
@property (nonatomic)NSMutableArray* arrayImportant;


- (IBAction)deleteTodo: (UIButton *)sender;
- (IBAction)importantButtonA:(UIButton *)sender;


@end

