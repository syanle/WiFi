.class public Lcom/ta/util/db/util/TADBUtils;
.super Ljava/lang/Object;
.source "TADBUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatTableSql(Ljava/lang/Class;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TADBException;
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/ta/util/db/util/TATableInfofactory;->getInstance()Lcom/ta/util/db/util/TATableInfofactory;

    move-result-object v6

    .line 222
    invoke-virtual {v6, p0}, Lcom/ta/util/db/util/TATableInfofactory;->getTableInfoEntity(Ljava/lang/Class;)Lcom/ta/util/db/entity/TATableInfoEntity;

    move-result-object v5

    .line 224
    .local v5, "tableInfoEntity":Lcom/ta/util/db/entity/TATableInfoEntity;
    const/4 v0, 0x0

    .line 225
    .local v0, "pkProperyEntity":Lcom/ta/util/db/entity/TAPKProperyEntity;
    invoke-virtual {v5}, Lcom/ta/util/db/entity/TATableInfoEntity;->getPkProperyEntity()Lcom/ta/util/db/entity/TAPKProperyEntity;

    move-result-object v0

    .line 226
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 227
    .local v4, "strSQL":Ljava/lang/StringBuffer;
    const-string v6, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    invoke-virtual {v5}, Lcom/ta/util/db/entity/TATableInfoEntity;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const-string v6, " ( "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {v0}, Lcom/ta/util/db/entity/TAPKProperyEntity;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 234
    .local v1, "primaryClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v6, :cond_0

    const-class v6, Ljava/lang/Integer;

    if-ne v1, v6, :cond_2

    .line 235
    :cond_0
    invoke-virtual {v0}, Lcom/ta/util/db/entity/TAPKProperyEntity;->isAutoIncrement()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 237
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ta/util/db/entity/TAPKProperyEntity;->getColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 238
    const-string v7, "\"    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 239
    const-string v7, "INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    .end local v1    # "primaryClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v5}, Lcom/ta/util/db/entity/TATableInfoEntity;->getPropertieArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 256
    .local v3, "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ta/util/db/entity/TAPropertyEntity;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 261
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 262
    const-string v6, " )"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 242
    .end local v3    # "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ta/util/db/entity/TAPropertyEntity;>;"
    .restart local v1    # "primaryClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ta/util/db/entity/TAPKProperyEntity;->getColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 243
    const-string v7, "\"    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "INTEGER PRIMARY KEY,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 246
    :cond_2
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0}, Lcom/ta/util/db/entity/TAPKProperyEntity;->getColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 247
    const-string v7, "\"    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "TEXT PRIMARY KEY,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 250
    .end local v1    # "primaryClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\"    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 251
    const-string v7, "INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 256
    .restart local v3    # "propertys":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ta/util/db/entity/TAPropertyEntity;>;"
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ta/util/db/entity/TAPropertyEntity;

    .line 258
    .local v2, "property":Lcom/ta/util/db/entity/TAPropertyEntity;
    const-string v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v2}, Lcom/ta/util/db/entity/TAPropertyEntity;->getColumnName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    const-string v7, "\","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 330
    const-class v2, Lcom/ta/util/db/annotation/TAColumn;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ta/util/db/annotation/TAColumn;

    .line 331
    .local v0, "column":Lcom/ta/util/db/annotation/TAColumn;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ta/util/db/annotation/TAColumn;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-interface {v0}, Lcom/ta/util/db/annotation/TAColumn;->name()Ljava/lang/String;

    move-result-object v2

    .line 339
    :goto_0
    return-object v2

    .line 335
    :cond_0
    const-class v2, Lcom/ta/util/db/annotation/TAPrimaryKey;

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/ta/util/db/annotation/TAPrimaryKey;

    .line 336
    .local v1, "primaryKey":Lcom/ta/util/db/annotation/TAPrimaryKey;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/ta/util/db/annotation/TAPrimaryKey;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    invoke-interface {v1}, Lcom/ta/util/db/annotation/TAPrimaryKey;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getListEntity(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p1}, Lcom/ta/util/db/util/TAEntityBuilder;->buildQueryList(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, "queryList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    return-object v0
.end method

.method public static getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "primaryKeyField":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 114
    .local v1, "fields":[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_7

    .line 117
    array-length v5, v1

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_1

    .line 125
    :goto_1
    if-nez v2, :cond_0

    .line 127
    array-length v5, v1

    move v4, v3

    :goto_2
    if-lt v4, v5, :cond_3

    .line 135
    :goto_3
    if-nez v2, :cond_0

    .line 137
    array-length v4, v1

    :goto_4
    if-lt v3, v4, :cond_5

    .line 151
    :cond_0
    :goto_5
    return-object v2

    .line 117
    :cond_1
    aget-object v0, v1, v4

    .line 119
    .local v0, "field":Ljava/lang/reflect/Field;
    const-class v6, Lcom/ta/util/db/annotation/TAPrimaryKey;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 121
    move-object v2, v0

    .line 122
    goto :goto_1

    .line 117
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_3
    aget-object v0, v1, v4

    .line 129
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    const-string v6, "_id"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 131
    move-object v2, v0

    .line 132
    goto :goto_3

    .line 127
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 137
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_5
    aget-object v0, v1, v3

    .line 139
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    const-string v5, "id"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 141
    move-object v2, v0

    .line 142
    goto :goto_5

    .line 137
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 149
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "this model["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] has no field"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/ta/util/db/util/TADBUtils;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 164
    .local v0, "f":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    const-string v1, "id"

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPropertyDefaultValue(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 350
    const-class v1, Lcom/ta/util/db/annotation/TAColumn;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ta/util/db/annotation/TAColumn;

    .line 351
    .local v0, "column":Lcom/ta/util/db/annotation/TAColumn;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ta/util/db/annotation/TAColumn;->defaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-interface {v0}, Lcom/ta/util/db/annotation/TAColumn;->defaultValue()Ljava/lang/String;

    move-result-object v1

    .line 355
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPropertyList(Ljava/lang/Class;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/ta/util/db/entity/TAPropertyEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v3, "plist":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/db/entity/TAPropertyEntity;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 181
    .local v2, "fields":[Ljava/lang/reflect/Field;
    invoke-static {p0}, Lcom/ta/util/db/util/TADBUtils;->getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "primaryKeyFieldName":Ljava/lang/String;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_0

    .line 204
    return-object v3

    .line 182
    :cond_0
    aget-object v1, v2, v6

    .line 184
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcom/ta/util/db/util/TADBUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 186
    invoke-static {v1}, Lcom/ta/util/db/util/TADBUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 189
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 182
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 192
    :cond_2
    new-instance v5, Lcom/ta/util/db/entity/TAPKProperyEntity;

    invoke-direct {v5}, Lcom/ta/util/db/entity/TAPKProperyEntity;-><init>()V

    .line 195
    .local v5, "property":Lcom/ta/util/db/entity/TAPKProperyEntity;
    invoke-static {v1}, Lcom/ta/util/db/util/TADBUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    .line 194
    invoke-virtual {v5, v8}, Lcom/ta/util/db/entity/TAPKProperyEntity;->setColumnName(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/ta/util/db/entity/TAPKProperyEntity;->setName(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/ta/util/db/entity/TAPKProperyEntity;->setType(Ljava/lang/Class;)V

    .line 199
    invoke-static {v1}, Lcom/ta/util/db/util/TADBUtils;->getPropertyDefaultValue(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    .line 198
    invoke-virtual {v5, v8}, Lcom/ta/util/db/entity/TAPKProperyEntity;->setDefaultValue(Ljava/lang/Object;)V

    .line 200
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 205
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "primaryKeyFieldName":Ljava/lang/String;
    .end local v5    # "property":Lcom/ta/util/db/entity/TAPKProperyEntity;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static getRowData(Landroid/database/Cursor;)Lcom/ta/util/db/entity/TAHashMap;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/ta/util/db/entity/TAHashMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 73
    new-instance v1, Lcom/ta/util/db/entity/TAHashMap;

    invoke-direct {v1}, Lcom/ta/util/db/entity/TAHashMap;-><init>()V

    .line 74
    .local v1, "hashMap":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<Ljava/lang/String;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 75
    .local v0, "columnCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 81
    .end local v0    # "columnCount":I
    .end local v1    # "hashMap":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :goto_1
    return-object v1

    .line 77
    .restart local v0    # "columnCount":I
    .restart local v1    # "hashMap":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    :cond_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ta/util/db/entity/TAHashMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "columnCount":I
    .end local v1    # "hashMap":Lcom/ta/util/db/entity/TAHashMap;, "Lcom/ta/util/db/entity/TAHashMap<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 92
    .line 93
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/ta/util/db/annotation/TATableName;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ta/util/db/annotation/TATableName;

    .line 94
    .local v0, "table":Lcom/ta/util/db/annotation/TATableName;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ta/util/db/annotation/TATableName;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ta/common/TAStringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Lcom/ta/util/db/annotation/TATableName;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isAutoIncrement(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 296
    const-class v1, Lcom/ta/util/db/annotation/TAPrimaryKey;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/ta/util/db/annotation/TAPrimaryKey;

    .line 297
    .local v0, "primaryKey":Lcom/ta/util/db/annotation/TAPrimaryKey;
    if-eqz v0, :cond_0

    .line 299
    invoke-interface {v0}, Lcom/ta/util/db/annotation/TAPrimaryKey;->autoIncrement()Z

    move-result v1

    .line 301
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBaseDateType(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 312
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 313
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    const-class v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    const-class v1, Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Short;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    const-class v1, Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    const-class v1, Ljava/sql/Date;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isPrimaryKey(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 285
    const-class v0, Lcom/ta/util/db/annotation/TAPrimaryKey;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTransient(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 274
    const-class v0, Lcom/ta/util/db/annotation/TATransient;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
