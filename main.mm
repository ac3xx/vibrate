#import <AudioToolbox/AudioToolbox.h>

int main(int argc, char **argv, char **envp) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSDate *now = [NSDate date];
	char *s = argv[1];
	int num = atoi(s);
	while ([[NSDate date] timeIntervalSinceDate:now]<=num) {
		AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
	}
	[pool drain];
	return 0;
}
