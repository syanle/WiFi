.class public Lcom/ta/util/db/entity/TADBMasterEntity;
.super Lcom/ta/common/TABaseEntity;
.source "TADBMasterEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x3e9cc513b7b39cf4L


# instance fields
.field private name:Ljava/lang/String;

.field private rootpage:I

.field private sql:Ljava/lang/String;

.field private tbl_name:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ta/common/TABaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ta/util/db/entity/TADBMasterEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRootpage()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/ta/util/db/entity/TADBMasterEntity;->rootpage:I

    return v0
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ta/util/db/entity/TADBMasterEntity;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public getTbl_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ta/util/db/entity/TADBMasterEntity;->tbl_name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ta/util/db/entity/TADBMasterEntity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ta/util/db/entity/TADBMasterEntity;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setRootpage(I)V
    .locals 0
    .param p1, "rootpage"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/ta/util/db/entity/TADBMasterEntity;->rootpage:I

    .line 85
    return-void
.end method

.method public setSql(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ta/util/db/entity/TADBMasterEntity;->sql:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTbl_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "tbl_name"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ta/util/db/entity/TADBMasterEntity;->tbl_name:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ta/util/db/entity/TADBMasterEntity;->type:Ljava/lang/String;

    .line 45
    return-void
.end method
