.class public Lcom/umeng/socialize/db/b;
.super Lcom/umeng/socialize/db/f;
.source "FriendDao.java"


# static fields
.field private static final N:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/umeng/socialize/db/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/db/f;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 29
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 241
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    .line 242
    const-string v1, "_name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "avatar_icon"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 243
    const-string v1, "usid"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "last_at_time"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    .line 244
    const-string v1, "fid"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "alive"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    .line 245
    const-string v1, "link_name"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    .line 246
    const-string v1, "pinyin"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    .line 247
    const-string v1, "initial"

    aput-object v1, v2, v0

    .line 249
    const-string v1, "friends"

    .line 250
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    .line 249
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 252
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-gez p5, :cond_1

    .line 253
    :goto_1
    new-instance v2, Lcom/umeng/socialize/bean/UMFriend;

    invoke-direct {v2}, Lcom/umeng/socialize/bean/UMFriend;-><init>()V

    .line 254
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/umeng/socialize/bean/UMFriend;->setId(I)V

    .line 255
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/umeng/socialize/bean/UMFriend;->setName(Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/umeng/socialize/bean/UMFriend;->setIcon(Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/umeng/socialize/bean/UMFriend;->setUsid(Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/umeng/socialize/bean/UMFriend;->setLastAtTime(J)V

    .line 259
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/umeng/socialize/bean/UMFriend;->setFid(Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 261
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/umeng/socialize/bean/UMFriend;->setAlive(Z)V

    .line 262
    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/umeng/socialize/bean/UMFriend;->setLinkName(Ljava/lang/String;)V

    .line 264
    new-instance v0, Lcom/umeng/socialize/bean/UMFriend$a;

    invoke-direct {v0}, Lcom/umeng/socialize/bean/UMFriend$a;-><init>()V

    .line 265
    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/umeng/socialize/bean/UMFriend$a;->a:Ljava/lang/String;

    .line 266
    const/16 v3, 0x9

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/umeng/socialize/bean/UMFriend$a;->b:Ljava/lang/String;

    .line 268
    invoke-virtual {v2, v0}, Lcom/umeng/socialize/bean/UMFriend;->setPinyin(Lcom/umeng/socialize/bean/UMFriend$a;)V

    .line 270
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 252
    :cond_1
    add-int/lit8 v0, p5, -0x1

    if-gtz p5, :cond_4

    .line 273
    :cond_2
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/Cursor;)V

    move-object v0, v8

    .line 278
    :goto_3
    return-object v0

    .line 276
    :cond_3
    sget-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    const-string v1, "DB is close.............."

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    move p5, v0

    goto :goto_1
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Lcom/umeng/socialize/bean/UMFriend;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/umeng/socialize/db/b;->c(Lcom/umeng/socialize/bean/UMFriend;)Landroid/content/ContentValues;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 77
    const-string v1, "friends"

    const-string v2, "fid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/UMFriend;->getFid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update friend "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_0
    monitor-exit p0

    return-void

    .line 80
    :cond_0
    :try_start_1
    sget-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can`t update friend to db...(openDB="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " usid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/UMFriend;->getUsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/UMFriend;->getFid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Landroid/database/sqlite/SQLiteDatabase;Lcom/umeng/socialize/bean/UMFriend;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/umeng/socialize/db/b;->c(Lcom/umeng/socialize/bean/UMFriend;)Landroid/content/ContentValues;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 88
    const-string v1, "friends"

    const-string v2, "_id"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 89
    sget-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert friend "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    sget-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can`t insert friend to db...(openDB="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " usid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/UMFriend;->getUsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/UMFriend;->getFid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Lcom/umeng/socialize/bean/UMFriend;)Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getUsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 98
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getFid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 100
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 101
    const-string v0, "_name"

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "link_name"

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getLinkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getPinyin()Lcom/umeng/socialize/bean/UMFriend$a;

    move-result-object v3

    .line 104
    const-string v1, ""

    .line 105
    const-string v0, ""

    .line 106
    if-eqz v3, :cond_0

    .line 107
    iget-object v1, v3, Lcom/umeng/socialize/bean/UMFriend$a;->a:Ljava/lang/String;

    .line 108
    iget-object v0, v3, Lcom/umeng/socialize/bean/UMFriend$a;->b:Ljava/lang/String;

    .line 110
    :cond_0
    const-string v3, "pinyin"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "initial"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "usid"

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getUsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "fid"

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getFid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->isAlive()Z

    move-result v0

    .line 115
    const-string v1, "alive"

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const-string v0, "avatar_icon"

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getIcon()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getUsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    const-string v0, "usid"

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getUsid()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getLastAtTime()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    .line 126
    const-string v0, "last_at_time"

    .line 127
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getLastAtTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 126
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    move-object v0, v2

    .line 131
    :goto_1
    return-object v0

    .line 115
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/umeng/socialize/db/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 142
    const/4 v6, 0x0

    .line 144
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v2, "usid = ? AND alive = ?"

    .line 146
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const/4 v0, 0x1

    const-string v4, "0"

    aput-object v4, v3, v0

    const-string v4, "_id ASC"

    const/4 v5, -0x1

    move-object v0, p0

    .line 145
    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 153
    :goto_0
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 155
    :goto_1
    return-object v0

    .line 148
    :cond_0
    :try_start_1
    sget-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    const-string v2, "DB is close.............."

    invoke-static {v0, v2}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 150
    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    :try_start_2
    sget-object v2, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v6

    goto :goto_1

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 154
    throw v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/umeng/socialize/db/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 166
    const/4 v6, 0x0

    .line 168
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v2, "usid = ?  AND last_at_time IS NOT NULL "

    .line 170
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    const-string v4, "last_at_time DESC"

    move-object v0, p0

    move v5, p2

    .line 169
    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 177
    :goto_0
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 179
    :goto_1
    return-object v0

    .line 172
    :cond_0
    :try_start_1
    sget-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    const-string v2, "DB is close.............."

    invoke-static {v0, v2}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 174
    goto :goto_0

    :catch_0
    move-exception v0

    .line 175
    :try_start_2
    sget-object v2, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v6

    goto :goto_1

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 178
    throw v0
.end method

.method public declared-synchronized a(Lcom/umeng/socialize/bean/UMFriend;)V
    .locals 5

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/socialize/db/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 185
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, v1, p1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/umeng/socialize/bean/UMFriend;)V

    .line 187
    sget-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update friend name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   usid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getUsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   last_at_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getLastAtTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/socom/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    :goto_0
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :goto_1
    monitor-exit p0

    return-void

    .line 189
    :cond_0
    :try_start_3
    sget-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    const-string v2, "DB is close.............."

    invoke-static {v0, v2}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    :try_start_4
    sget-object v2, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 194
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 193
    :catchall_1
    move-exception v0

    .line 194
    :try_start_6
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 195
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 38
    monitor-enter p0

    const/4 v2, 0x0

    .line 39
    if-nez p1, :cond_0

    .line 40
    :try_start_0
    sget-object v1, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    const-string v2, "no friend insert.."

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/umeng/socialize/db/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 65
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    if-eqz v2, :cond_2

    .line 68
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 70
    :cond_2
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 47
    :cond_3
    :try_start_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/umeng/socialize/bean/UMFriend;

    move-object v7, v0

    .line 48
    const-string v3, "fid = ? AND usid = ? "

    .line 49
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v7}, Lcom/umeng/socialize/bean/UMFriend;->getFid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-virtual {v7}, Lcom/umeng/socialize/bean/UMFriend;->getUsid()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "_id ASC"

    const/4 v6, -0x1

    move-object v1, p0

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 51
    sget-object v3, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exits  same Friends in DB where FID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/umeng/socialize/bean/UMFriend;->getFid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND Usid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/umeng/socialize/bean/UMFriend;->getUsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/socom/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v9, :cond_4

    .line 53
    sget-object v3, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exits mutil Friends in DB where FID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/umeng/socialize/bean/UMFriend;->getFid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND Usid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/umeng/socialize/bean/UMFriend;->getUsid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   will update all"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/socialize/bean/UMFriend;

    .line 57
    invoke-virtual {v1, v7}, Lcom/umeng/socialize/bean/UMFriend;->isUpdate(Lcom/umeng/socialize/bean/UMFriend;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    sget-object v1, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Exits  friend  in DB where FID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/umeng/socialize/bean/UMFriend;->getFid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND Usid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/umeng/socialize/bean/UMFriend;->getUsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/umeng/socom/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, v2, v7}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/umeng/socialize/bean/UMFriend;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    .line 66
    :catchall_1
    move-exception v1

    .line 67
    if-eqz v2, :cond_5

    .line 68
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 70
    :cond_5
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    :cond_6
    :try_start_5
    invoke-direct {p0, v2, v7}, Lcom/umeng/socialize/db/b;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/umeng/socialize/bean/UMFriend;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1
.end method

.method public declared-synchronized b(Lcom/umeng/socialize/bean/UMFriend;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/socialize/db/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 206
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 208
    const-string v2, "last_at_time"

    .line 209
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getLastAtTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 208
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 210
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 211
    const-string v2, "friends"

    const-string v3, "fid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getFid()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    sget-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update friend "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/socom/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    sget-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Update friend  time only  name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   usid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getUsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   last_at_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getLastAtTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/socom/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 224
    :goto_1
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    :goto_2
    monitor-exit p0

    return-void

    .line 214
    :cond_0
    :try_start_3
    sget-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can`t update time only to db...(openDB="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " usid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getUsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getFid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v0, v2}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    :try_start_4
    sget-object v2, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 224
    :try_start_5
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 219
    :cond_1
    :try_start_6
    sget-object v0, Lcom/umeng/socialize/db/b;->N:Ljava/lang/String;

    const-string v2, "DB is close.............."

    invoke-static {v0, v2}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 223
    :catchall_1
    move-exception v0

    .line 224
    :try_start_7
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 225
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method
