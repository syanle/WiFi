.class Lcom/cat/service/TimeService$1;
.super Ljava/lang/Object;
.source "TimeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cat/service/TimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/service/TimeService;


# direct methods
.method constructor <init>(Lcom/cat/service/TimeService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/service/TimeService$1;->this$0:Lcom/cat/service/TimeService;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cat/service/TimeService$1;->this$0:Lcom/cat/service/TimeService;

    # getter for: Lcom/cat/service/TimeService;->recLen:I
    invoke-static {v0}, Lcom/cat/service/TimeService;->access$0(Lcom/cat/service/TimeService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/cat/service/TimeService;->access$1(Lcom/cat/service/TimeService;I)V

    .line 72
    iget-object v0, p0, Lcom/cat/service/TimeService$1;->this$0:Lcom/cat/service/TimeService;

    iget-object v0, v0, Lcom/cat/service/TimeService;->intents:Landroid/content/Intent;

    const-string v1, "com.settings.timer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v0, p0, Lcom/cat/service/TimeService$1;->this$0:Lcom/cat/service/TimeService;

    iget-object v0, v0, Lcom/cat/service/TimeService;->intents:Landroid/content/Intent;

    const-string v1, "times"

    iget-object v2, p0, Lcom/cat/service/TimeService$1;->this$0:Lcom/cat/service/TimeService;

    # getter for: Lcom/cat/service/TimeService;->recLen:I
    invoke-static {v2}, Lcom/cat/service/TimeService;->access$0(Lcom/cat/service/TimeService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lcom/cat/service/TimeService$1;->this$0:Lcom/cat/service/TimeService;

    iget-object v1, p0, Lcom/cat/service/TimeService$1;->this$0:Lcom/cat/service/TimeService;

    iget-object v1, v1, Lcom/cat/service/TimeService;->intents:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/cat/service/TimeService;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    iget-object v0, p0, Lcom/cat/service/TimeService$1;->this$0:Lcom/cat/service/TimeService;

    iget-object v0, v0, Lcom/cat/service/TimeService;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    return-void
.end method
