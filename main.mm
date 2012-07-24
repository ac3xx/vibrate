#import <AudioToolbox/AudioToolbox.h>

static void usage()
{
    fprintf(stdout,"vibrate: usage: vibrate [seconds]\n");
}

int main(int argc, char **argv, char **envp) {
    
    if (argc < 2) {
        usage();
        return -1;
    }
    
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
