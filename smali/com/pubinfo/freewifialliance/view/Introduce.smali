.class public Lcom/pubinfo/freewifialliance/view/Introduce;
.super Lcom/pubinfo/wifi_core/AppBaseActivity;
.source "Introduce.java"


# instance fields
.field refreshButton:Landroid/widget/ImageButton;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/AppBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/pubinfo/wifi_core/AppBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v1, 0x7f030006

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/Introduce;->setContentView(I)V

    .line 30
    const v1, 0x7f0c005b

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/Introduce;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/Introduce;->refreshButton:Landroid/widget/ImageButton;

    .line 31
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/Introduce;->refreshButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 33
    const v1, 0x7f0c001c

    invoke-virtual {p0, v1}, Lcom/pubinfo/freewifialliance/view/Introduce;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/view/Introduce;->webView:Landroid/webkit/WebView;

    .line 34
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/Introduce;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 35
    .local v0, "wSet":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 37
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/Introduce;->webView:Landroid/webkit/WebView;

    const-string v2, "file:///android_asset/baobenjs.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 39
    return-void
.end method
