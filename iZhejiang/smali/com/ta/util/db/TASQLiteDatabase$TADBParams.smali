.class public Lcom/ta/util/db/TASQLiteDatabase$TADBParams;
.super Ljava/lang/Object;
.source "TASQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/util/db/TASQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TADBParams"
.end annotation


# instance fields
.field private dbName:Ljava/lang/String;

.field private dbVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    const-string v0, "think_android.db"

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->dbName:Ljava/lang/String;

    .line 1055
    const/4 v0, 0x1

    iput v0, p0, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->dbVersion:I

    .line 1059
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbVersion"    # I

    .prologue
    .line 1061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    const-string v0, "think_android.db"

    iput-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->dbName:Ljava/lang/String;

    .line 1055
    const/4 v0, 0x1

    iput v0, p0, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->dbVersion:I

    .line 1063
    iput-object p1, p0, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->dbName:Ljava/lang/String;

    .line 1064
    iput p2, p0, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->dbVersion:I

    .line 1065
    return-void
.end method


# virtual methods
.method public getDbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDbVersion()I
    .locals 1

    .prologue
    .line 1079
    iget v0, p0, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->dbVersion:I

    return v0
.end method

.method public setDbName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->dbName:Ljava/lang/String;

    .line 1075
    return-void
.end method

.method public setDbVersion(I)V
    .locals 0
    .param p1, "dbVersion"    # I

    .prologue
    .line 1084
    iput p1, p0, Lcom/ta/util/db/TASQLiteDatabase$TADBParams;->dbVersion:I

    .line 1085
    return-void
.end method
