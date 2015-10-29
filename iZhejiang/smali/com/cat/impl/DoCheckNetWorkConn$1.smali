.class Lcom/cat/impl/DoCheckNetWorkConn$1;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "DoCheckNetWorkConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/impl/DoCheckNetWorkConn;-><init>(Lcom/cat/protocol/DoCheckNetWorkInterface;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/impl/DoCheckNetWorkConn;


# direct methods
.method constructor <init>(Lcom/cat/impl/DoCheckNetWorkConn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/impl/DoCheckNetWorkConn$1;->this$0:Lcom/cat/impl/DoCheckNetWorkConn;

    .line 31
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 42
    iget-object v0, p0, Lcom/cat/impl/DoCheckNetWorkConn$1;->this$0:Lcom/cat/impl/DoCheckNetWorkConn;

    # getter for: Lcom/cat/impl/DoCheckNetWorkConn;->m_iCallback:Lcom/cat/protocol/DoCheckNetWorkInterface;
    invoke-static {v0}, Lcom/cat/impl/DoCheckNetWorkConn;->access$0(Lcom/cat/impl/DoCheckNetWorkConn;)Lcom/cat/protocol/DoCheckNetWorkInterface;

    move-result-object v0

    invoke-static {p1}, Lcom/cat/impl/DoCheckNetWorkConn;->FormatStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cat/protocol/DoCheckNetWorkInterface;->doCheckNetWorkErr(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/ta/mvc/common/TARequest;

    invoke-direct {v0}, Lcom/ta/mvc/common/TARequest;-><init>()V

    .line 35
    .local v0, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TARequest;->setData(Ljava/lang/Object;)V

    .line 36
    iget-object v1, p0, Lcom/cat/impl/DoCheckNetWorkConn$1;->this$0:Lcom/cat/impl/DoCheckNetWorkConn;

    # getter for: Lcom/cat/impl/DoCheckNetWorkConn;->m_iCallback:Lcom/cat/protocol/DoCheckNetWorkInterface;
    invoke-static {v1}, Lcom/cat/impl/DoCheckNetWorkConn;->access$0(Lcom/cat/impl/DoCheckNetWorkConn;)Lcom/cat/protocol/DoCheckNetWorkInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cat/protocol/DoCheckNetWorkInterface;->doCheckNetWorkSucc(Ljava/lang/String;)V

    .line 37
    return-void
.end method
