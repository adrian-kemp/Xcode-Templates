#import "___FILEBASENAME___ViewController.h"

@interface ___FILEBASENAME___ViewController ()  <___FILEBASENAME___ViewDelegate>

@end

@implementation ___FILEBASENAME___ViewController

- (void)loadView {
    if(self.nibName || self.storyboard) {
        [super loadView];
    } else {
        self.view = [[___FILEBASENAME___View alloc] init];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.delegate = self;
}

@end
