.class public Lcom/pubinfo/izhejiang/ConnectActivity$MyThreadZan;
.super Ljava/lang/Thread;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/ConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThreadZan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ConnectActivity;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThreadZan;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 421
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 422
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThreadZan;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThreadZan;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->wifimac:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThreadZan;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->username:Ljava/lang/String;

    const-string v3, "1"

    const-string v4, "1"

    iget-object v5, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThreadZan;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-virtual {v5}, Lcom/pubinfo/izhejiang/ConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    # invokes: Lcom/pubinfo/izhejiang/ConnectActivity;->getComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static/range {v0 .. v5}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$3(Lcom/pubinfo/izhejiang/ConnectActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 426
    return-void

    .line 423
    :catch_0
    move-exception v0

    goto :goto_0
.end method
