.class Lcom/pubinfo/izhejiang/WebviewPage$1;
.super Landroid/os/Handler;
.source "WebviewPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/WebviewPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/WebviewPage;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/WebviewPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/WebviewPage$1;->this$0:Lcom/pubinfo/izhejiang/WebviewPage;

    .line 171
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/pubinfo/izhejiang/WebviewPage$1;->this$0:Lcom/pubinfo/izhejiang/WebviewPage;

    # getter for: Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/WebviewPage;->access$0(Lcom/pubinfo/izhejiang/WebviewPage;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "file:///android_asset/404.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/WebviewPage$1;->this$0:Lcom/pubinfo/izhejiang/WebviewPage;

    # getter for: Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/WebviewPage;->access$0(Lcom/pubinfo/izhejiang/WebviewPage;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage$1;->this$0:Lcom/pubinfo/izhejiang/WebviewPage;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/WebviewPage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
