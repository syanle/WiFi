.class Lcom/cat/impl/DoSsidInfoConn$1;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "DoSsidInfoConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/impl/DoSsidInfoConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoSsidInfoInterface;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/impl/DoSsidInfoConn;


# direct methods
.method constructor <init>(Lcom/cat/impl/DoSsidInfoConn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/impl/DoSsidInfoConn$1;->this$0:Lcom/cat/impl/DoSsidInfoConn;

    .line 44
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 55
    iget-object v0, p0, Lcom/cat/impl/DoSsidInfoConn$1;->this$0:Lcom/cat/impl/DoSsidInfoConn;

    # getter for: Lcom/cat/impl/DoSsidInfoConn;->m_iCallback:Lcom/cat/protocol/DoSsidInfoInterface;
    invoke-static {v0}, Lcom/cat/impl/DoSsidInfoConn;->access$0(Lcom/cat/impl/DoSsidInfoConn;)Lcom/cat/protocol/DoSsidInfoInterface;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/cat/protocol/DoSsidInfoInterface;->doSsidInfoErr(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/ta/mvc/common/TARequest;

    invoke-direct {v0}, Lcom/ta/mvc/common/TARequest;-><init>()V

    .line 48
    .local v0, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TARequest;->setData(Ljava/lang/Object;)V

    .line 49
    iget-object v1, p0, Lcom/cat/impl/DoSsidInfoConn$1;->this$0:Lcom/cat/impl/DoSsidInfoConn;

    # getter for: Lcom/cat/impl/DoSsidInfoConn;->m_iCallback:Lcom/cat/protocol/DoSsidInfoInterface;
    invoke-static {v1}, Lcom/cat/impl/DoSsidInfoConn;->access$0(Lcom/cat/impl/DoSsidInfoConn;)Lcom/cat/protocol/DoSsidInfoInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cat/protocol/DoSsidInfoInterface;->doSsidInfoSucc(Ljava/lang/String;)V

    .line 50
    return-void
.end method
