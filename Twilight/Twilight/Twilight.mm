#line 1 "/Users/meilingrui/Desktop/Github_GLProjects/Delta-Team/Project Twilight/Twilight/Twilight/Twilight.xm"
#import <UIKit/UIKit.h>


@interface SBIconScrollView : UIView
@end

#include <logos/logos.h>
#include <substrate.h>
@class SBIconScrollView; 
static void (*_logos_orig$_ungrouped$SBIconScrollView$touchesMoved$withEvent$)(SBIconScrollView*, SEL, NSSet *, id); static void _logos_method$_ungrouped$SBIconScrollView$touchesMoved$withEvent$(SBIconScrollView*, SEL, NSSet *, id); 

#line 7 "/Users/meilingrui/Desktop/Github_GLProjects/Delta-Team/Project Twilight/Twilight/Twilight/Twilight.xm"


float last;



static void _logos_method$_ungrouped$SBIconScrollView$touchesMoved$withEvent$(SBIconScrollView* self, SEL _cmd, NSSet * touches, id event) {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    if (last > point.y){
        
    }
    last = point.y;
    _logos_orig$_ungrouped$SBIconScrollView$touchesMoved$withEvent$(self, _cmd, touches,event);
}



static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconScrollView = objc_getClass("SBIconScrollView"); MSHookMessageEx(_logos_class$_ungrouped$SBIconScrollView, @selector(touchesMoved:withEvent:), (IMP)&_logos_method$_ungrouped$SBIconScrollView$touchesMoved$withEvent$, (IMP*)&_logos_orig$_ungrouped$SBIconScrollView$touchesMoved$withEvent$);} }
#line 25 "/Users/meilingrui/Desktop/Github_GLProjects/Delta-Team/Project Twilight/Twilight/Twilight/Twilight.xm"
