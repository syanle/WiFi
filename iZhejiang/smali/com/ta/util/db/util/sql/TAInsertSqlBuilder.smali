.class public Lcom/ta/util/db/util/sql/TAInsertSqlBuilder;
.super Lcom/ta/util/db/util/sql/TASqlBuilder;
.source "TAInsertSqlBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
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
    .line 100
    new-instance v1, Lcom/ta/util/db/entity/TAArrayList;

    invoke-direct {v1}, Lcom/ta/util/db/entity/TAArrayList;-><init>()V

    .line 101
    .local v1, "arrayList":Lcom/ta/util/db/entity/TAArrayList;
    if-nez p0, :cond_0

    .line 103
    new-instance v6, Lcom/ta/exception/TADBException;

    const-string v7, "\u6ca1\u6709\u52a0\u8f7d\u5b9e\u4f53\u7c7b\uff01"

    invoke-direct {v6, v7}, Lcom/ta/exception/TADBException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 105
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 106
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 107
    .local v5, "fields":[Ljava/lang/reflect/Field;
    array-length v8, v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_1

    .line 134
    return-object v1

    .line 107
    :cond_1
    aget-object v4, v5, v7

    .line 110
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-static {v4}, Lcom/ta/util/db/util/TADBUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 112
    invoke-static {v4}, Lcom/ta/util/db/util/TADBUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 115
    const-class v6, Lcom/ta/util/db/annotation/TAPrimaryKey;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ta/util/db/annotation/TAPrimaryKey;

    .line 116
    .local v0, "annotation":Lcom/ta/util/db/annotation/TAPrimaryKey;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/ta/util/db/annotation/TAPrimaryKey;->autoIncrement()Z

    move-result v6

    if-nez v6, :cond_3

    .line 121
    :cond_2
    invoke-static {v4}, Lcom/ta/util/db/util/TADBUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "columnName":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 124
    if-eqz v3, :cond_4

    .line 125
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 127
    .end local v3    # "columnName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    const/4 v6, 0x0

    .line 124
    :goto_2
    invoke-virtual {v1, v3, v6}, Lcom/ta/util/db/entity/TAArrayList;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    .end local v0    # "annotation":Lcom/ta/util/db/annotation/TAPrimaryKey;
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 126
    .restart local v0    # "annotation":Lcom/ta/util/db/annotation/TAPrimaryKey;
    .restart local v3    # "columnName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 128
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
    const/16 v5, 0x100

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    .local v0, "columns":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    .local v4, "values":Ljava/lang/StringBuilder;
    const-string v5, "INSERT INTO "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v5, p0, Lcom/ta/util/db/util/sql/TAInsertSqlBuilder;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lcom/ta/util/db/util/sql/TAInsertSqlBuilder;->getUpdateFields()Lcom/ta/util/db/entity/TAArrayList;

    move-result-object v3

    .line 61
    .local v3, "updateFields":Lcom/ta/util/db/entity/TAArrayList;
    if-eqz v3, :cond_4

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/ta/util/db/entity/TAArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 81
    const-string v5, ") values "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 65
    :cond_0
    invoke-virtual {v3, v1}, Lcom/ta/util/db/entity/TAArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/NameValuePair;

    .line 66
    .local v2, "nameValuePair":Lorg/apache/http/NameValuePair;
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 69
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    :goto_1
    invoke-static {v5}, Lcom/ta/common/TAStringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v5

    .line 69
    if-eqz v5, :cond_3

    .line 70
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 67
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3}, Lcom/ta/util/db/entity/TAArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 73
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_2
    const-string v5, ""

    goto :goto_1

    .line 70
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 79
    .end local v1    # "i":I
    .end local v2    # "nameValuePair":Lorg/apache/http/NameValuePair;
    :cond_4
    new-instance v5, Lcom/ta/exception/TADBException;

    const-string v6, "\u63d2\u5165\u6570\u636e\u6709\u8bef\uff01"

    invoke-direct {v5, v6}, Lcom/ta/exception/TADBException;-><init>(Ljava/lang/String;)V

    throw v5
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
    .line 43
    invoke-virtual {p0}, Lcom/ta/util/db/util/sql/TAInsertSqlBuilder;->getUpdateFields()Lcom/ta/util/db/entity/TAArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/ta/util/db/util/sql/TAInsertSqlBuilder;->entity:Ljava/lang/Object;

    invoke-static {v0}, Lcom/ta/util/db/util/sql/TAInsertSqlBuilder;->getFieldsAndValue(Ljava/lang/Object;)Lcom/ta/util/db/entity/TAArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/db/util/sql/TAInsertSqlBuilder;->setUpdateFields(Lcom/ta/util/db/entity/TAArrayList;)V

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/ta/util/db/util/sql/TASqlBuilder;->onPreGetStatement()V

    .line 48
    return-void
.end method
