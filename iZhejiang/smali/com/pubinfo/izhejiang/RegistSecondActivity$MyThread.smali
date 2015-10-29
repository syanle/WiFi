.class public Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;
.super Ljava/lang/Thread;
.source "RegistSecondActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/RegistSecondActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    # invokes: Lcom/pubinfo/izhejiang/RegistSecondActivity;->getSmsCode()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$2(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    # invokes: Lcom/pubinfo/izhejiang/RegistSecondActivity;->getCode()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$3(Lcom/pubinfo/izhejiang/RegistSecondActivity;)V

    .line 213
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->checkNetWork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/RegistSecondActivity;->phone:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/RegistSecondActivity;->countrycode:Ljava/lang/String;

    const-string v3, "1"

    iget-object v4, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v4}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    # invokes: Lcom/pubinfo/izhejiang/RegistSecondActivity;->getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->access$4(Lcom/pubinfo/izhejiang/RegistSecondActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 222
    :goto_1
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->showMsgToast(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/pubinfo/izhejiang/RegistSecondActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/RegistSecondActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/RegistSecondActivity;->hideLoading()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    goto :goto_1

    .line 209
    :catch_1
    move-exception v0

    goto :goto_0
.end method
