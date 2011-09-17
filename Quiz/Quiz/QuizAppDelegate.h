//
//  QuizAppDelegate.h
//  Quiz
//
//  Created by Jason on 9/16/11.
//  Copyright 2011 jayray.net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizAppDelegate : NSObject <UIApplicationDelegate> { 
    int currentQuestionIndex;
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
}


@property (nonatomic, retain) IBOutlet UIWindow *window;
-(IBAction)showQuestion:(id)sender;
-(IBAction)showAnswer:(id)sender;
@end
