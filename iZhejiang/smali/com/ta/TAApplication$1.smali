.class Lcom/ta/TAApplication$1;
.super Landroid/os/Handler;
.source "TAApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/TAApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/TAApplication;


# direct methods
.method constructor <init>(Lcom/ta/TAApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ta/TAApplication$1;->this$0:Lcom/ta/TAApplication;

    .line 508
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 512
    iget-object v0, p0, Lcom/ta/TAApplication$1;->this$0:Lcom/ta/TAApplication;

    # invokes: Lcom/ta/TAApplication;->processResponse(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/ta/TAApplication;->access$0(Lcom/ta/TAApplication;Landroid/os/Message;)V

    .line 513
    return-void
.end method
