<<<<<<< HEAD
#line 1 "/Users/meilingrui/Desktop/Github_GLProjects/Delta-Team/Project Twilight/Twilight/Twilight/Twilight.xm"
=======
#line 1 "/Users/BlueCocoa/Desktop/My Projects/Project-Twilight/Twilight/Twilight/Twilight.xm"
>>>>>>> FETCH_HEAD
#import <UIKit/UIKit.h>


@interface SBIconScrollView : UIView
@end

<<<<<<< HEAD
=======
@interface SpringBoard : UIApplication
@end

@interface SBAppWindow : UIWindow
@end

>>>>>>> FETCH_HEAD
#include <logos/logos.h>
#include <substrate.h>
@class SBIconScrollView; 
static void (*_logos_orig$_ungrouped$SBIconScrollView$touchesMoved$withEvent$)(SBIconScrollView*, SEL, NSSet *, id); static void _logos_method$_ungrouped$SBIconScrollView$touchesMoved$withEvent$(SBIconScrollView*, SEL, NSSet *, id); 

<<<<<<< HEAD
#line 7 "/Users/meilingrui/Desktop/Github_GLProjects/Delta-Team/Project Twilight/Twilight/Twilight/Twilight.xm"
=======
#line 13 "/Users/BlueCocoa/Desktop/My Projects/Project-Twilight/Twilight/Twilight/Twilight.xm"
>>>>>>> FETCH_HEAD


float last;



static void _logos_method$_ungrouped$SBIconScrollView$touchesMoved$withEvent$(SBIconScrollView* self, SEL _cmd, NSSet * touches, id event) {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
<<<<<<< HEAD
    if (last > point.y){
=======
    if (last - point.y > 10.0f){
        
        SpringBoard *sb = (SpringBoard *)[UIApplication sharedApplication];
        UIWindow *iconWindow = sb.keyWindow;
        [UIView animateWithDuration:0.3 delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            [iconWindow setUserInteractionEnabled:NO];
            [iconWindow setAlpha:0.3f];
        } completion:^(BOOL finished) {
            [iconWindow setUserInteractionEnabled:YES];
        }];
        
        
        
    }else if(last - point.y < 0.0f){
        
        SpringBoard *sb = (SpringBoard *)[UIApplication sharedApplication];
        UIWindow *iconWindow = sb.keyWindow;
        [UIView animateWithDuration:0.3 delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            [iconWindow setUserInteractionEnabled:NO];
            [iconWindow setAlpha:1.0f];
        } completion:^(BOOL finished) {
            [iconWindow setUserInteractionEnabled:YES];
        }];
        
        
>>>>>>> FETCH_HEAD
        
    }
    last = point.y;
    _logos_orig$_ungrouped$SBIconScrollView$touchesMoved$withEvent$(self, _cmd, touches,event);
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconScrollView = objc_getClass("SBIconScrollView"); MSHookMessageEx(_logos_class$_ungrouped$SBIconScrollView, @selector(touchesMoved:withEvent:), (IMP)&_logos_method$_ungrouped$SBIconScrollView$touchesMoved$withEvent$, (IMP*)&_logos_orig$_ungrouped$SBIconScrollView$touchesMoved$withEvent$);} }
<<<<<<< HEAD
#line 25 "/Users/meilingrui/Desktop/Github_GLProjects/Delta-Team/Project Twilight/Twilight/Twilight/Twilight.xm"
=======
#line 55 "/Users/BlueCocoa/Desktop/My Projects/Project-Twilight/Twilight/Twilight/Twilight.xm"
>>>>>>> FETCH_HEAD
