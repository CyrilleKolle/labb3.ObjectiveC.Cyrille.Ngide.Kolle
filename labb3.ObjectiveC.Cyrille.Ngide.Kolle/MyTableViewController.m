//
//  MyTableViewController.m
//  labb3.ObjectiveC.Cyrille.Ngide.Kolle
//
//  Created by Indigo´sDad on 2020-01-20.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import "MyTableViewController.h"
#import "Todo.h"
#import "ToDOList.h"
#import "ViewController.h"
#import "SingletonClass.h"

@interface MyTableViewController ()
@property (nonatomic) ToDOList* todolist;
@property (nonatomic) Todo* todo;

@end

@implementation MyTableViewController

- (void)viewDidLoad {
  
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view.
}


- (IBAction)createTodo:(id)sender {
    NSString* name = self.InputTodo.text;
    NSDate* dateChosen = [self.dateInput date];
    
    
    //NSDate *todoDate =[NSDate date];
    NSDateFormatter *dateFormatter =[[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"HH:mm:ss yyyy-MM-dd"];

    
    
    NSString *dateString = [dateFormatter stringFromDate:dateChosen];

    
    NSString *todoItem  =[NSString stringWithFormat:@"%@ deadline    %@",name,dateString];
    
    
 [[SingletonClass Instance]setData:todoItem];
    
//    [[NSUserDefaults standardUserDefaults] setObject:dateChosen forKey:@"date"];
//    [[NSUserDefaults standardUserDefaults] synchronize];
//
//
     
    NSMutableArray *activeControllerArray =  [self.navigationController.viewControllers mutableCopy];
          [activeControllerArray removeObjectAtIndex:1];
            self.navigationController.viewControllers = activeControllerArray;
   
}



 
    @end
    
