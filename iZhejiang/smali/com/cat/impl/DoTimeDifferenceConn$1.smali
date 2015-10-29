.class Lcom/cat/impl/DoTimeDifferenceConn$1;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "DoTimeDifferenceConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/impl/DoTimeDifferenceConn;-><init>(Ljava/lang/String;Lcom/cat/protocol/DoTimeDifferenceInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/impl/DoTimeDifferenceConn;


# direct methods
.method constructor <init>(Lcom/cat/impl/DoTimeDifferenceConn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/impl/DoTimeDifferenceConn$1;->this$0:Lcom/cat/impl/DoTimeDifferenceConn;

    .line 33
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 44
    iget-object v0, p0, Lcom/cat/impl/DoTimeDifferenceConn$1;->this$0:Lcom/cat/impl/DoTimeDifferenceConn;

    # getter for: Lcom/cat/impl/DoTimeDifferenceConn;->m_iCallback:Lcom/cat/protocol/DoTimeDifferenceInterface;
    invoke-static {v0}, Lcom/cat/impl/DoTimeDifferenceConn;->access$0(Lcom/cat/impl/DoTimeDifferenceConn;)Lcom/cat/protocol/DoTimeDifferenceInterface;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/cat/protocol/DoTimeDifferenceInterface;->doTimeDifferenceErr(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/ta/mvc/common/TARequest;

    invoke-direct {v0}, Lcom/ta/mvc/common/TARequest;-><init>()V

    .line 37
    .local v0, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TARequest;->setData(Ljava/lang/Object;)V

    .line 38
    iget-object v1, p0, Lcom/cat/impl/DoTimeDifferenceConn$1;->this$0:Lcom/cat/impl/DoTimeDifferenceConn;

    # getter for: Lcom/cat/impl/DoTimeDifferenceConn;->m_iCallback:Lcom/cat/protocol/DoTimeDifferenceInterface;
    invoke-static {v1}, Lcom/cat/impl/DoTimeDifferenceConn;->access$0(Lcom/cat/impl/DoTimeDifferenceConn;)Lcom/cat/protocol/DoTimeDifferenceInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cat/protocol/DoTimeDifferenceInterface;->doTimeDifferenceSucc(Ljava/lang/String;)V

    .line 39
    return-void
.end method
