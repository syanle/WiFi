.class public Lcom/bread/breadservice/BRDReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BRDReceiver.java"


# static fields
.field public static final ACTION_NET:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final ACTION_UNLOCK:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field public static final TAG:Ljava/lang/String; = "BRDReceiver"

.field private static lasttime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bread/breadservice/BRDReceiver;->lasttime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 18
    .local v0, "curtime":J
    const-string v2, "BRDReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "action = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-wide v2, Lcom/bread/breadservice/BRDReceiver;->lasttime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 20
    invoke-static {p1}, Lcom/bread/breadservice/BRD;->receiverBRDService(Landroid/content/Context;)V

    .line 21
    sput-wide v0, Lcom/bread/breadservice/BRDReceiver;->lasttime:J

    .line 22
    const-string v2, "BRDReceiver"

    const-string v3, "BRDReceiver  start notify service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_0
    return-void
.end method
