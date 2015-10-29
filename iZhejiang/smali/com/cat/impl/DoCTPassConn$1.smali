.class Lcom/cat/impl/DoCTPassConn$1;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "DoCTPassConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/impl/DoCTPassConn;-><init>(Lcom/cat/protocol/DoCTPassInterface;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/impl/DoCTPassConn;


# direct methods
.method constructor <init>(Lcom/cat/impl/DoCTPassConn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/impl/DoCTPassConn$1;->this$0:Lcom/cat/impl/DoCTPassConn;

    .line 37
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 48
    iget-object v0, p0, Lcom/cat/impl/DoCTPassConn$1;->this$0:Lcom/cat/impl/DoCTPassConn;

    # getter for: Lcom/cat/impl/DoCTPassConn;->m_iCallback:Lcom/cat/protocol/DoCTPassInterface;
    invoke-static {v0}, Lcom/cat/impl/DoCTPassConn;->access$0(Lcom/cat/impl/DoCTPassConn;)Lcom/cat/protocol/DoCTPassInterface;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/cat/protocol/DoCTPassInterface;->doCTPassErr(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/ta/mvc/common/TARequest;

    invoke-direct {v0}, Lcom/ta/mvc/common/TARequest;-><init>()V

    .line 41
    .local v0, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TARequest;->setData(Ljava/lang/Object;)V

    .line 42
    iget-object v1, p0, Lcom/cat/impl/DoCTPassConn$1;->this$0:Lcom/cat/impl/DoCTPassConn;

    # getter for: Lcom/cat/impl/DoCTPassConn;->m_iCallback:Lcom/cat/protocol/DoCTPassInterface;
    invoke-static {v1}, Lcom/cat/impl/DoCTPassConn;->access$0(Lcom/cat/impl/DoCTPassConn;)Lcom/cat/protocol/DoCTPassInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cat/protocol/DoCTPassInterface;->doCTPassSucc(Ljava/lang/String;)V

    .line 43
    return-void
.end method
