.class public Lcom/cat/entity/TestDataEntity;
.super Ljava/lang/Object;
.source "TestDataEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6ef67e69443b7213L
    .annotation runtime Lcom/ta/util/db/annotation/TATransient;
    .end annotation
.end field


# instance fields
.field auto:I
    .annotation runtime Lcom/ta/util/db/annotation/TAPrimaryKey;
        autoIncrement = true
    .end annotation
.end field

.field b:Ljava/lang/Boolean;

.field c:C

.field d:D

.field date:Ljava/util/Date;

.field f:F

.field i:I
    .annotation runtime Lcom/ta/annotation/TACompareAnnotation;
        sortFlag = 0x0
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lcom/ta/util/db/annotation/TAColumn;
        name = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuto()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/cat/entity/TestDataEntity;->auto:I

    return v0
.end method

.method public getB()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cat/entity/TestDataEntity;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getC()C
    .locals 1

    .prologue
    .line 49
    iget-char v0, p0, Lcom/cat/entity/TestDataEntity;->c:C

    return v0
.end method

.method public getD()D
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/cat/entity/TestDataEntity;->d:D

    return-wide v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cat/entity/TestDataEntity;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getF()F
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/cat/entity/TestDataEntity;->f:F

    return v0
.end method

.method public getI()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/cat/entity/TestDataEntity;->i:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cat/entity/TestDataEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAuto(I)V
    .locals 0
    .param p1, "auto"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/cat/entity/TestDataEntity;->auto:I

    .line 105
    return-void
.end method

.method public setB(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cat/entity/TestDataEntity;->b:Ljava/lang/Boolean;

    .line 75
    return-void
.end method

.method public setC(C)V
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 54
    iput-char p1, p0, Lcom/cat/entity/TestDataEntity;->c:C

    .line 55
    return-void
.end method

.method public setD(D)V
    .locals 0
    .param p1, "d"    # D

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/cat/entity/TestDataEntity;->d:D

    .line 95
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cat/entity/TestDataEntity;->date:Ljava/util/Date;

    .line 45
    return-void
.end method

.method public setF(F)V
    .locals 0
    .param p1, "f"    # F

    .prologue
    .line 84
    iput p1, p0, Lcom/cat/entity/TestDataEntity;->f:F

    .line 85
    return-void
.end method

.method public setI(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/cat/entity/TestDataEntity;->i:I

    .line 65
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cat/entity/TestDataEntity;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getName"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cat/entity/TestDataEntity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--getC--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cat/entity/TestDataEntity;->getC()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--getD--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/cat/entity/TestDataEntity;->getD()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--getI--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cat/entity/TestDataEntity;->getI()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--getF--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cat/entity/TestDataEntity;->getF()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string v1, "--getB--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cat/entity/TestDataEntity;->getB()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--getDate--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cat/entity/TestDataEntity;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/cat/entity/TestDataEntity;->getAuto()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
