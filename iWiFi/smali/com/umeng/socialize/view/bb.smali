.class Lcom/umeng/socialize/view/bb;
.super Landroid/webkit/WebChromeClient;
.source "OauthDialog.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/av;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/av;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/bb;->a:Lcom/umeng/socialize/view/av;

    .line 322
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 326
    const/16 v0, 0x5a

    if-ge p2, v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/umeng/socialize/view/bb;->a:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->a(Lcom/umeng/socialize/view/av;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/bb;->a:Lcom/umeng/socialize/view/av;

    invoke-static {v0}, Lcom/umeng/socialize/view/av;->e(Lcom/umeng/socialize/view/av;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
