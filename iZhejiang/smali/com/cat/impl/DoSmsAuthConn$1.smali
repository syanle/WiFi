.class Lcom/cat/impl/DoSmsAuthConn$1;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "DoSmsAuthConn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/impl/DoSmsAuthConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoSmsAuthInterface;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/impl/DoSmsAuthConn;


# direct methods
.method constructor <init>(Lcom/cat/impl/DoSmsAuthConn;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/impl/DoSmsAuthConn$1;->this$0:Lcom/cat/impl/DoSmsAuthConn;

    .line 46
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    .line 57
    iget-object v0, p0, Lcom/cat/impl/DoSmsAuthConn$1;->this$0:Lcom/cat/impl/DoSmsAuthConn;

    # getter for: Lcom/cat/impl/DoSmsAuthConn;->m_iCallback:Lcom/cat/protocol/DoSmsAuthInterface;
    invoke-static {v0}, Lcom/cat/impl/DoSmsAuthConn;->access$0(Lcom/cat/impl/DoSmsAuthConn;)Lcom/cat/protocol/DoSmsAuthInterface;

    move-result-object v0

    invoke-static {p1}, Lcom/cat/impl/DoSmsAuthConn;->FormatStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/cat/protocol/DoSmsAuthInterface;->doSmsAuthErr(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/ta/mvc/common/TARequest;

    invoke-direct {v0}, Lcom/ta/mvc/common/TARequest;-><init>()V

    .line 50
    .local v0, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v0, p1}, Lcom/ta/mvc/common/TARequest;->setData(Ljava/lang/Object;)V

    .line 51
    iget-object v1, p0, Lcom/cat/impl/DoSmsAuthConn$1;->this$0:Lcom/cat/impl/DoSmsAuthConn;

    # getter for: Lcom/cat/impl/DoSmsAuthConn;->m_iCallback:Lcom/cat/protocol/DoSmsAuthInterface;
    invoke-static {v1}, Lcom/cat/impl/DoSmsAuthConn;->access$0(Lcom/cat/impl/DoSmsAuthConn;)Lcom/cat/protocol/DoSmsAuthInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/cat/protocol/DoSmsAuthInterface;->doSmsAuthSucc(Ljava/lang/String;)V

    .line 52
    return-void
.end method
