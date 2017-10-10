#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    WKWebView *webView = [[WKWebView alloc] init];

    //replace with docusign instance url here i.e. https://demo.docusign.net/...
    NSURL *url = [NSURL URLWithString:@"https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select"];
    //currently displaying a 'select' html element, which is working

    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    [self.view addSubview:webView];

    [self fillSuperview:webView];
}

#pragma mark - Private

- (void)fillSuperview:(UIView *)childView;
{
    UIView *superview = childView.superview;

    childView.translatesAutoresizingMaskIntoConstraints = NO;

    [childView.topAnchor constraintEqualToAnchor:superview.topAnchor].active = YES;
    [childView.bottomAnchor constraintEqualToAnchor:superview.bottomAnchor].active = YES;
    [childView.leftAnchor constraintEqualToAnchor:superview.leftAnchor].active = YES;
    [childView.rightAnchor constraintEqualToAnchor:superview.rightAnchor].active = YES;
}


@end
