.class public Lcom/cat/service/TimeService;
.super Landroid/app/Service;
.source "TimeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cat/service/TimeService$TimePiece;
    }
.end annotation


# static fields
.field private static final SETTINGS_UPDATE_UI:Ljava/lang/String; = "com.settings.timer"


# instance fields
.field handler:Landroid/os/Handler;

.field intents:Landroid/content/Intent;

.field private recLen:I

.field runnable:Ljava/lang/Runnable;

.field timepice:Lcom/cat/service/TimeService$TimePiece;

.field timer:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 19
    iput v1, p0, Lcom/cat/service/TimeService;->timer:I

    .line 20
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/cat/service/TimeService;->intents:Landroid/content/Intent;

    .line 21
    iput v1, p0, Lcom/cat/service/TimeService;->recLen:I

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cat/service/TimeService;->handler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/cat/service/TimeService$1;

    invoke-direct {v0, p0}, Lcom/cat/service/TimeService$1;-><init>(Lcom/cat/service/TimeService;)V

    iput-object v0, p0, Lcom/cat/service/TimeService;->runnable:Ljava/lang/Runnable;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/cat/service/TimeService;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/cat/service/TimeService;->recLen:I

    return v0
.end method

.method static synthetic access$1(Lcom/cat/service/TimeService;I)V
    .locals 0

    .prologue
    .line 21
    iput p1, p0, Lcom/cat/service/TimeService;->recLen:I

    return-void
.end method

.method private setTimer(J)V
    .locals 6
    .param p1, "time"    # J

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cat/service/TimeService;->timepice:Lcom/cat/service/TimeService$TimePiece;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/cat/service/TimeService;->timepice:Lcom/cat/service/TimeService$TimePiece;

    invoke-virtual {v0}, Lcom/cat/service/TimeService$TimePiece;->cancel()V

    .line 96
    :cond_0
    new-instance v0, Lcom/cat/service/TimeService$TimePiece;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/cat/service/TimeService$TimePiece;-><init>(Lcom/cat/service/TimeService;JJ)V

    iput-object v0, p0, Lcom/cat/service/TimeService;->timepice:Lcom/cat/service/TimeService$TimePiece;

    .line 97
    iget-object v0, p0, Lcom/cat/service/TimeService;->timepice:Lcom/cat/service/TimeService$TimePiece;

    invoke-virtual {v0}, Lcom/cat/service/TimeService$TimePiece;->start()Landroid/os/CountDownTimer;

    .line 98
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cat/service/TimeService;->timepice:Lcom/cat/service/TimeService$TimePiece;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/cat/service/TimeService;->timepice:Lcom/cat/service/TimeService$TimePiece;

    invoke-virtual {v0}, Lcom/cat/service/TimeService$TimePiece;->cancel()V

    .line 106
    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const-wide/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 39
    const-string v2, "time"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, "timer":I
    packed-switch v1, :pswitch_data_0

    .line 65
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "timer":I
    :cond_0
    :goto_0
    return-void

    .line 42
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "timer":I
    :pswitch_0
    iget-object v2, p0, Lcom/cat/service/TimeService;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 43
    iput v4, p0, Lcom/cat/service/TimeService;->recLen:I

    .line 44
    iget-object v2, p0, Lcom/cat/service/TimeService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/cat/service/TimeService;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v2, p0, Lcom/cat/service/TimeService;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/cat/service/TimeService;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
