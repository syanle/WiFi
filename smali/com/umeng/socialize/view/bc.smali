.class Lcom/umeng/socialize/view/bc;
.super Lcom/umeng/socialize/view/av$a;
.source "OauthDialog.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/av;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/av;Lcom/umeng/socialize/view/av;)V
    .locals 1

    .prologue
    .line 1
    iput-object p2, p0, Lcom/umeng/socialize/view/bc;->a:Lcom/umeng/socialize/view/av;

    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/view/av$a;-><init>(Lcom/umeng/socialize/view/av;Lcom/umeng/socialize/view/av$a;)V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    .prologue
    .line 412
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 413
    return-void
.end method
