//
//  ViewProfileVC.m
//  PerfectFIT
//
//  Created by AJ on 17/07/17.
//  Copyright © 2017 AJ. All rights reserved.
//

#import "ViewProfileVC.h"

@interface ViewProfileVC () {
    __weak IBOutlet UIScrollView *profileSV;
    __weak IBOutlet UIImageView *profileImv;
    __weak IBOutlet UILabel *nameLbl;
    __weak IBOutlet UILabel *countryLbl;
    __weak IBOutlet UIImageView *flagImv;
    
    __weak IBOutlet UIImageView *ratingImv;
    __weak IBOutlet UILabel *ratingLbl;
    __weak IBOutlet UILabel *estimateLbl;
    __weak IBOutlet UILabel *staticSpecializationLbl;
    __weak IBOutlet UILabel *specializationLbl;
    __weak IBOutlet UIScrollView *calenderSV;
    __weak IBOutlet UILabel *staticAboutMeLbl;
    __weak IBOutlet UILabel *aboutMeLbl;
    __weak IBOutlet UILabel *staticCoachingLbl;
    __weak IBOutlet UILabel *coachingLbl;
    __weak IBOutlet UILabel *staticLocationLbl;
    __weak IBOutlet UILabel *locationLbl;
    __weak IBOutlet UILabel *statusLbl;
    __weak IBOutlet UILabel *staticBioLbl;
    __weak IBOutlet UILabel *bioLbl;
    __weak IBOutlet NSLayoutConstraint *heightConstant;
}

@end

@implementation ViewProfileVC

#pragma mark
#pragma mark - View Did Load
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewDidLayoutSubviews {
    heightConstant.constant =bioLbl.frame.origin.y + bioLbl.frame.size.height + 20;
}


#pragma mark
#pragma mark - Back Action
- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark
#pragma mark - Edit Action
- (IBAction)editAction:(id)sender {
}

#pragma mark
#pragma mark - Plans Action
- (IBAction)plansAction:(id)sender {
}

#pragma mark
#pragma mark - Booking Action
- (IBAction)bookingAction:(id)sender {
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
