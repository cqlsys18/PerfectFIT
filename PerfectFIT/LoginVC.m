//
//  LoginVC.m
//  PerfectFIT
//
//  Created by AJ on 13/07/17.
//  Copyright © 2017 AJ. All rights reserved.
//

#import "LoginVC.h"

@interface LoginVC () {
    
    __weak IBOutlet UILabel *titlelbl;
    __weak IBOutlet UITextField *emailTF;
    __weak IBOutlet UITextField *passwordTF;
}

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)loginAction:(id)sender {
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"TabBarVC"];
    self.view.window.rootViewController = view;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
