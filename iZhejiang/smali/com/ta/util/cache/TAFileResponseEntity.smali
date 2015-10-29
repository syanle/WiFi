.class public Lcom/ta/util/cache/TAFileResponseEntity;
.super Lcom/ta/common/TABaseEntity;
.source "TAFileResponseEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x4caccca5e034bfd7L


# instance fields
.field private object:Ljava/lang/Object;

.field private task:Lcom/ta/common/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ta/common/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ta/common/TABaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ta/util/cache/TAFileResponseEntity;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getTask()Lcom/ta/common/AsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ta/common/AsyncTask",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ta/util/cache/TAFileResponseEntity;->task:Lcom/ta/common/AsyncTask;

    return-object v0
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ta/util/cache/TAFileResponseEntity;->object:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public setTask(Lcom/ta/common/AsyncTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ta/common/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "task":Lcom/ta/common/AsyncTask;, "Lcom/ta/common/AsyncTask<***>;"
    iput-object p1, p0, Lcom/ta/util/cache/TAFileResponseEntity;->task:Lcom/ta/common/AsyncTask;

    .line 35
    return-void
.end method
