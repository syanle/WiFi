.class public Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;
.super Ljava/lang/Thread;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/ConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ConnectActivity;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidclick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidconnect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidclick:Ljava/lang/String;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->ssidconnect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->connWifiBy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 220
    return-void

    .line 214
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->changeWifiBy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0
.end method
