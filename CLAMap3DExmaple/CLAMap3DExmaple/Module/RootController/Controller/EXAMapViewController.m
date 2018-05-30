//
//  EXAMapViewController.m
//  CLAMap2DExmaple
//
//  Created by Cain Luo on 2018/5/29.
//  Copyright © 2018年 Cain Luo. All rights reserved.
//

#import "EXAMapViewController.h"
#import "EXAMapViewModel.h"
#import "EXAMapDelegate.h"

@interface EXAMapViewController ()

@property (nonatomic, strong) EXAMapViewModel *ex_aMapViewModel;
@property (nonatomic, strong) EXAMapDelegate  *ex_aMapDelegate;

@end

@implementation EXAMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"高德3D地图";
    
    [self cl_setMapViewDelegate:self.ex_aMapDelegate];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    [self ex_addConstraintsWithSuperView];
}

- (EXAMapViewModel *)ex_aMapViewModel {
    
    CL_GET_METHOD_RETURN_OBJC(_ex_aMapViewModel);
    
    _ex_aMapViewModel = [[EXAMapViewModel alloc] initAMapViewModelWithController:self];
    
    return _ex_aMapViewModel;
}

- (EXAMapDelegate *)ex_aMapDelegate {
    
    CL_GET_METHOD_RETURN_OBJC(_ex_aMapDelegate);
    
    _ex_aMapDelegate = [[EXAMapDelegate alloc] initAMapDelegateWithViewModel:self.ex_aMapViewModel];
    
    return _ex_aMapDelegate;
}

- (void)ex_addConstraintsWithSuperView {
    
    self.cl_mapView.showsUserLocation = YES;
    self.cl_mapView.userTrackingMode  = MAUserTrackingModeFollow;
    
    [self.cl_mapView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        if (@available(iOS 11.0, *)) {
            
            make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
            make.left.equalTo(self.view.mas_safeAreaLayoutGuideLeft);
            make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
            make.right.equalTo(self.view.mas_safeAreaLayoutGuideRight);
        } else {
            
            (void)make.edges;
        }
    }];
}

@end
