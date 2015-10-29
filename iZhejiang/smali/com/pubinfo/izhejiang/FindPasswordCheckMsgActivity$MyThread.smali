.class public Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;
.super Ljava/lang/Thread;
.source "FindPasswordCheckMsgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    # invokes: Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getSmsCode()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$7(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    # invokes: Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getCode()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$8(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;)V

    .line 204
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->checkNetWork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->phone:Ljava/lang/String;

    const-string v2, "86"

    const-string v3, "2"

    iget-object v4, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v4}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    # invokes: Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->access$9(Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 213
    :goto_1
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->showMsgToast(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity$MyThread;->this$0:Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/FindPasswordCheckMsgActivity;->hideLoading()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    goto :goto_1

    .line 201
    :catch_1
    move-exception v0

    goto :goto_0
.end method
