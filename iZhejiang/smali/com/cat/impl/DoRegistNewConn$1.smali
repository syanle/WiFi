.class Lcom/cat/impl/DoRegistNewConn$1;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "DoRegistNewConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/impl/DoRegistNewConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoRegistNewInterface;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/impl/DoRegistNewConn;


# direct methods
.method constructor <init>(Lcom/cat/impl/DoRegistNewConn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/impl/DoRegistNewConn$1;->this$0:Lcom/cat/impl/DoRegistNewConn;

    .line 62
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 73
    iget-object v0, p0, Lcom/cat/impl/DoRegistNewConn$1;->this$0:Lcom/cat/impl/DoRegistNewConn;

    # getter for: Lcom/cat/impl/DoRegistNewConn;->m_iCallback:Lcom/cat/protocol/DoRegistNewInterface;
    invoke-static {v0}, Lcom/cat/impl/DoRegistNewConn;->access$0(Lcom/cat/impl/DoRegistNewConn;)Lcom/cat/protocol/DoRegistNewInterface;

    move-result-object v0

    invoke-static {p1}, Lcom/cat/impl/DoRegistNewConn;->FormatStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cat/protocol/DoRegistNewInterface;->doRegistNewErr(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/ta/mvc/common/TARequest;

    invoke-direct {v0}, Lcom/ta/mvc/common/TARequest;-><init>()V

    .line 66
    .local v0, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TARequest;->setData(Ljava/lang/Object;)V

    .line 67
    iget-object v1, p0, Lcom/cat/impl/DoRegistNewConn$1;->this$0:Lcom/cat/impl/DoRegistNewConn;

    # getter for: Lcom/cat/impl/DoRegistNewConn;->m_iCallback:Lcom/cat/protocol/DoRegistNewInterface;
    invoke-static {v1}, Lcom/cat/impl/DoRegistNewConn;->access$0(Lcom/cat/impl/DoRegistNewConn;)Lcom/cat/protocol/DoRegistNewInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cat/protocol/DoRegistNewInterface;->doRegistNewSucc(Ljava/lang/String;)V

    .line 68
    return-void
.end method
