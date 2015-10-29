.class public Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;
.super Lcom/ta/util/db/util/sql/TASqlBuilder;
.source "TAUpdateSqlBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ta/util/db/util/sql/TASqlBuilder;-><init>()V

    return-void
.end method

.method public static getFieldsAndValue(Ljava/lang/Object;)Lcom/ta/util/db/entity/TAArrayList;
    .locals 9
    .param p0, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TADBException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v1, Lcom/ta/util/db/entity/TAArrayList;

    invoke-direct {v1}, Lcom/ta/util/db/entity/TAArrayList;-><init>()V

    .line 143
    .local v1, "arrayList":Lcom/ta/util/db/entity/TAArrayList;
    if-nez p0, :cond_0

    .line 145
    new-instance v6, Lcom/ta/exception/TADBException;

    const-string v7, "\u6ca1\u6709\u52a0\u8f7d\u5b9e\u4f53\u7c7b\uff01"

    invoke-direct {v6, v7}, Lcom/ta/exception/TADBException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 147
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 148
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 149
    .local v5, "fields":[Ljava/lang/reflect/Field;
    array-length v8, v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_1

    .line 172
    return-object v1

    .line 149
    :cond_1
    aget-object v4, v5, v7

    .line 152
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-static {v4}, Lcom/ta/util/db/util/TADBUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 154
    invoke-static {v4}, Lcom/ta/util/db/util/TADBUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 157
    const-class v6, Lcom/ta/util/db/annotation/TAPrimaryKey;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ta/util/db/annotation/TAPrimaryKey;

    .line 158
    .local v0, "annotation":Lcom/ta/util/db/annotation/TAPrimaryKey;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/ta/util/db/annotation/TAPrimaryKey;->autoIncrement()Z

    move-result v6

    if-nez v6, :cond_3

    .line 160
    :cond_2
    invoke-static {v4}, Lcom/ta/util/db/util/TADBUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "columnName":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 163
    if-eqz v3, :cond_4

    .line 164
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 166
    .end local v3    # "columnName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    const/4 v6, 0x0

    .line 163
    :goto_2
    invoke-virtual {v1, v3, v6}, Lcom/ta/util/db/entity/TAArrayList;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    .end local v0    # "annotation":Lcom/ta/util/db/annotation/TAPrimaryKey;
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 165
    .restart local v0    # "annotation":Lcom/ta/util/db/annotation/TAPrimaryKey;
    .restart local v3    # "columnName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 167
    .end local v3    # "columnName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method


# virtual methods
.method public buildSql()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TADBException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v4, "UPDATE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v4, p0, Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SET "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;->getUpdateFields()Lcom/ta/util/db/entity/TAArrayList;

    move-result-object v2

    .line 62
    .local v2, "needUpdate":Lcom/ta/util/db/entity/TAArrayList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/ta/util/db/entity/TAArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;->where:Ljava/lang/String;

    invoke-static {v4}, Lcom/ta/common/TAStringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;->buildConditionString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 64
    :cond_0
    invoke-virtual {v2, v0}, Lcom/ta/util/db/entity/TAArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 66
    .local v1, "nameValuePair":Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 67
    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 68
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-static {v4}, Lcom/ta/common/TAStringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    .line 69
    if-eqz v4, :cond_2

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 68
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2}, Lcom/ta/util/db/entity/TAArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 73
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 81
    .end local v1    # "nameValuePair":Lorg/apache/http/NameValuePair;
    :cond_3
    iget-object v4, p0, Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;->entity:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;->buildWhere(Ljava/lang/Object;)Lcom/ta/util/db/entity/TAArrayList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;->buildWhere(Lcom/ta/util/db/entity/TAArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public buildWhere(Ljava/lang/Object;)Lcom/ta/util/db/entity/TAArrayList;
    .locals 9
    .param p1, "entity"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/ta/exception/TADBException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 100
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Lcom/ta/util/db/entity/TAArrayList;

    invoke-direct {v5}, Lcom/ta/util/db/entity/TAArrayList;-><init>()V

    .line 101
    .local v5, "whereArrayList":Lcom/ta/util/db/entity/TAArrayList;
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 102
    .local v4, "fields":[Ljava/lang/reflect/Field;
    array-length v7, v4

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_0

    .line 122
    invoke-virtual {v5}, Lcom/ta/util/db/entity/TAArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 124
    new-instance v6, Lcom/ta/exception/TADBException;

    const-string v7, "\u4e0d\u80fd\u521b\u5efaWhere\u6761\u4ef6\uff0c\u8bed\u53e5"

    invoke-direct {v6, v7}, Lcom/ta/exception/TADBException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 102
    :cond_0
    aget-object v3, v4, v6

    .line 104
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 105
    invoke-static {v3}, Lcom/ta/util/db/util/TADBUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 107
    invoke-static {v3}, Lcom/ta/util/db/util/TADBUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 110
    const-class v8, Lcom/ta/util/db/annotation/TAPrimaryKey;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 111
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_1

    .line 113
    invoke-static {v3}, Lcom/ta/util/db/util/TADBUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "columnName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 115
    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 116
    .end local v2    # "columnName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 114
    invoke-virtual {v5, v2, v8}, Lcom/ta/util/db/entity/TAArrayList;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 102
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 115
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .restart local v2    # "columnName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 126
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    .end local v2    # "columnName":Ljava/lang/String;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_3
    return-object v5
.end method

.method public onPreGetStatement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TADBException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;->getUpdateFields()Lcom/ta/util/db/entity/TAArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;->entity:Ljava/lang/Object;

    invoke-static {v0}, Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;->getFieldsAndValue(Ljava/lang/Object;)Lcom/ta/util/db/entity/TAArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/db/util/sql/TAUpdateSqlBuilder;->setUpdateFields(Lcom/ta/util/db/entity/TAArrayList;)V

    .line 49
    :cond_0
    invoke-super {p0}, Lcom/ta/util/db/util/sql/TASqlBuilder;->onPreGetStatement()V

    .line 50
    return-void
.end method
