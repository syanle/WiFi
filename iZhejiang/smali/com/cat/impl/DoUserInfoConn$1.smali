.class Lcom/cat/impl/DoUserInfoConn$1;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "DoUserInfoConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/impl/DoUserInfoConn;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoUserInfoInterface;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/impl/DoUserInfoConn;


# direct methods
.method constructor <init>(Lcom/cat/impl/DoUserInfoConn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/impl/DoUserInfoConn$1;->this$0:Lcom/cat/impl/DoUserInfoConn;

    .line 41
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 52
    iget-object v0, p0, Lcom/cat/impl/DoUserInfoConn$1;->this$0:Lcom/cat/impl/DoUserInfoConn;

    # getter for: Lcom/cat/impl/DoUserInfoConn;->m_iCallback:Lcom/cat/protocol/DoUserInfoInterface;
    invoke-static {v0}, Lcom/cat/impl/DoUserInfoConn;->access$0(Lcom/cat/impl/DoUserInfoConn;)Lcom/cat/protocol/DoUserInfoInterface;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/cat/protocol/DoUserInfoInterface;->doUserInfoErr(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/ta/mvc/common/TARequest;

    invoke-direct {v0}, Lcom/ta/mvc/common/TARequest;-><init>()V

    .line 45
    .local v0, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TARequest;->setData(Ljava/lang/Object;)V

    .line 46
    iget-object v1, p0, Lcom/cat/impl/DoUserInfoConn$1;->this$0:Lcom/cat/impl/DoUserInfoConn;

    # getter for: Lcom/cat/impl/DoUserInfoConn;->m_iCallback:Lcom/cat/protocol/DoUserInfoInterface;
    invoke-static {v1}, Lcom/cat/impl/DoUserInfoConn;->access$0(Lcom/cat/impl/DoUserInfoConn;)Lcom/cat/protocol/DoUserInfoInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cat/protocol/DoUserInfoInterface;->doUserInfoSucc(Ljava/lang/String;)V

    .line 47
    return-void
.end method
