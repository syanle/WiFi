.class public Lcom/umeng/socialize/db/a;
.super Lcom/umeng/socialize/db/f;
.source "CommentDao.java"


# static fields
.field private static final N:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/umeng/socialize/db/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/db/a;->N:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/db/f;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 36
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/umeng/socialize/bean/UMComment;)V
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/umeng/socialize/bean/UMComment;->mUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p3, Lcom/umeng/socialize/bean/UMComment;->mUname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/umeng/socialize/bean/UMComment;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    const-string v1, "uid"

    iget-object v2, p3, Lcom/umeng/socialize/bean/UMComment;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "entity_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v1, "content"

    iget-object v2, p3, Lcom/umeng/socialize/bean/UMComment;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "avatar_icon"

    iget-object v2, p3, Lcom/umeng/socialize/bean/UMComment;->mUserIcon:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "location"

    iget-object v2, p3, Lcom/umeng/socialize/bean/UMComment;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/UMLocation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "user"

    iget-object v2, p3, Lcom/umeng/socialize/bean/UMComment;->mUname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "data"

    iget-wide v2, p3, Lcom/umeng/socialize/bean/UMComment;->mDt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string v1, "comment"

    const-string v2, "_id"

    invoke-virtual {p2, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 107
    sget-object v0, Lcom/umeng/socialize/db/a;->N:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert comment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p3, Lcom/umeng/socialize/bean/UMComment;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/umeng/socialize/db/a;->N:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can`t insert comment to db...(openDB="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ek="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 110
    const-string v2, " mUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/umeng/socialize/bean/UMComment;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/umeng/socialize/bean/UMComment;->mUname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 111
    iget-object v2, p3, Lcom/umeng/socialize/bean/UMComment;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMComment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/umeng/socialize/db/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    const-string v1, "comment"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 123
    const-string v4, "uid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "user"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 124
    const-string v4, "location"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "avatar_icon"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 125
    const-string v4, "data"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "content"

    aput-object v4, v2, v3

    .line 126
    const-string v3, "entity_key = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 127
    const-string v7, "data DESC"

    .line 122
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    move v2, v10

    .line 130
    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    move-object v8, v9

    .line 148
    :goto_1
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/a;->a(Landroid/database/Cursor;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 151
    :goto_2
    return-object v8

    .line 131
    :cond_0
    :try_start_3
    new-instance v3, Lcom/umeng/socialize/bean/UMComment;

    invoke-direct {v3}, Lcom/umeng/socialize/bean/UMComment;-><init>()V

    .line 132
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/umeng/socialize/bean/UMComment;->mUid:Ljava/lang/String;

    .line 133
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/umeng/socialize/bean/UMComment;->mUname:Ljava/lang/String;

    .line 134
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/socialize/bean/UMLocation;->build(Ljava/lang/String;)Lcom/umeng/socialize/bean/UMLocation;

    move-result-object v4

    iput-object v4, v3, Lcom/umeng/socialize/bean/UMComment;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    .line 135
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/umeng/socialize/bean/UMComment;->mUserIcon:Ljava/lang/String;

    .line 136
    const/4 v4, 0x4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/umeng/socialize/bean/UMComment;->mDt:J

    .line 137
    const/4 v4, 0x5

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/umeng/socialize/bean/UMComment;->mText:Ljava/lang/String;

    .line 138
    add-int/lit8 v2, v2, 0x1

    .line 139
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v2

    move-object v8, v9

    move-object v11, v1

    move-object v1, v2

    move-object v2, v11

    .line 146
    :goto_3
    :try_start_4
    sget-object v3, Lcom/umeng/socialize/db/a;->N:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 148
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/db/a;->a(Landroid/database/Cursor;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 143
    :cond_1
    :try_start_5
    sget-object v1, Lcom/umeng/socialize/db/a;->N:Ljava/lang/String;

    const-string v2, "DB is close.............."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, v8

    .line 145
    goto :goto_1

    .line 147
    :catchall_0
    move-exception v1

    .line 148
    :goto_4
    invoke-virtual {p0, v8}, Lcom/umeng/socialize/db/a;->a(Landroid/database/Cursor;)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 150
    throw v1

    .line 147
    :catchall_1
    move-exception v2

    move-object v8, v1

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v2

    goto :goto_4

    .line 145
    :catch_1
    move-exception v1

    move-object v2, v8

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v8

    move-object v8, v9

    goto :goto_3

    :cond_2
    move-object v8, v9

    goto :goto_1
.end method

.method public a(Lcom/umeng/socialize/bean/UMComment;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/socialize/db/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 42
    invoke-direct {p0, p2, v1, p1}, Lcom/umeng/socialize/db/a;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/umeng/socialize/bean/UMComment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 45
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    throw v0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMComment;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/socialize/db/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 63
    :cond_0
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    return-void

    .line 55
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMComment;

    .line 56
    invoke-direct {p0, p2, v1, v0}, Lcom/umeng/socialize/db/a;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/umeng/socialize/bean/UMComment;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 63
    :cond_2
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    throw v0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMComment;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 68
    const/4 v1, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/socialize/db/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 73
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 74
    const-string v2, "comment"

    const-string v3, "entity_key = ?"

    .line 75
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 74
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move v2, v0

    .line 77
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    if-lt v2, p3, :cond_2

    .line 80
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_1
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    :cond_1
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    return-void

    .line 78
    :cond_2
    :try_start_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/UMComment;

    invoke-direct {p0, p2, v1, v0}, Lcom/umeng/socialize/db/a;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/umeng/socialize/bean/UMComment;)V

    .line 77
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 82
    :cond_3
    sget-object v0, Lcom/umeng/socialize/db/a;->N:Ljava/lang/String;

    const-string v2, "DB is close.............."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    if-eqz v1, :cond_4

    .line 86
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 88
    :cond_4
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 89
    throw v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    const/4 v2, 0x0

    .line 157
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/socialize/db/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 158
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    const-string v1, "comment"

    const-string v3, "entity_key = ?"

    .line 160
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 159
    invoke-virtual {v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 168
    :goto_0
    return v0

    .line 163
    :cond_0
    :try_start_2
    sget-object v0, Lcom/umeng/socialize/db/a;->N:Ljava/lang/String;

    const-string v3, "DB is close.............."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    move v0, v1

    .line 168
    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 166
    :goto_1
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/db/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 167
    throw v0

    .line 165
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
