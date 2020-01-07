#import "ViewController.h"
#import <POD_TEST/POD_TEST.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@", [[[Service alloc]init] doSometing]);
}


@end
