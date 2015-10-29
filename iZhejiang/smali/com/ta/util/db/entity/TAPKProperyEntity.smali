.class public Lcom/ta/util/db/entity/TAPKProperyEntity;
.super Lcom/ta/util/db/entity/TAPropertyEntity;
.source "TAPKProperyEntity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/ta/util/db/entity/TAPropertyEntity;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;ZZZLjava/lang/String;)V
    .locals 0
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
    .line 30
    .line 31
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p7}, Lcom/ta/util/db/entity/TAPropertyEntity;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;ZZZLjava/lang/String;)V

    .line 33
    return-void
.end method
