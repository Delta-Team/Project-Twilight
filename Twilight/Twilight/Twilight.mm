#line 1 "/Users/BlueCocoa/Desktop/My Projects/Project-Twilight/Twilight/Twilight/Twilight.xm"
#import <UIKit/UIKit.h>


@interface SBIconScrollView : UIView
@end

@interface SpringBoard : UIApplication
@end

@interface SBAppWindow : UIWindow
@end

#include <logos/logos.h>
#include <substrate.h>
@class SBIconScrollView; 
static void (*_logos_orig$_ungrouped$SBIconScrollView$touchesMoved$withEvent$)(SBIconScrollView*, SEL, NSSet *, id); static void _logos_method$_ungrouped$SBIconScrollView$touchesMoved$withEvent$(SBIconScrollView*, SEL, NSSet *, id); 

#line 13 "/Users/BlueCocoa/Desktop/My Projects/Project-Twilight/Twilight/Twilight/Twilight.xm"


float last;



static void _logos_method$_ungrouped$SBIconScrollView$touchesMoved$withEvent$(SBIconScrollView* self, SEL _cmd, NSSet * touches, id event) {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    if (last - point.y > 15.0f){
        
        SpringBoard *sb = (SpringBoard *)[UIApplication sharedApplication];
        UIWindow *iconWindow = sb.keyWindow;
        [UIView animateWithDuration:0.3 delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            [iconWindow setUserInteractionEnabled:NO];
            [iconWindow setAlpha:0.3f];
        } completion:^(BOOL finished) {
            [iconWindow setUserInteractionEnabled:YES];
        }];
        
        
        
    }
    
    

















    
    last = point.y;
    _logos_orig$_ungrouped$SBIconScrollView$touchesMoved$withEvent$(self, _cmd, touches,event);
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconScrollView = objc_getClass("SBIconScrollView"); MSHookMessageEx(_logos_class$_ungrouped$SBIconScrollView, @selector(touchesMoved:withEvent:), (IMP)&_logos_method$_ungrouped$SBIconScrollView$touchesMoved$withEvent$, (IMP*)&_logos_orig$_ungrouped$SBIconScrollView$touchesMoved$withEvent$);} }
#line 61 "/Users/BlueCocoa/Desktop/My Projects/Project-Twilight/Twilight/Twilight/Twilight.xm"
