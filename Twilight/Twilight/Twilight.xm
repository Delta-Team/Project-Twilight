#import <UIKit/UIKit.h>

// small header for SBIconScrollView
@interface SBIconScrollView : UIView
@end

%hook SBIconScrollView

float last;
// record last time touch's y position

-(void)touchesMoved:(NSSet *)touches withEvent:(id)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    if (last > point.y){
        // Meirtz, UI goes there.
    }
    last = point.y;
    %orig(touches,event);
}

%end

