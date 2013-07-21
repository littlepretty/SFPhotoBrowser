SFPhotoBrowser
============================

A single ObjC class which let you browser full-size photos supporting zooming,paging,and smooth transforming animation between thumbnail imageviews. 


![ScreenShot](https://raw.github.com/JagieChen/SFPhotoBrowser/master/snapshot1.PNG)
![ScreenShot](https://raw.github.com/JagieChen/SFPhotoBrowser/master/snapshot2.PNG)




Features
----------------
1.support smooth transforming animation between thumbnail imageviews.

2.support local or remote full-size photos

3.support cache of the full-size photos

4.support any device interface orientation and animate re-layout when orientation changes

5.double-tap to zoom in/out the clicked area of the full-size image

6.a single tap to shrink the full-size photo to it's original thumbnail imageview with animation

7.simple and friendly API 

8.this class using [AFNetworking](https://github.com/AFNetworking/AFNetworking) and [MBProgressHUD](https://github.com/jdg/MBProgressHUD) but you can easily remove the dependence.


Shortage
----------------
If the UIViewController containing the thumbnail image views changes it's interface orientation while the user is browsing full-size photos,then the user taps the current photo,the full-size photo just simply disappears without any transforming animation.It's a rare occasion,you can forbid the UIViewController to change interface orientation when presenting full-size photos.


How to use
----------------
1.include AFNetworking and MBProgressHUD classes in your  your Xcode project.

2.include "SFPhotoBrowser.h" and "SFPhotoBrowser.m" in your Xcode project.

3.


    [SFPhotoBrowser animateShowBigPhotosFromThumbImageViews:self.view.subviews fromViewController:self bigPhotoesURL:self.fullImagesURLs curIndex:iv.tag didEndShowing:^{
            NSLog(@"SFPhotoesBrowser is showing");
            
    } didEndDismissing:^{
             NSLog(@"SFPhotoesBrowser is dismissed");
    }];



