.class Lcom/cat/impl/DoLoginConn$1;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "DoLoginConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/impl/DoLoginConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoLoginInterface;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/impl/DoLoginConn;


# direct methods
.method constructor <init>(Lcom/cat/impl/DoLoginConn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/impl/DoLoginConn$1;->this$0:Lcom/cat/impl/DoLoginConn;

    .line 50
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 61
    iget-object v0, p0, Lcom/cat/impl/DoLoginConn$1;->this$0:Lcom/cat/impl/DoLoginConn;

    # getter for: Lcom/cat/impl/DoLoginConn;->m_iCallback:Lcom/cat/protocol/DoLoginInterface;
    invoke-static {v0}, Lcom/cat/impl/DoLoginConn;->access$0(Lcom/cat/impl/DoLoginConn;)Lcom/cat/protocol/DoLoginInterface;

    move-result-object v0

    invoke-static {p1}, Lcom/cat/impl/DoLoginConn;->FormatStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cat/protocol/DoLoginInterface;->doLoginErr(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/ta/mvc/common/TARequest;

    invoke-direct {v0}, Lcom/ta/mvc/common/TARequest;-><init>()V

    .line 54
    .local v0, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TARequest;->setData(Ljava/lang/Object;)V

    .line 55
    iget-object v1, p0, Lcom/cat/impl/DoLoginConn$1;->this$0:Lcom/cat/impl/DoLoginConn;

    # getter for: Lcom/cat/impl/DoLoginConn;->m_iCallback:Lcom/cat/protocol/DoLoginInterface;
    invoke-static {v1}, Lcom/cat/impl/DoLoginConn;->access$0(Lcom/cat/impl/DoLoginConn;)Lcom/cat/protocol/DoLoginInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cat/protocol/DoLoginInterface;->doLoginSucc(Ljava/lang/String;)V

    .line 56
    return-void
.end method
