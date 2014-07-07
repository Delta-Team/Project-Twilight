#import <UIKit/UIKit.h>

// small headers
@interface SBIconScrollView : UIView
@end

@interface SpringBoard : UIApplication
@end

@interface SBAppWindow : UIWindow
@end

// constant
#define upDelta 15.0f
#define animationDuration 0.3f
#define iconViewAlpha 0.3f

%hook SBIconScrollView

float last;
// record last time touch's y position

-(void)touchesMoved:(NSSet *)touches withEvent:(id)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    if (last - point.y > upDelta){
        // touch moved up 15px
        SpringBoard *sb = (SpringBoard *)[UIApplication sharedApplication];
        UIWindow *iconWindow = sb.keyWindow;
        [UIView animateWithDuration:animationDuration delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            [iconWindow setUserInteractionEnabled:NO];
            [iconWindow setAlpha:iconViewAlpha];
        } completion:^(BOOL finished) {
            [iconWindow setUserInteractionEnabled:YES];
        }];
        // icon fade...
        
        //Meirtz, Popover or somewhat else shows up there
    }
    
    /*                     ***DEPRECATED***
     dismiss and restore alpha to 1.0f in popover view class
     
     else if(last - point.y < 0.0f){
     // touch moved down
     SpringBoard *sb = (SpringBoard *)[UIApplication sharedApplication];
     UIWindow *iconWindow = sb.keyWindow;
     [UIView animateWithDuration:0.3 delay:0.0 options:UIViewAnimationOptionCurveEaseOut animations:^{
     [iconWindow setUserInteractionEnabled:NO];
     [iconWindow setAlpha:1.0f];
     } completion:^(BOOL finished) {
     [iconWindow setUserInteractionEnabled:YES];
     }];
     // icon show...
     
     //Meirtz, Popover or somewhat else dismiss there
     }
     */
    
    last = point.y;
    %orig(touches,event);
}

%end
