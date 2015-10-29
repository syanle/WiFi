.class public Lcom/ta/util/db/util/TASqlBuilderFactory;
.super Ljava/lang/Object;
.source "TASqlBuilderFactory.java"


# static fields
.field public static final DELETE:I = 0x2

.field public static final INSERT:I = 0x0

.field public static final SELECT:I = 0x1

.field public static final UPDATE:I = 0x3

.field private static instance:Lcom/ta/util/db/util/TASqlBuilderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ta/util/db/util/TASqlBuilderFactory;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/ta/util/db/util/TASqlBuilderFactory;->instance:Lcom/ta/util/db/util/TASqlBuilderFactory;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/ta/util/db/util/TASqlBuilderFactory;

    invoke-direct {v0}, Lcom/ta/util/db/util/TASqlBuilderFactory;-><init>()V

    sput-object v0, Lcom/ta/util/db/util/TASqlBuilderFactory;->instance:Lcom/ta/util/db/util/TASqlBuilderFactory;

    .line 63
    :cond_0
    sget-object v0, Lcom/ta/util/db/util/TASqlBuilderFactory;->instance:Lcom/ta/util/db/util/TASqlBuilderFactory;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getSqlBuilder(I)Lcom/ta/util/db/util/sql/TASqlBuilder;
    .locals 2
    .param p1, "operate"    # I

    .prologue
    .line 74
    monitor-enter p0

    const/4 v0, 0x0

    .line 75
    .local v0, "sqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    packed-switch p1, :pswitch_data_0

    .line 92
    :goto_0
    monitor-exit p0

    return-object v0

    .line 78
    :pswitch_0
    :try_start_0
    new-instance v0, Lcom/ta/util/db/util/sql/TAInsertSqlBuilder;

    .end local v0    # "sqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    invoke-direct {v0}, Lcom/ta/util/db/util/sql/TAInsertSqlBuilder;-><init>()V

    .line 79
    .restart local v0    # "sqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    goto :goto_0

    .line 81
    :pswitch_1
    new-instance v0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;

    .end local v0    # "sqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    invoke-direct {v0}, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;-><init>()V

    .line 82
    .restart local v0    # "sqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    goto :goto_0

    .line 84
    :pswitch_2
    new-instance v0, Lcom/ta/util/db/util/sql/TADeleteSqlBuilder;

    .end local v0    # "sqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    invoke-direct {v0}, Lcom/ta/util/db/util/sql/TADeleteSqlBuilder;-><init>()V

    .line 85
    .restart local v0    # "sqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    goto :goto_0

    .line 87
    :pswitch_3
    new-instance v0, Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;

    .end local v0    # "sqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    invoke-direct {v0}, Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .restart local v0    # "sqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    goto :goto_0

    .line 74
    .end local v0    # "sqlBuilder":Lcom/ta/util/db/util/sql/TASqlBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
