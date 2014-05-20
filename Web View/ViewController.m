//
//  ViewController.m
//  Web View
//
//  Created by Muhammed on 19.05.2014.
//  Copyright (c) 2014 Muhammed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //uygulama ilk açıldığında activity indicator'ın görünmemesini sağlıyor
    [_activityIndicator stopAnimating];
    
    //web view'e delegatelerine erişebilmesi için, bu class'a bakmasını söylüyorum.
    _webView.delegate=self;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

- (IBAction)btnTwitter:(id)sender {
    //twitter adresimi yüklüyor
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.twitter.com/oz_muhammed" ]]];
}
- (IBAction)btnAboutMe:(id)sender {
    //benim verdiğim html string'i yüklüyor
    [_webView loadHTMLString:@"Hi, <br> My name is <b>Muhammed</b> <br><br>To see detailed information, please visit : http://kod5.org/yazar/muhammed-ozdemir/ " baseURL:nil];
}

- (IBAction)btnGoogle:(id)sender {
    //google'ı yüklüyor
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.google.com" ]]];
}

- (IBAction)btnReload:(id)sender {
    //mevcut sayfayı yeniden yüklüyor.
    [_webView reload];
}

- (IBAction)btnStop:(id)sender {
    //yüklenmekte olan sayfanın yüklenmesini iptal ediyor.
    [_webView stopLoading];
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    //web view bir sayfayı yüklemeye başlayınca bu metoda düşer.
    //bende burada activity indicator'ı çalıştırmaya başlıyorum.
    [_activityIndicator startAnimating];
    
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    //web view bir sayfayı yüklemeyi bitirdiğinde bu metoda düşer.
    //bende burada activity indicator'ı çalıştırmayı bitiriyorum.
    [_activityIndicator stopAnimating];

}

@end
