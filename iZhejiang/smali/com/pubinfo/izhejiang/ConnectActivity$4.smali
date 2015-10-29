.class Lcom/pubinfo/izhejiang/ConnectActivity$4;
.super Ljava/lang/Thread;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/ConnectActivity;->startUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/ConnectActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$4;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iput-object p2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$4;->val$file:Ljava/io/File;

    .line 350
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 352
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$4;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    new-instance v1, Lcom/pubinfo/izhejiang/update/AWingUpdater;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$4;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->handlers:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/pubinfo/izhejiang/update/AWingUpdater;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$4(Lcom/pubinfo/izhejiang/ConnectActivity;Lcom/pubinfo/izhejiang/update/AWingUpdater;)V

    .line 353
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$4;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->awUpdater:Lcom/pubinfo/izhejiang/update/AWingUpdater;
    invoke-static {v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$5(Lcom/pubinfo/izhejiang/ConnectActivity;)Lcom/pubinfo/izhejiang/update/AWingUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$4;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->mLocalVersionCode:I
    invoke-static {v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$6(Lcom/pubinfo/izhejiang/ConnectActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$4;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    # getter for: Lcom/pubinfo/izhejiang/ConnectActivity;->mLocalVersionName:Ljava/lang/String;
    invoke-static {v2}, Lcom/pubinfo/izhejiang/ConnectActivity;->access$7(Lcom/pubinfo/izhejiang/ConnectActivity;)Ljava/lang/String;

    move-result-object v2

    .line 354
    iget-object v3, p0, Lcom/pubinfo/izhejiang/ConnectActivity$4;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity$4;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v4, v4, Lcom/pubinfo/izhejiang/ConnectActivity;->url:Ljava/lang/String;

    .line 353
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pubinfo/izhejiang/update/AWingUpdater;->readyForUpdate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method
