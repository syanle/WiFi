.class Lcom/cat/service/TimeService$TimePiece;
.super Landroid/os/CountDownTimer;
.source "TimeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cat/service/TimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimePiece"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/service/TimeService;


# direct methods
.method public constructor <init>(Lcom/cat/service/TimeService;JJ)V
    .locals 0
    .param p2, "millisInFuture"    # J
    .param p4, "countDownInterval"    # J

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cat/service/TimeService$TimePiece;->this$0:Lcom/cat/service/TimeService;

    .line 114
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 115
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/cat/service/TimeService$TimePiece;->this$0:Lcom/cat/service/TimeService;

    iget-object v0, v0, Lcom/cat/service/TimeService;->intents:Landroid/content/Intent;

    const-string v1, "com.settings.timer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v0, p0, Lcom/cat/service/TimeService$TimePiece;->this$0:Lcom/cat/service/TimeService;

    iget-object v0, v0, Lcom/cat/service/TimeService;->intents:Landroid/content/Intent;

    const-string v1, "times"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/cat/service/TimeService$TimePiece;->this$0:Lcom/cat/service/TimeService;

    iget-object v1, p0, Lcom/cat/service/TimeService$TimePiece;->this$0:Lcom/cat/service/TimeService;

    iget-object v1, v1, Lcom/cat/service/TimeService;->intents:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/cat/service/TimeService;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cat/service/TimeService$TimePiece;->this$0:Lcom/cat/service/TimeService;

    iget-object v0, v0, Lcom/cat/service/TimeService;->intents:Landroid/content/Intent;

    const-string v1, "com.settings.timer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v0, p0, Lcom/cat/service/TimeService$TimePiece;->this$0:Lcom/cat/service/TimeService;

    iget-object v0, v0, Lcom/cat/service/TimeService;->intents:Landroid/content/Intent;

    const-string v1, "times"

    long-to-int v2, p1

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcom/cat/service/TimeService$TimePiece;->this$0:Lcom/cat/service/TimeService;

    iget-object v1, p0, Lcom/cat/service/TimeService$TimePiece;->this$0:Lcom/cat/service/TimeService;

    iget-object v1, v1, Lcom/cat/service/TimeService;->intents:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/cat/service/TimeService;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    return-void
.end method
