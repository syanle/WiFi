.class public Lcom/ta/util/db/util/sql/TADeleteSqlBuilder;
.super Lcom/ta/util/db/util/sql/TASqlBuilder;
.source "TADeleteSqlBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ta/util/db/util/sql/TASqlBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public buildSql()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TADBException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 40
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/ta/util/db/util/sql/TADeleteSqlBuilder;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, p0, Lcom/ta/util/db/util/sql/TADeleteSqlBuilder;->entity:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/ta/util/db/util/sql/TADeleteSqlBuilder;->buildConditionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/ta/util/db/util/sql/TADeleteSqlBuilder;->entity:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/ta/util/db/util/sql/TADeleteSqlBuilder;->buildWhere(Ljava/lang/Object;)Lcom/ta/util/db/entity/TAArrayList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ta/util/db/util/sql/TADeleteSqlBuilder;->buildWhere(Lcom/ta/util/db/entity/TAArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public buildWhere(Ljava/lang/Object;)Lcom/ta/util/db/entity/TAArrayList;
    .locals 8
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/ta/exception/TADBException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 67
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v4, Lcom/ta/util/db/entity/TAArrayList;

    invoke-direct {v4}, Lcom/ta/util/db/entity/TAArrayList;-><init>()V

    .line 68
    .local v4, "whereArrayList":Lcom/ta/util/db/entity/TAArrayList;
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 69
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v6, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 93
    invoke-virtual {v4}, Lcom/ta/util/db/entity/TAArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 95
    new-instance v5, Lcom/ta/exception/TADBException;

    const-string v6, "\u4e0d\u80fd\u521b\u5efaWhere\u6761\u4ef6\uff0c\u8bed\u53e5"

    invoke-direct {v5, v6}, Lcom/ta/exception/TADBException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 69
    :cond_0
    aget-object v2, v3, v5

    .line 71
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    invoke-static {v2}, Lcom/ta/util/db/util/TADBUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 74
    invoke-static {v2}, Lcom/ta/util/db/util/TADBUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 77
    invoke-static {v2}, Lcom/ta/util/db/util/TADBUtils;->isAutoIncrement(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 79
    invoke-static {v2}, Lcom/ta/util/db/util/TADBUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "columnName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 86
    .end local v1    # "columnName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 87
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-virtual {v4, v1, v7}, Lcom/ta/util/db/entity/TAArrayList;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86
    .restart local v1    # "columnName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 97
    .end local v1    # "columnName":Ljava/lang/String;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_3
    return-object v4
.end method
