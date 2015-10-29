.class Lcom/cat/impl/DoNearBusListConn$1;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "DoNearBusListConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/impl/DoNearBusListConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoNearBusListInterface;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/impl/DoNearBusListConn;


# direct methods
.method constructor <init>(Lcom/cat/impl/DoNearBusListConn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/impl/DoNearBusListConn$1;->this$0:Lcom/cat/impl/DoNearBusListConn;

    .line 55
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 66
    iget-object v0, p0, Lcom/cat/impl/DoNearBusListConn$1;->this$0:Lcom/cat/impl/DoNearBusListConn;

    # getter for: Lcom/cat/impl/DoNearBusListConn;->m_iCallback:Lcom/cat/protocol/DoNearBusListInterface;
    invoke-static {v0}, Lcom/cat/impl/DoNearBusListConn;->access$0(Lcom/cat/impl/DoNearBusListConn;)Lcom/cat/protocol/DoNearBusListInterface;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/cat/protocol/DoNearBusListInterface;->doNearBusListErr(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/ta/mvc/common/TARequest;

    invoke-direct {v0}, Lcom/ta/mvc/common/TARequest;-><init>()V

    .line 59
    .local v0, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TARequest;->setData(Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/cat/impl/DoNearBusListConn$1;->this$0:Lcom/cat/impl/DoNearBusListConn;

    # getter for: Lcom/cat/impl/DoNearBusListConn;->m_iCallback:Lcom/cat/protocol/DoNearBusListInterface;
    invoke-static {v1}, Lcom/cat/impl/DoNearBusListConn;->access$0(Lcom/cat/impl/DoNearBusListConn;)Lcom/cat/protocol/DoNearBusListInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cat/protocol/DoNearBusListInterface;->doNearBusListSucc(Ljava/lang/String;)V

    .line 61
    return-void
.end method
