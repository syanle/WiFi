.class public abstract Lcom/ta/common/AsyncTask;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/common/AsyncTask$AsyncTaskResult;,
        Lcom/ta/common/AsyncTask$InternalHandler;,
        Lcom/ta/common/AsyncTask$SerialExecutor;,
        Lcom/ta/common/AsyncTask$Status;,
        Lcom/ta/common/AsyncTask$WorkerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ta$common$AsyncTask$Status:[I = null

.field private static final CORE_POOL_SIZE:I = 0x5

.field public static final DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/ta/common/AsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/ta/common/AsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/ta/common/AsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ta/common/AsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$ta$common$AsyncTask$Status()[I
    .locals 3

    .prologue
    .line 239
    sget-object v0, Lcom/ta/common/AsyncTask;->$SWITCH_TABLE$com$ta$common$AsyncTask$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ta/common/AsyncTask$Status;->values()[Lcom/ta/common/AsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ta/common/AsyncTask$Status;->FINISHED:Lcom/ta/common/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/ta/common/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ta/common/AsyncTask$Status;->PENDING:Lcom/ta/common/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/ta/common/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ta/common/AsyncTask$Status;->RUNNING:Lcom/ta/common/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/ta/common/AsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/ta/common/AsyncTask;->$SWITCH_TABLE$com$ta$common$AsyncTask$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 247
    new-instance v0, Lcom/ta/common/AsyncTask$1;

    invoke-direct {v0}, Lcom/ta/common/AsyncTask$1;-><init>()V

    sput-object v0, Lcom/ta/common/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 257
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 258
    const/16 v1, 0xa

    .line 257
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/ta/common/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 263
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 264
    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 265
    sget-object v6, Lcom/ta/common/AsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/ta/common/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 266
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    .line 263
    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/ta/common/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 273
    invoke-static {}, Lcom/ta/common/AndroidVersionCheckUtils;->hasHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/ta/common/AsyncTask$SerialExecutor;

    invoke-direct {v0, v9}, Lcom/ta/common/AsyncTask$SerialExecutor;-><init>(Lcom/ta/common/AsyncTask$SerialExecutor;)V

    .line 272
    :goto_0
    sput-object v0, Lcom/ta/common/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 277
    const/4 v0, 0x2

    sget-object v1, Lcom/ta/common/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 276
    sput-object v0, Lcom/ta/common/AsyncTask;->DUAL_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 282
    new-instance v0, Lcom/ta/common/AsyncTask$InternalHandler;

    invoke-direct {v0, v9}, Lcom/ta/common/AsyncTask$InternalHandler;-><init>(Lcom/ta/common/AsyncTask$InternalHandler;)V

    sput-object v0, Lcom/ta/common/AsyncTask;->sHandler:Lcom/ta/common/AsyncTask$InternalHandler;

    .line 284
    sget-object v0, Lcom/ta/common/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/ta/common/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void

    .line 274
    :cond_0
    sget-object v0, Lcom/ta/common/AsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 364
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    sget-object v0, Lcom/ta/common/AsyncTask$Status;->PENDING:Lcom/ta/common/AsyncTask$Status;

    iput-object v0, p0, Lcom/ta/common/AsyncTask;->mStatus:Lcom/ta/common/AsyncTask$Status;

    .line 290
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/ta/common/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 291
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/ta/common/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 366
    new-instance v0, Lcom/ta/common/AsyncTask$2;

    invoke-direct {v0, p0}, Lcom/ta/common/AsyncTask$2;-><init>(Lcom/ta/common/AsyncTask;)V

    iput-object v0, p0, Lcom/ta/common/AsyncTask;->mWorker:Lcom/ta/common/AsyncTask$WorkerRunnable;

    .line 378
    new-instance v0, Lcom/ta/common/AsyncTask$3;

    iget-object v1, p0, Lcom/ta/common/AsyncTask;->mWorker:Lcom/ta/common/AsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/ta/common/AsyncTask$3;-><init>(Lcom/ta/common/AsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/ta/common/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 400
    return-void
.end method

.method static synthetic access$0(Lcom/ta/common/AsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lcom/ta/common/AsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/ta/common/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/ta/common/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ta/common/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/ta/common/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/ta/common/AsyncTask;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/ta/common/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 759
    sget-object v0, Lcom/ta/common/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 760
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 788
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/ta/common/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {p0, p1}, Lcom/ta/common/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 795
    :goto_0
    sget-object v0, Lcom/ta/common/AsyncTask$Status;->FINISHED:Lcom/ta/common/AsyncTask$Status;

    iput-object v0, p0, Lcom/ta/common/AsyncTask;->mStatus:Lcom/ta/common/AsyncTask$Status;

    .line 796
    return-void

    .line 793
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ta/common/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/ta/common/AsyncTask;->sHandler:Lcom/ta/common/AsyncTask$InternalHandler;

    invoke-virtual {v0}, Lcom/ta/common/AsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 352
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v5, 0x1

    .line 414
    sget-object v1, Lcom/ta/common/AsyncTask;->sHandler:Lcom/ta/common/AsyncTask$InternalHandler;

    .line 415
    new-instance v2, Lcom/ta/common/AsyncTask$AsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/ta/common/AsyncTask$AsyncTaskResult;-><init>(Lcom/ta/common/AsyncTask;[Ljava/lang/Object;)V

    .line 414
    invoke-virtual {v1, v5, v2}, Lcom/ta/common/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 416
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 417
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lcom/ta/common/AsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 405
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    .line 407
    invoke-direct {p0, p1}, Lcom/ta/common/AsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "exec"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 357
    sput-object p0, Lcom/ta/common/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 358
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 595
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/ta/common/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 596
    iget-object v0, p0, Lcom/ta/common/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/ta/common/AsyncTask;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/ta/common/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 678
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    sget-object v0, Lcom/ta/common/AsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/ta/common/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/ta/common/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/ta/common/AsyncTask;
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/ta/common/AsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/ta/common/AsyncTask;->mStatus:Lcom/ta/common/AsyncTask$Status;

    sget-object v1, Lcom/ta/common/AsyncTask$Status;->PENDING:Lcom/ta/common/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 727
    invoke-static {}, Lcom/ta/common/AsyncTask;->$SWITCH_TABLE$com$ta$common$AsyncTask$Status()[I

    move-result-object v0

    iget-object v1, p0, Lcom/ta/common/AsyncTask;->mStatus:Lcom/ta/common/AsyncTask$Status;

    invoke-virtual {v1}, Lcom/ta/common/AsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 739
    :cond_0
    sget-object v0, Lcom/ta/common/AsyncTask$Status;->RUNNING:Lcom/ta/common/AsyncTask$Status;

    iput-object v0, p0, Lcom/ta/common/AsyncTask;->mStatus:Lcom/ta/common/AsyncTask$Status;

    .line 741
    invoke-virtual {p0}, Lcom/ta/common/AsyncTask;->onPreExecute()V

    .line 743
    iget-object v0, p0, Lcom/ta/common/AsyncTask;->mWorker:Lcom/ta/common/AsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/ta/common/AsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 744
    iget-object v0, p0, Lcom/ta/common/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 746
    return-object p0

    .line 730
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 614
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/ta/common/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 640
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/ta/common/AsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/ta/common/AsyncTask$Status;
    .locals 1

    .prologue
    .line 427
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/ta/common/AsyncTask;->mStatus:Lcom/ta/common/AsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 557
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/ta/common/AsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 543
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/ta/common/AsyncTask;->onCancelled()V

    .line 523
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 457
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p0, "this":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<TParams;TProgress;TResult;>;"
    invoke-virtual {p0}, Lcom/ta/common/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    sget-object v0, Lcom/ta/common/AsyncTask;->sHandler:Lcom/ta/common/AsyncTask$InternalHandler;

    const/4 v1, 0x2

    .line 782
    new-instance v2, Lcom/ta/common/AsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/ta/common/AsyncTask$AsyncTaskResult;-><init>(Lcom/ta/common/AsyncTask;[Ljava/lang/Object;)V

    .line 781
    invoke-virtual {v0, v1, v2}, Lcom/ta/common/AsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 784
    :cond_0
    return-void
.end method
