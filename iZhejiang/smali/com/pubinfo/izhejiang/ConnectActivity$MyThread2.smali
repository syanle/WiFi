.class public Lcom/pubinfo/izhejiang/ConnectActivity$MyThread2;
.super Ljava/lang/Thread;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/ConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ConnectActivity;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread2;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 227
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 228
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread2;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->startUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 232
    return-void

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method
