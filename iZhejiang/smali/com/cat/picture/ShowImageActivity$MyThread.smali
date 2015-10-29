.class public Lcom/cat/picture/ShowImageActivity$MyThread;
.super Ljava/lang/Thread;
.source "ShowImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cat/picture/ShowImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/picture/ShowImageActivity;


# direct methods
.method public constructor <init>(Lcom/cat/picture/ShowImageActivity;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/cat/picture/ShowImageActivity$MyThread;->this$0:Lcom/cat/picture/ShowImageActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 231
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 232
    iget-object v0, p0, Lcom/cat/picture/ShowImageActivity$MyThread;->this$0:Lcom/cat/picture/ShowImageActivity;

    # invokes: Lcom/cat/picture/ShowImageActivity;->Commit()V
    invoke-static {v0}, Lcom/cat/picture/ShowImageActivity;->access$0(Lcom/cat/picture/ShowImageActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 236
    return-void

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method
