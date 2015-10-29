.class public Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;
.super Lcom/ta/util/db/util/sql/TASqlBuilder;
.source "TAQuerySqlBuilder.java"


# instance fields
.field protected sLimitPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ta/util/db/util/sql/TASqlBuilder;-><init>()V

    .line 35
    const-string v0, "\\s*\\d+\\s*(,\\s*\\d+\\s*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->sLimitPattern:Ljava/util/regex/Pattern;

    .line 32
    return-void
.end method


# virtual methods
.method public buildQueryString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    iget-object v1, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->groupBy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->having:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 72
    const-string v2, "HAVING clauses are only permitted when using a groupBy clause"

    .line 71
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->limit:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->sLimitPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->limit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid LIMIT clauses:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->limit:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->distinct:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const-string v1, "DISTINCT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_2
    const-string v1, "* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, "FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, " WHERE "

    iget-object v2, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->where:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, " GROUP BY "

    iget-object v2, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->groupBy:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, " HAVING "

    iget-object v2, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->having:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, " ORDER BY "

    iget-object v2, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->orderBy:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, " LIMIT "

    iget-object v2, p0, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->limit:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public buildSql()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TADBException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/ta/util/db/util/sql/TAQuerySqlBuilder;->buildQueryString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
