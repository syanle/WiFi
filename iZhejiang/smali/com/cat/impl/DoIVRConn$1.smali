.class Lcom/cat/impl/DoIVRConn$1;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "DoIVRConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/impl/DoIVRConn;-><init>(Ljava/lang/String;Lcom/cat/protocol/DoIVRInterface;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/impl/DoIVRConn;


# direct methods
.method constructor <init>(Lcom/cat/impl/DoIVRConn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/impl/DoIVRConn$1;->this$0:Lcom/cat/impl/DoIVRConn;

    .line 49
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 60
    iget-object v0, p0, Lcom/cat/impl/DoIVRConn$1;->this$0:Lcom/cat/impl/DoIVRConn;

    # getter for: Lcom/cat/impl/DoIVRConn;->m_iCallback:Lcom/cat/protocol/DoIVRInterface;
    invoke-static {v0}, Lcom/cat/impl/DoIVRConn;->access$0(Lcom/cat/impl/DoIVRConn;)Lcom/cat/protocol/DoIVRInterface;

    move-result-object v0

    invoke-static {p1}, Lcom/cat/impl/DoIVRConn;->FormatStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cat/protocol/DoIVRInterface;->doIVRErr(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/ta/mvc/common/TARequest;

    invoke-direct {v0}, Lcom/ta/mvc/common/TARequest;-><init>()V

    .line 53
    .local v0, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TARequest;->setData(Ljava/lang/Object;)V

    .line 54
    iget-object v1, p0, Lcom/cat/impl/DoIVRConn$1;->this$0:Lcom/cat/impl/DoIVRConn;

    # getter for: Lcom/cat/impl/DoIVRConn;->m_iCallback:Lcom/cat/protocol/DoIVRInterface;
    invoke-static {v1}, Lcom/cat/impl/DoIVRConn;->access$0(Lcom/cat/impl/DoIVRConn;)Lcom/cat/protocol/DoIVRInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cat/protocol/DoIVRInterface;->doIVRSucc(Ljava/lang/String;)V

    .line 55
    return-void
.end method
