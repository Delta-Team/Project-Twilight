#include <Foundation/Foundation.h>
#include <UIKit/UIKit.h>


@interface SBWindow : NSObject {
	int _jailBehavior;
}

@end

%hook SBWindow

%end