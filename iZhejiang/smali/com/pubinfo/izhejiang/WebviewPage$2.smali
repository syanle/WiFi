.class Lcom/pubinfo/izhejiang/WebviewPage$2;
.super Ljava/lang/Thread;
.source "WebviewPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/WebviewPage;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/pubinfo/izhejiang/WebviewPage$2;->this$0:Lcom/pubinfo/izhejiang/WebviewPage;

    .line 77
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 81
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 83
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage$2;->this$0:Lcom/pubinfo/izhejiang/WebviewPage;

    # getter for: Lcom/pubinfo/izhejiang/WebviewPage;->authenUtils:Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/WebviewPage;->access$1(Lcom/pubinfo/izhejiang/WebviewPage;)Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/pubinfo/izhejiang/WebviewPage$2;->this$0:Lcom/pubinfo/izhejiang/WebviewPage;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/WebviewPage;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iwifi/sdk/protocol/impl/AuthenticatedMethodsUtils;->sync_getPortalUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "mPortalResult":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v2, "200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage$2;->this$0:Lcom/pubinfo/izhejiang/WebviewPage;

    # getter for: Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/WebviewPage;->access$0(Lcom/pubinfo/izhejiang/WebviewPage;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/pubinfo/izhejiang/WebviewPage$2;->this$0:Lcom/pubinfo/izhejiang/WebviewPage;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/WebviewPage;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 91
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 96
    :goto_1
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage$2;->this$0:Lcom/pubinfo/izhejiang/WebviewPage;

    # getter for: Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/WebviewPage;->access$0(Lcom/pubinfo/izhejiang/WebviewPage;)Landroid/webkit/WebView;

    move-result-object v1

    const-string v2, "file:///android_asset/404.html"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/WebviewPage$2;->this$0:Lcom/pubinfo/izhejiang/WebviewPage;

    # getter for: Lcom/pubinfo/izhejiang/WebviewPage;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/WebviewPage;->access$0(Lcom/pubinfo/izhejiang/WebviewPage;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/pubinfo/izhejiang/WebviewPage$2;->this$0:Lcom/pubinfo/izhejiang/WebviewPage;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/WebviewPage;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
