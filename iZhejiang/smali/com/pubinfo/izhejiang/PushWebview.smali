.class public Lcom/pubinfo/izhejiang/PushWebview;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "PushWebview.java"


# instance fields
.field backButton:Landroid/widget/ImageButton;

.field confirmButton:Landroid/widget/LinearLayout;

.field title:Landroid/widget/TextView;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 29
    invoke-super {p0, p1}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/PushWebview;->setContentView(I)V

    .line 32
    const v1, 0x7f0a002c

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/PushWebview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->backButton:Landroid/widget/ImageButton;

    .line 33
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->backButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/pubinfo/izhejiang/PushWebview$1;

    invoke-direct {v2, p0}, Lcom/pubinfo/izhejiang/PushWebview$1;-><init>(Lcom/pubinfo/izhejiang/PushWebview;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v1, 0x7f0a002e

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/PushWebview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->confirmButton:Landroid/widget/LinearLayout;

    .line 41
    const v1, 0x7f0a002d

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/PushWebview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->title:Landroid/widget/TextView;

    .line 42
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->title:Landroid/widget/TextView;

    const/high16 v2, 0x7f060000

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/PushWebview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->confirmButton:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 45
    const v1, 0x7f0a00bb

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/PushWebview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->webView:Landroid/webkit/WebView;

    .line 47
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 48
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 49
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 50
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 51
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 52
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 53
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 54
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/PushWebview;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/pubinfo/izhejiang/PushWebview;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
