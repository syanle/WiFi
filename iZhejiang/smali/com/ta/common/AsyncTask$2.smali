.class Lcom/ta/common/AsyncTask$2;
.super Lcom/ta/common/AsyncTask$WorkerRunnable;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ta/common/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ta/common/AsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/common/AsyncTask;


# direct methods
.method constructor <init>(Lcom/ta/common/AsyncTask;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ta/common/AsyncTask$2;->this$0:Lcom/ta/common/AsyncTask;

    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ta/common/AsyncTask$WorkerRunnable;-><init>(Lcom/ta/common/AsyncTask$WorkerRunnable;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/ta/common/AsyncTask$2;->this$0:Lcom/ta/common/AsyncTask;

    # getter for: Lcom/ta/common/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/ta/common/AsyncTask;->access$1(Lcom/ta/common/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 372
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 374
    iget-object v0, p0, Lcom/ta/common/AsyncTask$2;->this$0:Lcom/ta/common/AsyncTask;

    iget-object v1, p0, Lcom/ta/common/AsyncTask$2;->this$0:Lcom/ta/common/AsyncTask;

    iget-object v2, p0, Lcom/ta/common/AsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/ta/common/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/ta/common/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/ta/common/AsyncTask;->access$2(Lcom/ta/common/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
