.class public Lcom/ta/util/db/entity/TATableInfoEntity;
.super Lcom/ta/common/TABaseEntity;
.source "TATableInfoEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x6c652c4471bf2eeL


# instance fields
.field private className:Ljava/lang/String;

.field private pkProperyEntity:Lcom/ta/util/db/entity/TAPKProperyEntity;

.field propertieArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ta/util/db/entity/TAPropertyEntity;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ta/common/TABaseEntity;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/util/db/entity/TATableInfoEntity;->tableName:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/util/db/entity/TATableInfoEntity;->className:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/util/db/entity/TATableInfoEntity;->pkProperyEntity:Lcom/ta/util/db/entity/TAPKProperyEntity;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ta/util/db/entity/TATableInfoEntity;->propertieArrayList:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ta/util/db/entity/TATableInfoEntity;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getPkProperyEntity()Lcom/ta/util/db/entity/TAPKProperyEntity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ta/util/db/entity/TATableInfoEntity;->pkProperyEntity:Lcom/ta/util/db/entity/TAPKProperyEntity;

    return-object v0
.end method

.method public getPropertieArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ta/util/db/entity/TAPropertyEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ta/util/db/entity/TATableInfoEntity;->propertieArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ta/util/db/entity/TATableInfoEntity;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ta/util/db/entity/TATableInfoEntity;->className:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPkProperyEntity(Lcom/ta/util/db/entity/TAPKProperyEntity;)V
    .locals 0
    .param p1, "pkProperyEntity"    # Lcom/ta/util/db/entity/TAPKProperyEntity;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ta/util/db/entity/TATableInfoEntity;->pkProperyEntity:Lcom/ta/util/db/entity/TAPKProperyEntity;

    .line 70
    return-void
.end method

.method public setPropertieArrayList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ta/util/db/entity/TAPropertyEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "propertyList":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/db/entity/TAPropertyEntity;>;"
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "propertyList":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/db/entity/TAPropertyEntity;>;"
    iput-object p1, p0, Lcom/ta/util/db/entity/TATableInfoEntity;->propertieArrayList:Ljava/util/ArrayList;

    .line 60
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ta/util/db/entity/TATableInfoEntity;->tableName:Ljava/lang/String;

    .line 40
    return-void
.end method
