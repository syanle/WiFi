.class Lcom/ta/common/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/common/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/ta/common/AsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/ta/common/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/ta/common/AsyncTask;
    .param p2, "data"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ta/common/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 832
    .local p0, "this":Lcom/ta/common/AsyncTask$AsyncTaskResult;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>.AsyncTaskResult<TData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    iput-object p1, p0, Lcom/ta/common/AsyncTask$AsyncTaskResult;->mTask:Lcom/ta/common/AsyncTask;

    .line 835
    iput-object p2, p0, Lcom/ta/common/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 836
    return-void
.end method
