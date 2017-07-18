//
//  HomeVC.m
//  PerfectFIT
//
//  Created by AJ on 13/07/17.
//  Copyright © 2017 AJ. All rights reserved.
//

#import "HomeVC.h"

@interface HomeVC ()<UICollectionViewDelegate,UICollectionViewDataSource> {
    
    __weak IBOutlet UIButton *titleBtn;
    __weak IBOutlet UIButton *addBtn;
    __weak IBOutlet UIButton *filterBtn;
    __weak IBOutlet UISearchBar *homeSearchBar;
    __weak IBOutlet UICollectionView *homeCV;
}

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    homeSearchBar.userInteractionEnabled = NO;
}

#pragma mark 
#pragma mark - Title Action
- (IBAction)titleAction:(id)sender {
}

#pragma mark
#pragma mark - Add Action
- (IBAction)addAction:(id)sender {
}

#pragma mark
#pragma mark - Filter Action
- (IBAction)filterAction:(id)sender {
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"homeCell";
    UICollectionViewCell *cell = (UICollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];

    return cell;
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
