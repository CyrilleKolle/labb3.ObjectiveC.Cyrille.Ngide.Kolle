//
//  MyTableViewController.h
//  labb3.ObjectiveC.Cyrille.Ngide.Kolle
//
//  Created by Indigo´sDad on 2020-01-20.
//  Copyright © 2020 Indigo´sDad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDOList.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyTableViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIDatePicker *dateInput;

@property (weak, nonatomic) IBOutlet UITextField *InputTodo;
@property (nonatomic, retain) NSDate* date;
- (IBAction)createTodo:(id)sender;
@end

NS_ASSUME_NONNULL_END
