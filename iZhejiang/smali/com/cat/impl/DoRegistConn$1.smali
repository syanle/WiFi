.class Lcom/cat/impl/DoRegistConn$1;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "DoRegistConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/impl/DoRegistConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoRegistInterface;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/impl/DoRegistConn;


# direct methods
.method constructor <init>(Lcom/cat/impl/DoRegistConn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/impl/DoRegistConn$1;->this$0:Lcom/cat/impl/DoRegistConn;

    .line 53
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 64
    iget-object v0, p0, Lcom/cat/impl/DoRegistConn$1;->this$0:Lcom/cat/impl/DoRegistConn;

    # getter for: Lcom/cat/impl/DoRegistConn;->m_iCallback:Lcom/cat/protocol/DoRegistInterface;
    invoke-static {v0}, Lcom/cat/impl/DoRegistConn;->access$0(Lcom/cat/impl/DoRegistConn;)Lcom/cat/protocol/DoRegistInterface;

    move-result-object v0

    invoke-static {p1}, Lcom/cat/impl/DoRegistConn;->FormatStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cat/protocol/DoRegistInterface;->doRegistErr(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/ta/mvc/common/TARequest;

    invoke-direct {v0}, Lcom/ta/mvc/common/TARequest;-><init>()V

    .line 57
    .local v0, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TARequest;->setData(Ljava/lang/Object;)V

    .line 58
    iget-object v1, p0, Lcom/cat/impl/DoRegistConn$1;->this$0:Lcom/cat/impl/DoRegistConn;

    # getter for: Lcom/cat/impl/DoRegistConn;->m_iCallback:Lcom/cat/protocol/DoRegistInterface;
    invoke-static {v1}, Lcom/cat/impl/DoRegistConn;->access$0(Lcom/cat/impl/DoRegistConn;)Lcom/cat/protocol/DoRegistInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cat/protocol/DoRegistInterface;->doRegistSucc(Ljava/lang/String;)V

    .line 59
    return-void
.end method
