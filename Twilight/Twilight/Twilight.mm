#line 1 "/Users/meilingrui/Desktop/Github_GLProjects/Delta-Team/Project Twilight/Twilight/Twilight/Twilight.xm"
#import <UIKit/UIKit.h>

#import "ExampleViewCollectionView.h"
#import "ModalViewController.h"
#import "ModalViewControllerWithoutScrollView.h"
#import "UIImage+ImageEffects.h"
#import "UINavigationController+MHDismissModalView.h"



@interface SBIconScrollView : UIView
@end

@interface SpringBoard : UIApplication
@end

@interface SBAppWindow : UIWindow
@end

#include <logos/logos.h>
#include <substrate.h>
@class SBIconScrollView; 
static void (*_logos_orig$_ungrouped$SBIconScrollView$touchesMoved$withEvent$)(SBIconScrollView*, SEL, NSSet *, id); static void _logos_method$_ungrouped$SBIconScrollView$touchesMoved$withEvent$(SBIconScrollView*, SEL, NSSet *, id); static void (*_logos_orig$_ungrouped$SBIconScrollView$touchesEnded$withEvent$)(SBIconScrollView*, SEL, NSSet *, UIEvent *); static void _logos_method$_ungrouped$SBIconScrollView$touchesEnded$withEvent$(SBIconScrollView*, SEL, NSSet *, UIEvent *); static void (*_logos_orig$_ungrouped$SBIconScrollView$touchesCancelled$withEvent$)(SBIconScrollView*, SEL, NSSet *, UIEvent *); static void _logos_method$_ungrouped$SBIconScrollView$touchesCancelled$withEvent$(SBIconScrollView*, SEL, NSSet *, UIEvent *); 

#line 20 "/Users/meilingrui/Desktop/Github_GLProjects/Delta-Team/Project Twilight/Twilight/Twilight/Twilight.xm"




float last;



static void _logos_method$_ungrouped$SBIconScrollView$touchesMoved$withEvent$(SBIconScrollView* self, SEL _cmd, NSSet * touches, id event) {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    if (last - point.y > 20.0f){
        
        
        SpringBoard *sb = (SpringBoard *)[UIApplication sharedApplication];
        UIWindow *iconWindow = sb.keyWindow;
        
                [UIView animateWithDuration:0.3 delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            [iconWindow setUserInteractionEnabled:NO];
            [iconWindow setAlpha:0.3f];
        } completion:^(BOOL finished) {
            [iconWindow setUserInteractionEnabled:YES];
        }];
        
        
        
        
        
        
        ModalViewController *modal = [[ModalViewController alloc] init];
        [modal.view setBackgroundColor:[UIColor yellowColor]];
        iconWindow.rootViewController = modal;
        



    }
    
    















    
    last = point.y;
    _logos_orig$_ungrouped$SBIconScrollView$touchesMoved$withEvent$(self, _cmd, touches,event);
}


static void _logos_method$_ungrouped$SBIconScrollView$touchesEnded$withEvent$(SBIconScrollView* self, SEL _cmd, NSSet * touches, UIEvent * event) {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    if (last - point.y > 20.0f){
        
        
        SpringBoard *sb = (SpringBoard *)[UIApplication sharedApplication];
        UIWindow *iconWindow = sb.keyWindow;
        
        [UIView animateWithDuration:0.3 delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            [iconWindow setUserInteractionEnabled:NO];
            [iconWindow setAlpha:1.0f];
        } completion:^(BOOL finished) {
            [iconWindow setUserInteractionEnabled:YES];
        }];
        
        
        
    }

}
static void _logos_method$_ungrouped$SBIconScrollView$touchesCancelled$withEvent$(SBIconScrollView* self, SEL _cmd, NSSet * touches, UIEvent * event){
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    if (last - point.y > 20.0f){
        
        
        SpringBoard *sb = (SpringBoard *)[UIApplication sharedApplication];
        UIWindow *iconWindow = sb.keyWindow;
        
        [UIView animateWithDuration:0.3 delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            [iconWindow setUserInteractionEnabled:NO];
            [iconWindow setAlpha:1.0f];
        } completion:^(BOOL finished) {
            [iconWindow setUserInteractionEnabled:YES];
        }];
        
        
        
    }

}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SBIconScrollView = objc_getClass("SBIconScrollView"); MSHookMessageEx(_logos_class$_ungrouped$SBIconScrollView, @selector(touchesMoved:withEvent:), (IMP)&_logos_method$_ungrouped$SBIconScrollView$touchesMoved$withEvent$, (IMP*)&_logos_orig$_ungrouped$SBIconScrollView$touchesMoved$withEvent$);MSHookMessageEx(_logos_class$_ungrouped$SBIconScrollView, @selector(touchesEnded:withEvent:), (IMP)&_logos_method$_ungrouped$SBIconScrollView$touchesEnded$withEvent$, (IMP*)&_logos_orig$_ungrouped$SBIconScrollView$touchesEnded$withEvent$);MSHookMessageEx(_logos_class$_ungrouped$SBIconScrollView, @selector(touchesCancelled:withEvent:), (IMP)&_logos_method$_ungrouped$SBIconScrollView$touchesCancelled$withEvent$, (IMP*)&_logos_orig$_ungrouped$SBIconScrollView$touchesCancelled$withEvent$);} }
#line 124 "/Users/meilingrui/Desktop/Github_GLProjects/Delta-Team/Project Twilight/Twilight/Twilight/Twilight.xm"
