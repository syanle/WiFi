.class Lcom/ta/util/http/AsyncHttpResponseHandler$1;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ta/util/http/AsyncHttpResponseHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/util/http/AsyncHttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/ta/util/http/AsyncHttpResponseHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ta/util/http/AsyncHttpResponseHandler$1;->this$0:Lcom/ta/util/http/AsyncHttpResponseHandler;

    .line 28
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ta/util/http/AsyncHttpResponseHandler$1;->this$0:Lcom/ta/util/http/AsyncHttpResponseHandler;

    invoke-virtual {v0, p1}, Lcom/ta/util/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 34
    return-void
.end method
