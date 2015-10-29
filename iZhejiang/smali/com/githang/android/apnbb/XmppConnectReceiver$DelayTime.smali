.class public Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;
.super Ljava/lang/Object;
.source "XmppConnectReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/githang/android/apnbb/XmppConnectReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelayTime"
.end annotation


# static fields
.field private static final delayTime:Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;


# instance fields
.field private times:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;

    invoke-direct {v0}, Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;-><init>()V

    sput-object v0, Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;->delayTime:Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;->times:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 153
    return-void
.end method

.method public static getWaitingTime()I
    .locals 3

    .prologue
    const/16 v1, 0x14

    .line 166
    sget-object v2, Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;->delayTime:Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;

    iget-object v2, v2, Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;->times:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 167
    .local v0, "time":I
    if-nez v0, :cond_1

    .line 168
    const/4 v1, 0x0

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    const/16 v2, 0xf

    if-lt v0, v2, :cond_0

    .line 175
    if-ge v0, v1, :cond_2

    .line 176
    const/16 v1, 0x3c

    goto :goto_0

    .line 178
    :cond_2
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_3

    const/16 v1, 0x78

    goto :goto_0

    :cond_3
    const/16 v1, 0x12c

    goto :goto_0
.end method

.method public static increase()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;->delayTime:Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;

    iget-object v0, v0, Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;->times:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 163
    return-void
.end method

.method public static resetTimes()V
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;->delayTime:Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;

    iget-object v0, v0, Lcom/githang/android/apnbb/XmppConnectReceiver$DelayTime;->times:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 159
    return-void
.end method
