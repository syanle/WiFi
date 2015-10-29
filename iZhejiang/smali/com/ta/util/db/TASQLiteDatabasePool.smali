.class public Lcom/ta/util/db/TASQLiteDatabasePool;
.super Ljava/lang/Object;
.source "TASQLiteDatabasePool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    }
.end annotation


# static fields
.field private static poolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ta/util/db/TASQLiteDatabasePool;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Landroid/content/Context;

.field private incrementalSQLiteDatabase:I

.field private initialSQLiteDatabase:I

.field private isWrite:Ljava/lang/Boolean;

.field private mDBUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

.field private maxSQLiteDatabase:I

.field private pSQLiteDatabases:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private params:Lcom/ta/util/db/TASQLiteDatabase$TADBParams;

.field private testTable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ta/util/db/TASQLiteDatabasePool;->poolMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ta/util/db/TASQLiteDatabase$TADBParams;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/ta/util/db/TASQLiteDatabase$TADBParams;
    .param p3, "isWrite"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "Sqlite_master"

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->testTable:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->initialSQLiteDatabase:I

    .line 40
    iput v1, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->incrementalSQLiteDatabase:I

    .line 41
    const/16 v0, 0xa

    iput v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->maxSQLiteDatabase:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->isWrite:Ljava/lang/Boolean;

    .line 119
    iput-object p1, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->context:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->params:Lcom/ta/util/db/TASQLiteDatabase$TADBParams;

    .line 121
    iput-object p3, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->isWrite:Ljava/lang/Boolean;

    .line 122
    return-void
.end method

.method private closeSQLiteDatabase(Lcom/ta/util/db/TASQLiteDatabase;)V
    .locals 0
    .param p1, "sqlLiteDatabase"    # Lcom/ta/util/db/TASQLiteDatabase;

    .prologue
    .line 517
    invoke-virtual {p1}, Lcom/ta/util/db/TASQLiteDatabase;->close()V

    .line 518
    return-void
.end method

.method private createSQLiteDatabase(I)V
    .locals 5
    .param p1, "numSQLiteDatabase"    # I

    .prologue
    .line 249
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    if-lt v1, p1, :cond_1

    .line 271
    :cond_0
    return-void

    .line 254
    :cond_1
    iget v2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->maxSQLiteDatabase:I

    if-lez v2, :cond_2

    .line 255
    iget-object v2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    iget v3, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->maxSQLiteDatabase:I

    if-ge v2, v3, :cond_0

    .line 262
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;

    new-instance v3, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;

    .line 263
    invoke-direct {p0}, Lcom/ta/util/db/TASQLiteDatabasePool;->newSQLiteDatabase()Lcom/ta/util/db/TASQLiteDatabase;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;-><init>(Lcom/ta/util/db/TASQLiteDatabasePool;Lcom/ta/util/db/TASQLiteDatabase;)V

    .line 262
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_1
    const-string v2, "\u6570\u636e\u5e93\u8fde\u63a5\u5df1\u521b\u5efa ......"

    invoke-static {p0, v2}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " \u521b\u5efa\u6570\u636e\u5e93\u8fde\u63a5\u5931\u8d25\uff01 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {p0, v2}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private findFreeSQLiteDatabase()Lcom/ta/util/db/TASQLiteDatabase;
    .locals 4

    .prologue
    .line 353
    const/4 v2, 0x0

    .line 354
    .local v2, "sqliteDatabase":Lcom/ta/util/db/TASQLiteDatabase;
    const/4 v1, 0x0

    .line 357
    .local v1, "pSQLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;

    .line 358
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 361
    .local v0, "enumerate":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_2

    .line 381
    :cond_1
    :goto_0
    return-object v2

    .line 363
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pSQLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    check-cast v1, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;

    .line 364
    .restart local v1    # "pSQLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    invoke-virtual {v1}, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->isBusy()Z

    move-result v3

    if-nez v3, :cond_0

    .line 368
    invoke-virtual {v1}, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->getSqliteDatabase()Lcom/ta/util/db/TASQLiteDatabase;

    move-result-object v2

    .line 369
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->setBusy(Z)V

    .line 371
    invoke-direct {p0, v2}, Lcom/ta/util/db/TASQLiteDatabasePool;->testSQLiteDatabase(Lcom/ta/util/db/TASQLiteDatabase;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 374
    invoke-direct {p0}, Lcom/ta/util/db/TASQLiteDatabasePool;->newSQLiteDatabase()Lcom/ta/util/db/TASQLiteDatabase;

    move-result-object v2

    .line 375
    invoke-virtual {v1, v2}, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->setSqliteDatabase(Lcom/ta/util/db/TASQLiteDatabase;)V

    goto :goto_0
.end method

.method private getFreeSQLiteDatabase()Lcom/ta/util/db/TASQLiteDatabase;
    .locals 2

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/ta/util/db/TASQLiteDatabasePool;->findFreeSQLiteDatabase()Lcom/ta/util/db/TASQLiteDatabase;

    move-result-object v0

    .line 329
    .local v0, "sqLiteDatabase":Lcom/ta/util/db/TASQLiteDatabase;
    if-nez v0, :cond_0

    .line 333
    iget v1, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->incrementalSQLiteDatabase:I

    invoke-direct {p0, v1}, Lcom/ta/util/db/TASQLiteDatabasePool;->createSQLiteDatabase(I)V

    .line 335
    invoke-direct {p0}, Lcom/ta/util/db/TASQLiteDatabasePool;->findFreeSQLiteDatabase()Lcom/ta/util/db/TASQLiteDatabase;

    move-result-object v0

    .line 336
    if-nez v0, :cond_0

    .line 339
    const/4 v1, 0x0

    .line 342
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ta/util/db/TASQLiteDatabasePool;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v0, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;

    invoke-direct {v0}, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;-><init>()V

    .line 83
    .local v0, "params":Lcom/ta/util/db/TASQLiteDatabase$TADBParams;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/ta/util/db/TASQLiteDatabasePool;->getInstance(Landroid/content/Context;Lcom/ta/util/db/TASQLiteDatabase$TADBParams;Ljava/lang/Boolean;)Lcom/ta/util/db/TASQLiteDatabasePool;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/ta/util/db/TASQLiteDatabase$TADBParams;Ljava/lang/Boolean;)Lcom/ta/util/db/TASQLiteDatabasePool;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Lcom/ta/util/db/TASQLiteDatabase$TADBParams;
    .param p2, "isWrite"    # Ljava/lang/Boolean;

    .prologue
    .line 64
    const-class v3, Lcom/ta/util/db/TASQLiteDatabasePool;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p1}, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "dbName":Ljava/lang/String;
    sget-object v2, Lcom/ta/util/db/TASQLiteDatabasePool;->poolMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ta/util/db/TASQLiteDatabasePool;

    .line 66
    .local v1, "pool":Lcom/ta/util/db/TASQLiteDatabasePool;
    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/ta/util/db/TASQLiteDatabasePool;

    .end local v1    # "pool":Lcom/ta/util/db/TASQLiteDatabasePool;
    invoke-direct {v1, p0, p1, p2}, Lcom/ta/util/db/TASQLiteDatabasePool;-><init>(Landroid/content/Context;Lcom/ta/util/db/TASQLiteDatabase$TADBParams;Ljava/lang/Boolean;)V

    .line 69
    .restart local v1    # "pool":Lcom/ta/util/db/TASQLiteDatabasePool;
    sget-object v2, Lcom/ta/util/db/TASQLiteDatabasePool;->poolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit v3

    return-object v1

    .line 64
    .end local v0    # "dbName":Ljava/lang/String;
    .end local v1    # "pool":Lcom/ta/util/db/TASQLiteDatabasePool;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Boolean;)Lcom/ta/util/db/TASQLiteDatabasePool;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbVersion"    # I
    .param p3, "isWrite"    # Ljava/lang/Boolean;

    .prologue
    .line 101
    new-instance v0, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;

    invoke-direct {v0, p1, p2}, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;-><init>(Ljava/lang/String;I)V

    .line 102
    .local v0, "params":Lcom/ta/util/db/TASQLiteDatabase$TADBParams;
    invoke-static {p0, v0, p3}, Lcom/ta/util/db/TASQLiteDatabasePool;->getInstance(Landroid/content/Context;Lcom/ta/util/db/TASQLiteDatabase$TADBParams;Ljava/lang/Boolean;)Lcom/ta/util/db/TASQLiteDatabasePool;

    move-result-object v1

    return-object v1
.end method

.method private newSQLiteDatabase()Lcom/ta/util/db/TASQLiteDatabase;
    .locals 3

    .prologue
    .line 283
    new-instance v0, Lcom/ta/util/db/TASQLiteDatabase;

    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->params:Lcom/ta/util/db/TASQLiteDatabase$TADBParams;

    invoke-direct {v0, v1, v2}, Lcom/ta/util/db/TASQLiteDatabase;-><init>(Landroid/content/Context;Lcom/ta/util/db/TASQLiteDatabase$TADBParams;)V

    .line 284
    .local v0, "sqliteDatabase":Lcom/ta/util/db/TASQLiteDatabase;
    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->mDBUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    iget-object v2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->isWrite:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/ta/util/db/TASQLiteDatabase;->openDatabase(Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;Ljava/lang/Boolean;)Landroid/database/sqlite/SQLiteDatabase;

    .line 285
    return-object v0
.end method

.method private testSQLiteDatabase(Lcom/ta/util/db/TASQLiteDatabase;)Z
    .locals 1
    .param p1, "sqliteDatabase"    # Lcom/ta/util/db/TASQLiteDatabase;

    .prologue
    .line 394
    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {p1}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private wait(I)V
    .locals 2
    .param p1, "mSeconds"    # I

    .prologue
    .line 530
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized closeSQLiteDatabase()V
    .locals 3

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;

    if-nez v2, :cond_0

    .line 484
    const-string v2, "\u8fde\u63a5\u6c60\u4e0d\u5b58\u5728\uff0c\u65e0\u6cd5\u5173\u95ed !"

    invoke-static {p0, v2}, Lcom/ta/util/TALogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :goto_0
    monitor-exit p0

    return-void

    .line 487
    :cond_0
    const/4 v1, 0x0

    .line 488
    .local v1, "pSqLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    :try_start_1
    iget-object v2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;

    .line 489
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 490
    .local v0, "enumerate":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 506
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 482
    .end local v0    # "enumerate":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;>;"
    .end local v1    # "pSqLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 493
    .restart local v0    # "enumerate":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;>;"
    .restart local v1    # "pSqLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    :cond_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pSqLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    check-cast v1, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;

    .line 496
    .restart local v1    # "pSqLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    invoke-virtual {v1}, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->isBusy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    const/16 v2, 0x1388

    invoke-direct {p0, v2}, Lcom/ta/util/db/TASQLiteDatabasePool;->wait(I)V

    .line 501
    :cond_2
    invoke-virtual {v1}, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->getSqliteDatabase()Lcom/ta/util/db/TASQLiteDatabase;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ta/util/db/TASQLiteDatabasePool;->closeSQLiteDatabase(Lcom/ta/util/db/TASQLiteDatabase;)V

    .line 503
    iget-object v2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized createPool()V
    .locals 1

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    monitor-exit p0

    return-void

    .line 232
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;

    .line 234
    iget v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->initialSQLiteDatabase:I

    invoke-direct {p0, v0}, Lcom/ta/util/db/TASQLiteDatabasePool;->createSQLiteDatabase(I)V

    .line 235
    const-string v0, " \u6570\u636e\u5e93\u8fde\u63a5\u6c60\u521b\u5efa\u6210\u529f\uff01 "

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIncrementalSQLiteDatabase()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->incrementalSQLiteDatabase:I

    return v0
.end method

.method public getInitialSQLiteDatabase()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->initialSQLiteDatabase:I

    return v0
.end method

.method public getMaxSQLiteDatabase()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->maxSQLiteDatabase:I

    return v0
.end method

.method public declared-synchronized getSQLiteDatabase()Lcom/ta/util/db/TASQLiteDatabase;
    .locals 2

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 300
    const/4 v0, 0x0

    .line 314
    :cond_0
    monitor-exit p0

    return-object v0

    .line 303
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/ta/util/db/TASQLiteDatabasePool;->getFreeSQLiteDatabase()Lcom/ta/util/db/TASQLiteDatabase;

    move-result-object v0

    .line 306
    .local v0, "sqliteDatabase":Lcom/ta/util/db/TASQLiteDatabase;
    :goto_0
    if-nez v0, :cond_0

    .line 309
    const/16 v1, 0xfa

    invoke-direct {p0, v1}, Lcom/ta/util/db/TASQLiteDatabasePool;->wait(I)V

    .line 310
    invoke-direct {p0}, Lcom/ta/util/db/TASQLiteDatabasePool;->getFreeSQLiteDatabase()Lcom/ta/util/db/TASQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 298
    .end local v0    # "sqliteDatabase":Lcom/ta/util/db/TASQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTestTable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->testTable:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized refreshSQLiteDatabase()V
    .locals 3

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 448
    const-string v2, " \u8fde\u63a5\u6c60\u4e0d\u5b58\u5728\uff0c\u65e0\u6cd5\u5237\u65b0 !"

    invoke-static {p0, v2}, Lcom/ta/util/TALogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :cond_0
    monitor-exit p0

    return-void

    .line 452
    :cond_1
    const/4 v1, 0x0

    .line 453
    .local v1, "pSqLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    :try_start_1
    iget-object v2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;

    .line 454
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 455
    .local v0, "enumerate":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pSqLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    check-cast v1, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;

    .line 462
    .restart local v1    # "pSqLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    invoke-virtual {v1}, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->isBusy()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    const/16 v2, 0x1388

    invoke-direct {p0, v2}, Lcom/ta/util/db/TASQLiteDatabasePool;->wait(I)V

    .line 468
    :cond_2
    invoke-virtual {v1}, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->getSqliteDatabase()Lcom/ta/util/db/TASQLiteDatabase;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ta/util/db/TASQLiteDatabasePool;->closeSQLiteDatabase(Lcom/ta/util/db/TASQLiteDatabase;)V

    .line 469
    invoke-direct {p0}, Lcom/ta/util/db/TASQLiteDatabasePool;->newSQLiteDatabase()Lcom/ta/util/db/TASQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->setSqliteDatabase(Lcom/ta/util/db/TASQLiteDatabase;)V

    .line 470
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->setBusy(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 446
    .end local v0    # "enumerate":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;>;"
    .end local v1    # "pSqLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public releaseSQLiteDatabase(Lcom/ta/util/db/TASQLiteDatabase;)V
    .locals 3
    .param p1, "sqLiteDatabase"    # Lcom/ta/util/db/TASQLiteDatabase;

    .prologue
    .line 411
    iget-object v2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;

    if-nez v2, :cond_1

    .line 413
    const-string v2, " \u8fde\u63a5\u6c60\u4e0d\u5b58\u5728\uff0c\u65e0\u6cd5\u8fd4\u56de\u6b64\u8fde\u63a5\u5230\u8fde\u63a5\u6c60\u4e2d !"

    invoke-static {p0, v2}, Lcom/ta/util/TALogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    const/4 v1, 0x0

    .line 418
    .local v1, "pSqLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    iget-object v2, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->pSQLiteDatabases:Ljava/util/Vector;

    .line 419
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 422
    .local v0, "enumerate":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pSqLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    check-cast v1, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;

    .line 427
    .restart local v1    # "pSqLiteDatabase":Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;
    invoke-virtual {v1}, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->getSqliteDatabase()Lcom/ta/util/db/TASQLiteDatabase;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 431
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ta/util/db/TASQLiteDatabasePool$PooledSQLiteDatabase;->setBusy(Z)V

    goto :goto_0
.end method

.method public setIncrementalSQLiteDatabase(I)V
    .locals 0
    .param p1, "incrementalSQLiteDatabase"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->incrementalSQLiteDatabase:I

    .line 173
    return-void
.end method

.method public setInitialSQLiteDatabase(I)V
    .locals 0
    .param p1, "initialSQLiteDatabase"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->initialSQLiteDatabase:I

    .line 153
    return-void
.end method

.method public setMaxSQLiteDatabase(I)V
    .locals 0
    .param p1, "maxSQLiteDatabase"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->maxSQLiteDatabase:I

    .line 194
    return-void
.end method

.method public setOnDbUpdateListener(Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;)V
    .locals 0
    .param p1, "dbUpdateListener"    # Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->mDBUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    .line 132
    return-void
.end method

.method public setTestTable(Ljava/lang/String;)V
    .locals 0
    .param p1, "testTable"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/ta/util/db/TASQLiteDatabasePool;->testTable:Ljava/lang/String;

    .line 206
    return-void
.end method
