//
//  PBViewController.m
//  SFPhotoesBrowser
//
//  Created by Jagie on 20/07/13.
//  Copyright (c) 2013 Jagie. All rights reserved.
//

#import "PBViewController.h"
#import "AFNetworking.h"
#import "SFPhotoBrowser.h"
@interface PBViewController ()
@property(nonatomic,strong) NSArray * thumbImageURLs;
@property(nonatomic,strong) NSArray * fullImagesURLs;

@end

@implementation PBViewController

-(void)onTap:(UIGestureRecognizer *)g{
    UIImageView *iv = (UIImageView *)g.view;
    if (iv.image != nil) {
        [SFPhotoBrowser animateShowBigPhotosFromThumbImageViews:self.view.subviews fromViewController:self bigPhotoesURL:self.fullImagesURLs curIndex:iv.tag didEndShowing:^{
            NSLog(@"SFPhotoesBrowser is showing");
            
        } didEndDismissing:^{
             NSLog(@"SFPhotoesBrowser is dismissed");
        }];
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskAll; // etc
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.thumbImageURLs = @[
                            @"http://pic1.kaixin001.com.cn/pic/app/54/56/1088_189545657_repaste-news.jpeg",
                            @"http://pic1.kaixin001.com.cn/pic/app/31/34/1088_189313483_repaste-news.jpeg",
                            @"http://pic1.kaixin001.com.cn/pic/repaste/11/8/46574510_959110805_wapa-c3309a1d-0.jpeg",
                            @"http://pic1.kaixin001.com.cn/pic/app/43/97/100040252_189439723_record-w.jpeg",
                            ];
    
    self.fullImagesURLs = @[@"http://image.xinli001.com/20130719/233500e8c8a3f6407a130f.jpg",
                            @"http://image.xinli001.com/20130713/113938c16978d2a74a9343.jpg!600",
                            @"http://pic1.kaixin001.com.cn/pic/repaste/11/8/46574510_959110805_rotate-189f5f0f-0.jpeg",
                            @"http://logo.kaixin001.com.cn/pic/app/43/97/100040252_189439722_rating.jpeg",
                            ];
    
    for (int i = 0;i < 4;i++) {
        UIImageView *iv = self.view.subviews[i];
        iv.userInteractionEnabled = YES;
        UITapGestureRecognizer *g = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTap:)];
        [iv addGestureRecognizer:g];
        iv.tag = i;
        
        [iv setImageWithURL:[NSURL URLWithString:self.thumbImageURLs[i]]];
        
       
    }
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
