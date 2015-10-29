.class Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
.super Ljava/lang/Object;
.source "TASQLiteDatabasePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/util/db/TASQLiteDatabasePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PooledSQLiteDatabase"
.end annotation


# instance fields
.field busy:Z

.field sqliteDatabase:Lcom/ta/util/db/TASQLiteDatabase;

.field final synthetic this$0:Lcom/ta/util/db/TASQLiteDatabasePool;


# direct methods
.method public constructor <init>(Lcom/ta/util/db/TASQLiteDatabasePool;Lcom/ta/util/db/TASQLiteDatabase;)V
    .locals 1
    .param p2, "sqliteDatabase"    # Lcom/ta/util/db/TASQLiteDatabase;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->this$0:Lcom/ta/util/db/TASQLiteDatabasePool;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->sqliteDatabase:Lcom/ta/util/db/TASQLiteDatabase;

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->busy:Z

    .line 548
    iput-object p2, p0, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->sqliteDatabase:Lcom/ta/util/db/TASQLiteDatabase;

    .line 549
    return-void
.end method


# virtual methods
.method public getSqliteDatabase()Lcom/ta/util/db/TASQLiteDatabase;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->sqliteDatabase:Lcom/ta/util/db/TASQLiteDatabase;

    return-object v0
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->busy:Z

    return v0
.end method

.method public setBusy(Z)V
    .locals 0
    .param p1, "busy"    # Z

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->busy:Z

    .line 573
    return-void
.end method

.method public setSqliteDatabase(Lcom/ta/util/db/TASQLiteDatabase;)V
    .locals 0
    .param p1, "sqliteDatabase"    # Lcom/ta/util/db/TASQLiteDatabase;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->sqliteDatabase:Lcom/ta/util/db/TASQLiteDatabase;

    .line 561
    return-void
.end method
