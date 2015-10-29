.class public Lcom/ta/util/db/TASQLiteDatabase;
.super Ljava/lang/Object;
.source "TASQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/util/db/TASQLiteDatabase$TADBParams;,
        Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "think_android.db"

.field private static final DB_VERSION:I = 0x1


# instance fields
.field private error:Ljava/lang/String;

.field private isConnect:Ljava/lang/Boolean;

.field private mDatabaseHelper:Lcom/ta/util/db/TADBHelper;

.field private mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

.field private queryCursor:Landroid/database/Cursor;

.field private queryStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryStr:Ljava/lang/String;

    .line 54
    const-string v1, ""

    iput-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->error:Ljava/lang/String;

    .line 56
    iput-object v4, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    .line 58
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->isConnect:Ljava/lang/Boolean;

    .line 60
    iput-object v4, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    iput-object v4, p0, Lcom/ta/util/db/TASQLiteDatabase;->mDatabaseHelper:Lcom/ta/util/db/TADBHelper;

    .line 66
    new-instance v0, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;

    invoke-direct {v0}, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;-><init>()V

    .line 67
    .local v0, "params":Lcom/ta/util/db/TASQLiteDatabase$TADBParams;
    new-instance v1, Lcom/ta/util/db/TADBHelper;

    invoke-virtual {v0}, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->getDbName()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-virtual {v0}, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->getDbVersion()I

    move-result v3

    invoke-direct {v1, p1, v2, v4, v3}, Lcom/ta/util/db/TADBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 67
    iput-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mDatabaseHelper:Lcom/ta/util/db/TADBHelper;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ta/util/db/TASQLiteDatabase$TADBParams;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/ta/util/db/TASQLiteDatabase$TADBParams;

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryStr:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->error:Ljava/lang/String;

    .line 56
    iput-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->isConnect:Ljava/lang/Boolean;

    .line 60
    iput-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    iput-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->mDatabaseHelper:Lcom/ta/util/db/TADBHelper;

    .line 81
    new-instance v0, Lcom/ta/util/db/TADBHelper;

    invoke-virtual {p2}, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->getDbName()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p2}, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->getDbVersion()I

    move-result v2

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/ta/util/db/TADBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 81
    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mDatabaseHelper:Lcom/ta/util/db/TADBHelper;

    .line 83
    return-void
.end method


# virtual methods
.method public alterTable(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 776
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1029
    return-void
.end method

.method public creatTable(Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 696
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 697
    .local v1, "isSuccess":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 701
    :try_start_0
    invoke-static {p1}, Lcom/ta/util/db/util/TADBUtils;->creatTableSql(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "sqlString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ta/util/db/TASQLiteDatabase;->execute(Ljava/lang/String;[Ljava/lang/String;)V

    .line 703
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/ta/exception/TADBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/ta/exception/TADBNotOpenException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .end local v2    # "sqlString":Ljava/lang/String;
    :goto_0
    move-object v3, v1

    .line 722
    :goto_1
    return-object v3

    .line 704
    :catch_0
    move-exception v0

    .line 707
    .local v0, "e":Lcom/ta/exception/TADBException;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 708
    invoke-virtual {v0}, Lcom/ta/exception/TADBException;->printStackTrace()V

    .line 709
    invoke-virtual {v0}, Lcom/ta/exception/TADBException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 710
    .end local v0    # "e":Lcom/ta/exception/TADBException;
    :catch_1
    move-exception v0

    .line 713
    .local v0, "e":Lcom/ta/exception/TADBNotOpenException;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 714
    invoke-virtual {v0}, Lcom/ta/exception/TADBNotOpenException;->printStackTrace()V

    .line 715
    invoke-virtual {v0}, Lcom/ta/exception/TADBNotOpenException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    .end local v0    # "e":Lcom/ta/exception/TADBNotOpenException;
    :cond_0
    const-string v3, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 720
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1
.end method

.method public delete(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .param p2, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 907
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 909
    invoke-static {}, Lcom/ta/util/db/util/TASqlBuilderFactory;->getInstance()Lcom/ta/util/db/util/TASqlBuilderFactory;

    move-result-object v2

    .line 910
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/ta/util/db/util/TASqlBuilderFactory;->getSqlBuilder(I)Lcom/ta/util/db/util/sql/TASqlBuilder;

    move-result-object v0

    .line 911
    .local v0, "getSqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    invoke-virtual {v0, p1}, Lcom/ta/util/db/util/sql/TASqlBuilder;->setClazz(Ljava/lang/Class;)V

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 912
    invoke-virtual/range {v0 .. v6}, Lcom/ta/util/db/util/sql/TASqlBuilder;->setCondition(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0, v0}, Lcom/ta/util/db/TASQLiteDatabase;->execute(Lcom/ta/util/db/util/sql/TASqlBuilder;)Ljava/lang/Boolean;

    move-result-object v1

    .line 916
    .end local v0    # "getSqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public delete(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    invoke-static {}, Lcom/ta/util/db/util/TASqlBuilderFactory;->getInstance()Lcom/ta/util/db/util/TASqlBuilderFactory;

    move-result-object v1

    .line 932
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ta/util/db/util/TASqlBuilderFactory;->getSqlBuilder(I)Lcom/ta/util/db/util/sql/TASqlBuilder;

    move-result-object v0

    .line 933
    .local v0, "getSqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    invoke-virtual {v0, p1}, Lcom/ta/util/db/util/sql/TASqlBuilder;->setEntity(Ljava/lang/Object;)V

    .line 934
    invoke-virtual {p0, v0}, Lcom/ta/util/db/TASQLiteDatabase;->execute(Lcom/ta/util/db/util/sql/TASqlBuilder;)Ljava/lang/Boolean;

    move-result-object v1

    .line 937
    .end local v0    # "getSqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 886
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 893
    :goto_0
    return-object v0

    .line 888
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 892
    :cond_1
    const-string v0, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 893
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public dropTable(Ljava/lang/Class;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 727
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/ta/util/db/util/TADBUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "tableName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ta/util/db/TASQLiteDatabase;->dropTable(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public dropTable(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 739
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 740
    .local v1, "isSuccess":Ljava/lang/Boolean;
    if-eqz p1, :cond_1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 742
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 746
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DROP TABLE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "sqlString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ta/util/db/TASQLiteDatabase;->execute(Ljava/lang/String;[Ljava/lang/String;)V

    .line 748
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v2    # "sqlString":Ljava/lang/String;
    :goto_0
    move-object v3, v1

    .line 765
    :goto_1
    return-object v3

    .line 749
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 753
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 754
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v3, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    .line 763
    :cond_1
    const-string v3, "\u5220\u9664\u6570\u636e\u8868\u540d\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public error()Ljava/lang/String;
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryStr:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->error:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n [ SQL\u8bed\u53e5 ] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->error:Ljava/lang/String;

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->error:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->error:Ljava/lang/String;

    return-object v0
.end method

.method public execute(Lcom/ta/util/db/util/sql/TASqlBuilder;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "getSqlBuilder"    # Lcom/ta/util/db/util/sql/TASqlBuilder;

    .prologue
    const/4 v4, 0x0

    .line 523
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 527
    .local v1, "isSuccess":Ljava/lang/Boolean;
    :try_start_0
    invoke-virtual {p1}, Lcom/ta/util/db/util/sql/TASqlBuilder;->getSqlStatement()Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "sqlString":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/ta/util/db/TASQLiteDatabase;->execute(Ljava/lang/String;[Ljava/lang/String;)V

    .line 529
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/ta/exception/TADBException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/ta/exception/TADBNotOpenException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 552
    .end local v2    # "sqlString":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 530
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 534
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 536
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 539
    .local v0, "e":Lcom/ta/exception/TADBException;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 540
    invoke-virtual {v0}, Lcom/ta/exception/TADBException;->printStackTrace()V

    goto :goto_0

    .line 541
    .end local v0    # "e":Lcom/ta/exception/TADBException;
    :catch_2
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 545
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 546
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 549
    .local v0, "e":Lcom/ta/exception/TADBNotOpenException;
    invoke-virtual {v0}, Lcom/ta/exception/TADBNotOpenException;->printStackTrace()V

    .line 550
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TADBNotOpenException;
        }
    .end annotation

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u51c6\u5907\u6267\u884cSQL["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\u8bed\u53e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iput-object p1, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryStr:Ljava/lang/String;

    .line 497
    if-eqz p2, :cond_1

    .line 499
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_2
    new-instance v0, Lcom/ta/exception/TADBNotOpenException;

    const-string v1, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-direct {v0, v1}, Lcom/ta/exception/TADBNotOpenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public free()V
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1040
    :try_start_0
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1041
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLastSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryStr:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getQueryCursorData()Lcom/ta/util/db/entity/TAMapArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ta/util/db/entity/TAMapArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, "arrayList":Lcom/ta/util/db/entity/TAMapArrayList;, "Lcom/ta/util/db/entity/TAMapArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 567
    :try_start_0
    new-instance v1, Lcom/ta/util/db/entity/TAMapArrayList;

    invoke-direct {v1}, Lcom/ta/util/db/entity/TAMapArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 568
    .end local v0    # "arrayList":Lcom/ta/util/db/entity/TAMapArrayList;, "Lcom/ta/util/db/entity/TAMapArrayList<Ljava/lang/String;>;"
    .local v1, "arrayList":Lcom/ta/util/db/entity/TAMapArrayList;, "Lcom/ta/util/db/entity/TAMapArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 569
    :goto_0
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v1

    .line 582
    .end local v1    # "arrayList":Lcom/ta/util/db/entity/TAMapArrayList;, "Lcom/ta/util/db/entity/TAMapArrayList<Ljava/lang/String;>;"
    .restart local v0    # "arrayList":Lcom/ta/util/db/entity/TAMapArrayList;, "Lcom/ta/util/db/entity/TAMapArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v0

    .line 571
    .end local v0    # "arrayList":Lcom/ta/util/db/entity/TAMapArrayList;, "Lcom/ta/util/db/entity/TAMapArrayList<Ljava/lang/String;>;"
    .restart local v1    # "arrayList":Lcom/ta/util/db/entity/TAMapArrayList;, "Lcom/ta/util/db/entity/TAMapArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    invoke-static {v3}, Lcom/ta/util/db/util/TADBUtils;->getRowData(Landroid/database/Cursor;)Lcom/ta/util/db/entity/TAHashMap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ta/util/db/entity/TAMapArrayList;->add(Lcom/ta/util/db/entity/TAHashMap;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 573
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 575
    .end local v1    # "arrayList":Lcom/ta/util/db/entity/TAMapArrayList;, "Lcom/ta/util/db/entity/TAMapArrayList<Ljava/lang/String;>;"
    .restart local v0    # "arrayList":Lcom/ta/util/db/entity/TAMapArrayList;, "Lcom/ta/util/db/entity/TAMapArrayList<Ljava/lang/String;>;"
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 576
    const-string v3, "\u5f53\u524d\u6570\u636e\u96c6\u83b7\u53d6\u5931\u8d25\uff01"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 580
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "\u5f53\u524d\u6570\u636e\u96c6\u4e0d\u5b58\u5728\uff01"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 573
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public getTables()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ta/util/db/entity/TADBMasterEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 592
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v1, "tadbMasterArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ta/util/db/entity/TADBMasterEntity;>;"
    const-string v0, "select * from sqlite_master where type=\'table\' order by name"

    .line 594
    .local v0, "sql":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 597
    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 599
    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryStr:Ljava/lang/String;

    .line 600
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->free()V

    .line 601
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 603
    const-string v4, "select * from sqlite_master where type=\'table\' order by name"

    .line 604
    const/4 v5, 0x0

    .line 602
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 601
    iput-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    .line 606
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 608
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 632
    :cond_1
    :goto_1
    return-object v1

    .line 610
    :cond_2
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 611
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 613
    new-instance v2, Lcom/ta/util/db/entity/TADBMasterEntity;

    invoke-direct {v2}, Lcom/ta/util/db/entity/TADBMasterEntity;-><init>()V

    .line 614
    .local v2, "tadbMasterEntity":Lcom/ta/util/db/entity/TADBMasterEntity;
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ta/util/db/entity/TADBMasterEntity;->setType(Ljava/lang/String;)V

    .line 615
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ta/util/db/entity/TADBMasterEntity;->setName(Ljava/lang/String;)V

    .line 616
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    .line 617
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 616
    invoke-virtual {v2, v3}, Lcom/ta/util/db/entity/TADBMasterEntity;->setTbl_name(Ljava/lang/String;)V

    .line 618
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ta/util/db/entity/TADBMasterEntity;->setRootpage(I)V

    .line 619
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ta/util/db/entity/TADBMasterEntity;->setSql(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 625
    .end local v2    # "tadbMasterEntity":Lcom/ta/util/db/entity/TADBMasterEntity;
    :cond_3
    const-string v3, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 630
    :cond_4
    const-string v3, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public hasTable(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 643
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/ta/util/db/util/TADBUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 644
    .local v0, "tableName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ta/util/db/TASQLiteDatabase;->hasTable(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public hasTable(Ljava/lang/String;)Z
    .locals 5
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 656
    if-eqz p1, :cond_3

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 658
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 660
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "select count(*) as c from Sqlite_master  where type =\'table\' and name =\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 661
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, "sql":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 665
    iput-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryStr:Ljava/lang/String;

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->free()V

    .line 668
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    .line 669
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 671
    iget-object v3, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 672
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 674
    const/4 v2, 0x1

    .line 685
    .end local v0    # "count":I
    .end local v1    # "sql":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 679
    :cond_2
    const-string v3, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_3
    const-string v3, "\u5224\u65ad\u6570\u636e\u8868\u540d\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insert(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 803
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/db/TASQLiteDatabase;->insert(Ljava/lang/Object;Lcom/ta/util/db/entity/TAArrayList;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/Object;Lcom/ta/util/db/entity/TAArrayList;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "updateFields"    # Lcom/ta/util/db/entity/TAArrayList;

    .prologue
    .line 866
    invoke-static {}, Lcom/ta/util/db/util/TASqlBuilderFactory;->getInstance()Lcom/ta/util/db/util/TASqlBuilderFactory;

    move-result-object v1

    .line 867
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ta/util/db/util/TASqlBuilderFactory;->getSqlBuilder(I)Lcom/ta/util/db/util/sql/TASqlBuilder;

    move-result-object v0

    .line 868
    .local v0, "getSqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    invoke-virtual {v0, p1}, Lcom/ta/util/db/util/sql/TASqlBuilder;->setEntity(Ljava/lang/Object;)V

    .line 869
    invoke-virtual {v0, p2}, Lcom/ta/util/db/util/sql/TASqlBuilder;->setUpdateFields(Lcom/ta/util/db/entity/TAArrayList;)V

    .line 870
    invoke-virtual {p0, v0}, Lcom/ta/util/db/TASQLiteDatabase;->execute(Lcom/ta/util/db/util/sql/TASqlBuilder;)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 820
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 826
    :goto_0
    return-object v0

    .line 822
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 825
    :cond_1
    const-string v0, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 826
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 844
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 850
    :goto_0
    return-object v0

    .line 846
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 849
    :cond_1
    const-string v0, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public openDatabase(Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;Ljava/lang/Boolean;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "dbUpdateListener"    # Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;
    .param p2, "isWrite"    # Ljava/lang/Boolean;

    .prologue
    .line 109
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    invoke-virtual {p0, v0}, Lcom/ta/util/db/TASQLiteDatabase;->openWritable(Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    invoke-virtual {p0, v0}, Lcom/ta/util/db/TASQLiteDatabase;->openReadable(Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public openReadable(Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .param p1, "dbUpdateListener"    # Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 184
    iput-object p1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mDatabaseHelper:Lcom/ta/util/db/TADBHelper;

    iget-object v2, p0, Lcom/ta/util/db/TASQLiteDatabase;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    invoke-virtual {v1, v2}, Lcom/ta/util/db/TADBHelper;->setOndbUpdateListener(Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;)V

    .line 192
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mDatabaseHelper:Lcom/ta/util/db/TADBHelper;

    invoke-virtual {v1}, Lcom/ta/util/db/TADBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 193
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->isConnect:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v1

    .line 196
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->isConnect:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public openWritable(Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .param p1, "dbUpdateListener"    # Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 130
    iput-object p1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mDatabaseHelper:Lcom/ta/util/db/TADBHelper;

    iget-object v2, p0, Lcom/ta/util/db/TASQLiteDatabase;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    invoke-virtual {v1, v2}, Lcom/ta/util/db/TADBHelper;->setOndbUpdateListener(Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;)V

    .line 138
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mDatabaseHelper:Lcom/ta/util/db/TADBHelper;

    invoke-virtual {v1}, Lcom/ta/util/db/TADBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 139
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->isConnect:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->isConnect:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public query(Ljava/lang/String;Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "distinct"    # Z
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ta/util/db/entity/TAHashMap",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->free()V

    .line 371
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    .line 373
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->getQueryCursorData()Lcom/ta/util/db/entity/TAMapArrayList;

    move-result-object v0

    .line 384
    :goto_0
    return-object v0

    .line 378
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u67e5\u8be2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u9519\u8bef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 382
    :cond_1
    const-string v0, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ta/util/db/entity/TAHashMap",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {p0, p1}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iput-object p1, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryStr:Ljava/lang/String;

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->free()V

    .line 223
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    .line 224
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->getQueryCursorData()Lcom/ta/util/db/entity/TAMapArrayList;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6267\u884c"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u9519\u8bef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_2
    const-string v0, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ta/util/db/entity/TAHashMap",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    .line 328
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->getQueryCursorData()Lcom/ta/util/db/entity/TAMapArrayList;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u67e5\u8be2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u9519\u8bef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 337
    :cond_1
    const-string v0, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ta/util/db/entity/TAHashMap",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->free()V

    .line 415
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    .line 417
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->getQueryCursorData()Lcom/ta/util/db/entity/TAMapArrayList;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u67e5\u8be2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u9519\u8bef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    :cond_1
    const-string v0, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public query(Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p2, "distinct"    # Z
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v8, 0x0

    .line 264
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/ta/util/db/util/TASqlBuilderFactory;->getInstance()Lcom/ta/util/db/util/TASqlBuilderFactory;

    move-result-object v1

    .line 265
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ta/util/db/util/TASqlBuilderFactory;->getSqlBuilder(I)Lcom/ta/util/db/util/sql/TASqlBuilder;

    move-result-object v0

    .line 266
    .local v0, "getSqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    invoke-virtual {v0, p1}, Lcom/ta/util/db/util/sql/TASqlBuilder;->setClazz(Ljava/lang/Class;)V

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 267
    invoke-virtual/range {v0 .. v6}, Lcom/ta/util/db/util/sql/TASqlBuilder;->setCondition(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :try_start_0
    invoke-virtual {v0}, Lcom/ta/util/db/util/sql/TASqlBuilder;->getSqlStatement()Ljava/lang/String;

    move-result-object v9

    .line 272
    .local v9, "sqlString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6267\u884c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->free()V

    .line 274
    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    .line 276
    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    .line 275
    invoke-static {p1, v1}, Lcom/ta/util/db/util/TADBUtils;->getListEntity(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/ta/exception/TADBException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    .line 297
    .end local v0    # "getSqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v9    # "sqlString":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 277
    .restart local v0    # "getSqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catch_0
    move-exception v7

    .line 280
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 283
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 286
    .local v7, "e":Lcom/ta/exception/TADBException;
    invoke-virtual {v7}, Lcom/ta/exception/TADBException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v7}, Lcom/ta/exception/TADBException;->printStackTrace()V

    goto :goto_0

    .line 288
    .end local v7    # "e":Lcom/ta/exception/TADBException;
    :catch_2
    move-exception v7

    .line 291
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 297
    .end local v0    # "getSqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase$CursorFactory;",
            "Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ta/util/db/entity/TAHashMap",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->free()V

    .line 462
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    .line 465
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->queryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->getQueryCursorData()Lcom/ta/util/db/entity/TAMapArrayList;

    move-result-object v0

    .line 476
    :goto_0
    return-object v0

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u67e5\u8be2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u9519\u8bef"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 474
    :cond_1
    const-string v0, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setOnDbUpdateListener(Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;)V
    .locals 2
    .param p1, "dbUpdateListener"    # Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    .line 93
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mDatabaseHelper:Lcom/ta/util/db/TADBHelper;

    iget-object v1, p0, Lcom/ta/util/db/TASQLiteDatabase;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    invoke-virtual {v0, v1}, Lcom/ta/util/db/TADBHelper;->setOndbUpdateListener(Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;)V

    .line 97
    :cond_0
    return-void
.end method

.method public testSQLiteDatabase()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->isConnect:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 165
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public update(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 975
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/db/TASQLiteDatabase;->update(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "where"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 989
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 991
    invoke-static {}, Lcom/ta/util/db/util/TASqlBuilderFactory;->getInstance()Lcom/ta/util/db/util/TASqlBuilderFactory;

    move-result-object v2

    .line 992
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Lcom/ta/util/db/util/TASqlBuilderFactory;->getSqlBuilder(I)Lcom/ta/util/db/util/sql/TASqlBuilder;

    move-result-object v0

    .line 993
    .local v0, "getSqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    invoke-virtual {v0, p1}, Lcom/ta/util/db/util/sql/TASqlBuilder;->setEntity(Ljava/lang/Object;)V

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 994
    invoke-virtual/range {v0 .. v6}, Lcom/ta/util/db/util/sql/TASqlBuilder;->setCondition(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0, v0}, Lcom/ta/util/db/TASQLiteDatabase;->execute(Lcom/ta/util/db/util/sql/TASqlBuilder;)Ljava/lang/Boolean;

    move-result-object v1

    .line 998
    .end local v0    # "getSqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 955
    invoke-virtual {p0}, Lcom/ta/util/db/TASQLiteDatabase;->testSQLiteDatabase()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase;->mSQLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 958
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 957
    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 962
    :goto_0
    return-object v0

    .line 957
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 961
    :cond_1
    const-string v0, "\u6570\u636e\u5e93\u672a\u6253\u5f00\uff01"

    invoke-static {p0, v0}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 962
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
