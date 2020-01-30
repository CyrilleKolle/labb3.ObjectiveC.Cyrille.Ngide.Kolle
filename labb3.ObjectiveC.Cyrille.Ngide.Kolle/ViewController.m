//
//  ViewController.m
//  labb3.ObjectiveC.Cyrille.Ngide.Kolle
//
//  Created by Indigo´sDad on 2020-01-20.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableV.delegate=self;
    self.tableV.dataSource= self;
    
    self.todolist = [[ToDOList alloc]init];
    //self.todolist =my
    self.arrayToDelete =[[NSMutableArray alloc]init];
    self.arrayImportant =[[NSMutableArray alloc]init];
    
    
//   NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
//    NSMutableArray *myString = [prefs objectForKey:@"todo"];    self.todolist =myString;

    
    [self saveInfo];
    [self.tableV reloadData];

}
-(void)saveInfo{
    NSMutableArray *todoos = [[NSMutableArray alloc]init];
     NSMutableArray *impTodoos =[[NSMutableArray alloc]init];
    
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    todoos = [self.todolist converttTodo];
    impTodoos = [self convertImpTodo];
    

    [userDefault setObject:todoos forKey:@"todo"];
    [userDefault setObject:impTodoos forKey:@"impo"];
    [userDefault synchronize];
    [self.tableV reloadData];


}
-(NSMutableArray*) convertImpTodo{
    NSMutableArray *arr = [[NSMutableArray alloc]init];
    
    for(Todo *tod in self.arrayImportant){
        [arr addObject:[tod getTodo]];
    }
    return arr;
}




- (void)viewDidAppear:(BOOL)animated{
    if([[SingletonClass Instance]getData]!= nil  && ![[[SingletonClass Instance]getData]isEqualToString:@""]){
        
    [self.todolist createATodo:[[SingletonClass Instance]getData]];
    }
    
    [self.tableV reloadData];
    [[SingletonClass Instance]setData:@""];
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView
                 cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    
    
    if (indexPath.section == 0 ){
    
        cell.textLabel.text =[self.todolist.todoos[indexPath.row] getTodo];

        return cell;
     
    }else if(indexPath.section ==1){
        cell.textLabel.text = [self.arrayImportant[indexPath.row]getTodo];

        return cell;
        
        }
    
    return cell;
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   
    if (section == 1) {
        return self.arrayImportant.count;
    }
   return [self.todolist getSize];
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section==0){
        return @"Tasks ToDo";
    }else if(section ==1){
        return @"Tasks Sensitive";
    }
    else return @"";
}
        

- (IBAction)deleteTodo: (UIButton *)sender{
   
    sender.selected = !sender.selected;
    
    if (self.arrayToDelete.count) {
        for (NSString *str in self.arrayToDelete) {
            [self.todolist.todoos removeObject:str];
        }
        for (NSString *string in self.arrayImportant) {
            [self.arrayImportant removeObject:string];
        }
        [self.arrayToDelete removeAllObjects];
        [self.tableV reloadData];
    
    }
}

- (IBAction)importantButtonA:(UIButton *)sender{
            
    if(self.todolist.todoos.count){
        
    NSString *str;
    for(str in self.todolist.todoos){
            [self.todolist.todoos removeObject:str];
            [self.arrayImportant addObject:str];
             [self.tableV reloadData];
    }
        [self.tableV reloadData];
        

    
    }

}
    
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.section == 0){
    [self.arrayToDelete addObject:self.todolist.todoos[indexPath.row]];
    }else{
    [self.arrayToDelete addObject:self.arrayImportant[indexPath.row]];
    }
   
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==0) {
    [self.arrayToDelete removeObject:self.todolist.todoos[indexPath.row]];

    }else{
    [self.arrayToDelete removeObject:self.arrayImportant[indexPath.row]];
       
    }
}

 
@end
        
    

