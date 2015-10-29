.class public abstract Lcom/ta/util/db/util/sql/TASqlBuilder;
.super Ljava/lang/Object;
.source "TASqlBuilder.java"


# instance fields
.field protected clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected distinct:Ljava/lang/Boolean;

.field protected entity:Ljava/lang/Object;

.field protected groupBy:Ljava/lang/String;

.field protected having:Ljava/lang/String;

.field protected limit:Ljava/lang/String;

.field protected orderBy:Ljava/lang/String;

.field protected tableName:Ljava/lang/String;

.field protected updateFields:Lcom/ta/util/db/entity/TAArrayList;

.field protected where:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->clazz:Ljava/lang/Class;

    .line 44
    iput-object v0, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->tableName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->clazz:Ljava/lang/Class;

    .line 44
    iput-object v0, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->tableName:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p1}, Lcom/ta/util/db/util/sql/TASqlBuilder;->setTableName(Ljava/lang/Class;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->clazz:Ljava/lang/Class;

    .line 44
    iput-object v0, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->tableName:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->entity:Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/db/util/sql/TASqlBuilder;->setClazz(Ljava/lang/Class;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/StringBuilder;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "clause"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    return-void
.end method

.method protected buildConditionString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 167
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string v1, " WHERE "

    iget-object v2, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->where:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ta/util/db/util/sql/TASqlBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v1, " GROUP BY "

    iget-object v2, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->groupBy:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ta/util/db/util/sql/TASqlBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, " HAVING "

    iget-object v2, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->having:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ta/util/db/util/sql/TASqlBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, " ORDER BY "

    iget-object v2, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->orderBy:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ta/util/db/util/sql/TASqlBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v1, " LIMIT "

    iget-object v2, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->limit:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/ta/util/db/util/sql/TASqlBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract buildSql()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TADBException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method public buildWhere(Lcom/ta/util/db/entity/TAArrayList;)Ljava/lang/String;
    .locals 6
    .param p1, "conditions"    # Lcom/ta/util/db/entity/TAArrayList;

    .prologue
    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 195
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 197
    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/ta/util/db/entity/TAArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 214
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 200
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Lcom/ta/util/db/entity/TAArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 202
    .local v1, "nameValuePair":Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 203
    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 205
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-static {v3}, Lcom/ta/common/TAStringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    .line 205
    if-eqz v3, :cond_3

    .line 206
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 204
    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Lcom/ta/util/db/entity/TAArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 210
    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 207
    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getEntity()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->entity:Ljava/lang/Object;

    return-object v0
.end method

.method public getSqlStatement()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TADBException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/ta/util/db/util/sql/TASqlBuilder;->onPreGetStatement()V

    .line 133
    invoke-virtual {p0}, Lcom/ta/util/db/util/sql/TASqlBuilder;->buildSql()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateFields()Lcom/ta/util/db/entity/TAArrayList;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->updateFields:Lcom/ta/util/db/entity/TAArrayList;

    return-object v0
.end method

.method public onPreGetStatement()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TADBException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method public setClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/ta/util/db/util/sql/TASqlBuilder;->setTableName(Ljava/lang/Class;)V

    .line 118
    iput-object p1, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->clazz:Ljava/lang/Class;

    .line 119
    return-void
.end method

.method public setCondition(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "distinct"    # Z
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "groupBy"    # Ljava/lang/String;
    .param p4, "having"    # Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->distinct:Ljava/lang/Boolean;

    .line 69
    iput-object p2, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->where:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->groupBy:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->having:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->orderBy:Ljava/lang/String;

    .line 73
    iput-object p6, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->limit:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setEntity(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->entity:Ljava/lang/Object;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ta/util/db/util/sql/TASqlBuilder;->setClazz(Ljava/lang/Class;)V

    .line 63
    return-void
.end method

.method public setTableName(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/ta/util/db/util/TADBUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->tableName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->tableName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setUpdateFields(Lcom/ta/util/db/entity/TAArrayList;)V
    .locals 0
    .param p1, "updateFields"    # Lcom/ta/util/db/entity/TAArrayList;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ta/util/db/util/sql/TASqlBuilder;->updateFields:Lcom/ta/util/db/entity/TAArrayList;

    .line 84
    return-void
.end method
