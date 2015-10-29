.class public Lcom/ta/util/db/TADBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TADBHelper.java"


# instance fields
.field private mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "tadbUpdateListener"    # Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 78
    iput-object p5, p0, Lcom/ta/util/db/TADBHelper;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    .line 79
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 95
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ta/util/db/TADBHelper;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/ta/util/db/TADBHelper;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 103
    :cond_0
    return-void
.end method

.method public setOndbUpdateListener(Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;)V
    .locals 0
    .param p1, "tadbUpdateListener"    # Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ta/util/db/TADBHelper;->mTadbUpdateListener:Lcom/ta/util/db/TASQLiteDatabase$TADBUpdateListener;

    .line 90
    return-void
.end method
