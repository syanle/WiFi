.class Lcom/pubinfo/izhejiang/ConnectActivity$SetTimerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/ConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetTimerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

.field time:I


# direct methods
.method private constructor <init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V
    .locals 1

    .prologue
    .line 834
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$SetTimerReceiver;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 835
    const/4 v0, 0x0

    iput v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$SetTimerReceiver;->time:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 839
    if-eqz p2, :cond_0

    .line 840
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 842
    const-string v1, "com.settings.timer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    const-string v1, "times"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$SetTimerReceiver;->time:I

    .line 844
    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$SetTimerReceiver;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$SetTimerReceiver;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity$SetTimerReceiver;->time:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/pubinfo/izhejiang/ConnectActivity;->getStandardTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->setConectTime(Ljava/lang/String;)V

    .line 850
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-void
.end method
