.class Lcom/pubinfo/freewifialliance/controller/WifiListFun$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiListFun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/controller/WifiListFun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

.field final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

.field final synthetic this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/controller/WifiListFun;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$2;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    .line 388
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 389
    const-string v0, "reason"

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$2;->SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String;

    .line 390
    const-string v0, "homekey"

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$2;->SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 394
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 398
    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/controller/WifiListFun$2;->this$0:Lcom/pubinfo/freewifialliance/controller/WifiListFun;

    invoke-virtual {v2}, Lcom/pubinfo/freewifialliance/controller/WifiListFun;->finish()V

    .line 403
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    return-void
.end method
