.class Lcom/ta/TASyncHttpClient$1;
.super Lcom/ta/util/http/AsyncHttpResponseHandler;
.source "TASyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/TASyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/TASyncHttpClient;


# direct methods
.method constructor <init>(Lcom/ta/TASyncHttpClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ta/TASyncHttpClient$1;->this$0:Lcom/ta/TASyncHttpClient;

    .line 45
    invoke-direct {p0}, Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ta/TASyncHttpClient$1;->this$0:Lcom/ta/TASyncHttpClient;

    iget-object v1, p0, Lcom/ta/TASyncHttpClient$1;->this$0:Lcom/ta/TASyncHttpClient;

    invoke-virtual {v1, p1, p2}, Lcom/ta/TASyncHttpClient;->onRequestFailed(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ta/TASyncHttpClient;->result:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ta/TASyncHttpClient$1;->this$0:Lcom/ta/TASyncHttpClient;

    iput-object p1, v0, Lcom/ta/TASyncHttpClient;->result:Ljava/lang/String;

    .line 65
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/ta/TASyncHttpClient$1;->handleMessage(Landroid/os/Message;)V

    .line 59
    return-void
.end method

.method protected sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ta/TASyncHttpClient$1;->this$0:Lcom/ta/TASyncHttpClient;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ta/TASyncHttpClient;->access$0(Lcom/ta/TASyncHttpClient;I)V

    .line 52
    invoke-super {p0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    .line 53
    return-void
.end method
