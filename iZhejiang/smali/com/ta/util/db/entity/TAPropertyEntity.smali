.class public Lcom/ta/util/db/entity/TAPropertyEntity;
.super Ljava/lang/Object;
.source "TAPropertyEntity.java"


# instance fields
.field protected autoIncrement:Z

.field protected columnName:Ljava/lang/String;

.field protected defaultValue:Ljava/lang/Object;

.field protected index:I

.field protected isAllowNull:Z

.field protected name:Ljava/lang/String;

.field protected primaryKey:Z

.field protected type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->isAllowNull:Z

    .line 34
    iput-boolean v1, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->primaryKey:Z

    .line 35
    iput-boolean v1, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->autoIncrement:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;ZZZLjava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/Object;
    .param p4, "primaryKey"    # Z
    .param p5, "isAllowNull"    # Z
    .param p6, "autoIncrement"    # Z
    .param p7, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->isAllowNull:Z

    .line 34
    iput-boolean v1, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->primaryKey:Z

    .line 35
    iput-boolean v1, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->autoIncrement:Z

    .line 46
    iput-object p1, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->name:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->type:Ljava/lang/Class;

    .line 48
    iput-object p3, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->defaultValue:Ljava/lang/Object;

    .line 49
    iput-boolean p4, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->primaryKey:Z

    .line 50
    iput-boolean p5, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->isAllowNull:Z

    .line 51
    iput-boolean p6, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->autoIncrement:Z

    .line 52
    iput-object p7, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->columnName:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->columnName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public isAllowNull()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->isAllowNull:Z

    return v0
.end method

.method public isAutoIncrement()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->autoIncrement:Z

    return v0
.end method

.method public isPrimaryKey()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->primaryKey:Z

    return v0
.end method

.method public setAllowNull(Z)V
    .locals 0
    .param p1, "isAllowNull"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->isAllowNull:Z

    .line 103
    return-void
.end method

.method public setAutoIncrement(Z)V
    .locals 0
    .param p1, "autoIncrement"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->autoIncrement:Z

    .line 123
    return-void
.end method

.method public setColumnName(Ljava/lang/String;)V
    .locals 0
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->columnName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->defaultValue:Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->index:I

    .line 113
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPrimaryKey(Z)V
    .locals 0
    .param p1, "primaryKey"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->primaryKey:Z

    .line 93
    return-void
.end method

.method public setType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/ta/util/db/entity/TAPropertyEntity;->type:Ljava/lang/Class;

    .line 73
    return-void
.end method
