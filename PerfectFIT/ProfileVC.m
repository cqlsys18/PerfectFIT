//
//  ProfileVC.m
//  PerfectFIT
//
//  Created by AJ on 13/07/17.
//  Copyright © 2017 AJ. All rights reserved.
//

#import "ProfileVC.h"

@interface ProfileVC ()<UITableViewDelegate,UITableViewDataSource> {
    
    __weak IBOutlet UITableView *profileTV;
    NSMutableArray *profileArr;
}

@end

@implementation ProfileVC


#pragma mark
#pragma mark - View Did Load
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    profileTV.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    profileTV.estimatedRowHeight = UITableViewAutomaticDimension;

    profileArr  = [[NSMutableArray alloc]initWithArray:[NSArray arrayWithObjects:@{@"name" : @"", @"value" : @[@{@"title" : @"Home"}]},@{@"name" : @"", @"value" : @[@{@"title" : @"Session Tracking"},@{@"title" : @"Ratings and Reviews"},@{@"title" : @"Payment History"}]},@{@"name" : @"", @"value" : @[@{@"title" : @"Become a trainer"}]}, nil]];
}

#pragma mark
#pragma mark - Option Action

- (IBAction)optionAction:(id)sender {
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewProfileVC"];
    view.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:view animated:YES];
}
#pragma mark
#pragma mark - table view datasource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[[profileArr objectAtIndex:section]objectForKey:@"value"]count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        
         UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"profileIndentifier"];
        
        if (cell == nil) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"profileIndentifier"];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        UIImageView *profileImv      = [cell.contentView viewWithTag:100];
        profileImv.image = [UIImage imageNamed:@"PROFILEDUMMYICN"];
        profileImv.layer.cornerRadius = profileImv.frame.size.width/2;
        profileImv.clipsToBounds      = YES;
        UILabel *nameLbl      = [cell.contentView viewWithTag:200];
        nameLbl.text          = @"Roman Keller";
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

        return cell;
    }else {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellIndentifier"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellIndentifier"];
    }
    cell.selectionStyle     = UITableViewCellSelectionStyleNone;
        NSArray *valueArr = [[profileArr objectAtIndex:indexPath.section]objectForKey:@"value"];

        UILabel *nameLbl = [cell.contentView viewWithTag:300];
        nameLbl.text = [[valueArr objectAtIndex:indexPath.row]objectForKey:@"title"];

//    UIView *subView           = [[UIView alloc]initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 25.0)];
//    subView.backgroundColor   = [UIColor whiteColor];
//    
//    CGRect frame = [tableView rectForRowAtIndexPath:indexPath];
//    
//    
//    UILabel *nameLB  = [[UILabel alloc]initWithFrame:CGRectMake(40, 0, tableView.frame.size.width-50, frame.size.height)];
//    nameLB.text      = [[valueArr objectAtIndex:indexPath.row]objectForKey:@"title"];
//    nameLB.numberOfLines = 2;
//    nameLB.textColor = [UIColor darkGrayColor];
//    
//    [subView addSubview: nameLB];
//    [cell addSubview:subView];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
    }

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return profileArr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
//    if (section == 0) {
//        return 0;
//    }
    return 26.0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    UIView *localView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 22)];
    localView.backgroundColor = [UIColor lightGrayColor];
//    
//    UILabel *artistlbl = [[UILabel alloc] initWithFrame:CGRectMake(10, 6, localView.frame.size.width-100, 20)];
//    //[artistlbl setFont:[UIFont fontWithName:@"" size:16.0]];
//    NSString *artistStr = [[MenuArray objectAtIndex:section]objectForKey:@"name"];
//    artistlbl.textColor = [UIColor blackColor];
//    if (SCREEN_WIDTH == 320) {
//        artistlbl.font = [UIFont fontWithName:@"AxureHandwriting-Bold" size:16.0];
//    }else {
//        artistlbl.font = [UIFont fontWithName:@"AxureHandwriting-Bold" size:18.0];
//    }
//    //artistlbl.font = [UIFont fontWithName:@"AxureHandwriting-Bold" size:14.0];
//    [artistlbl setText:artistStr];
//    UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 2)];
//    lineView.backgroundColor = [UIColor lightGrayColor];
//    if (!(section == 0)) {
//        [localView addSubview:lineView];
//    }
//    [localView addSubview:artistlbl];
    return localView;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewProfileVC"];
        view.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:view animated:YES];
    }
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
