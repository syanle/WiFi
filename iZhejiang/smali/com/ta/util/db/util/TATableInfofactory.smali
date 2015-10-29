.class public Lcom/ta/util/db/util/TATableInfofactory;
.super Ljava/lang/Object;
.source "TATableInfofactory.java"


# static fields
.field private static instance:Lcom/ta/util/db/util/TATableInfofactory;

.field private static final tableInfoEntityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ta/util/db/entity/TATableInfoEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ta/util/db/util/TATableInfofactory;->tableInfoEntityMap:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/ta/util/db/util/TATableInfofactory;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/ta/util/db/util/TATableInfofactory;->instance:Lcom/ta/util/db/util/TATableInfofactory;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/ta/util/db/util/TATableInfofactory;

    invoke-direct {v0}, Lcom/ta/util/db/util/TATableInfofactory;-><init>()V

    sput-object v0, Lcom/ta/util/db/util/TATableInfofactory;->instance:Lcom/ta/util/db/util/TATableInfofactory;

    .line 60
    :cond_0
    sget-object v0, Lcom/ta/util/db/util/TATableInfofactory;->instance:Lcom/ta/util/db/util/TATableInfofactory;

    return-object v0
.end method


# virtual methods
.method public getTableInfoEntity(Ljava/lang/Class;)Lcom/ta/util/db/entity/TATableInfoEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/ta/util/db/entity/TATableInfoEntity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ta/exception/TADBException;
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 75
    new-instance v4, Lcom/ta/exception/TADBException;

    const-string v5, "\u8868\u4fe1\u606f\u83b7\u53d6\u5931\u8d25\uff0c\u5e94\u4e3aclass\u4e3anull"

    invoke-direct {v4, v5}, Lcom/ta/exception/TADBException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_0
    sget-object v4, Lcom/ta/util/db/util/TATableInfofactory;->tableInfoEntityMap:Ljava/util/HashMap;

    .line 77
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ta/util/db/entity/TATableInfoEntity;

    .line 78
    .local v3, "tableInfoEntity":Lcom/ta/util/db/entity/TATableInfoEntity;
    if-nez v3, :cond_2

    .line 80
    new-instance v3, Lcom/ta/util/db/entity/TATableInfoEntity;

    .end local v3    # "tableInfoEntity":Lcom/ta/util/db/entity/TATableInfoEntity;
    invoke-direct {v3}, Lcom/ta/util/db/entity/TATableInfoEntity;-><init>()V

    .line 81
    .restart local v3    # "tableInfoEntity":Lcom/ta/util/db/entity/TATableInfoEntity;
    invoke-static {p1}, Lcom/ta/util/db/util/TADBUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ta/util/db/entity/TATableInfoEntity;->setTableName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ta/util/db/entity/TATableInfoEntity;->setClassName(Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Lcom/ta/util/db/util/TADBUtils;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 84
    .local v0, "idField":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_4

    .line 86
    new-instance v1, Lcom/ta/util/db/entity/TAPKProperyEntity;

    invoke-direct {v1}, Lcom/ta/util/db/entity/TAPKProperyEntity;-><init>()V

    .line 88
    .local v1, "pkProperyEntity":Lcom/ta/util/db/entity/TAPKProperyEntity;
    invoke-static {v0}, Lcom/ta/util/db/util/TADBUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    .line 87
    invoke-virtual {v1, v4}, Lcom/ta/util/db/entity/TAPKProperyEntity;->setColumnName(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ta/util/db/entity/TAPKProperyEntity;->setName(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ta/util/db/entity/TAPKProperyEntity;->setType(Ljava/lang/Class;)V

    .line 92
    invoke-static {v0}, Lcom/ta/util/db/util/TADBUtils;->isAutoIncrement(Ljava/lang/reflect/Field;)Z

    move-result v4

    .line 91
    invoke-virtual {v1, v4}, Lcom/ta/util/db/entity/TAPKProperyEntity;->setAutoIncrement(Z)V

    .line 93
    invoke-virtual {v3, v1}, Lcom/ta/util/db/entity/TATableInfoEntity;->setPkProperyEntity(Lcom/ta/util/db/entity/TAPKProperyEntity;)V

    .line 99
    .end local v1    # "pkProperyEntity":Lcom/ta/util/db/entity/TAPKProperyEntity;
    :goto_0
    invoke-static {p1}, Lcom/ta/util/db/util/TADBUtils;->getPropertyList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 100
    .local v2, "propertyList":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/db/entity/TAPropertyEntity;>;"
    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v3, v2}, Lcom/ta/util/db/entity/TATableInfoEntity;->setPropertieArrayList(Ljava/util/List;)V

    .line 105
    :cond_1
    sget-object v4, Lcom/ta/util/db/util/TATableInfofactory;->tableInfoEntityMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .end local v0    # "idField":Ljava/lang/reflect/Field;
    .end local v2    # "propertyList":Ljava/util/List;, "Ljava/util/List<Lcom/ta/util/db/entity/TAPropertyEntity;>;"
    :cond_2
    if-eqz v3, :cond_3

    .line 108
    invoke-virtual {v3}, Lcom/ta/util/db/entity/TATableInfoEntity;->getPropertieArrayList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 109
    invoke-virtual {v3}, Lcom/ta/util/db/entity/TATableInfoEntity;->getPropertieArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 111
    :cond_3
    new-instance v4, Lcom/ta/exception/TADBException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u4e0d\u80fd\u521b\u5efa+"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u7684\u8868\u4fe1\u606f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/ta/exception/TADBException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    .restart local v0    # "idField":Ljava/lang/reflect/Field;
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ta/util/db/entity/TATableInfoEntity;->setPkProperyEntity(Lcom/ta/util/db/entity/TAPKProperyEntity;)V

    goto :goto_0

    .line 113
    .end local v0    # "idField":Ljava/lang/reflect/Field;
    :cond_5
    return-object v3
.end method
