.class public Lcom/umeng/socialize/db/d;
.super Lcom/umeng/socialize/db/f;
.source "PlatformDao.java"


# static fields
.field private static final N:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/umeng/socialize/db/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/db/d;->N:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/db/f;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 26
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 37
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 40
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "keyword"

    aput-object v0, v2, v9

    .line 41
    const-string v0, "showord"

    aput-object v0, v2, v10

    const/4 v0, 0x2

    const-string v1, "icon_light"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 42
    const-string v1, "icon_grey"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "alive"

    aput-object v1, v2, v0

    .line 43
    const-string v1, "platforms"

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 46
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/db/d;->a(Landroid/database/Cursor;)V

    move-object v5, v8

    .line 57
    :goto_1
    return-object v5

    .line 47
    :cond_0
    new-instance v1, Lcom/umeng/socialize/bean/SnsPlatform;

    invoke-direct {v1}, Lcom/umeng/socialize/bean/SnsPlatform;-><init>()V

    .line 48
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    .line 49
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, Lcom/umeng/socialize/db/d;->N:Ljava/lang/String;

    const-string v1, "DB is close.............."

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
