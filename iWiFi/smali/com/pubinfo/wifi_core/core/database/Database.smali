.class public Lcom/pubinfo/wifi_core/core/database/Database;
.super Ljava/lang/Object;
.source "Database.java"


# static fields
.field private static final COLUMN_ACCOUNT:Ljava/lang/String; = "account"

.field private static final COLUMN_DEVTYPE:Ljava/lang/String; = "devtype"

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_KEY:Ljava/lang/String; = "key"

.field private static final COLUMN_MAC:Ljava/lang/String; = "mac"

.field private static final COLUMN_PASSWORD:Ljava/lang/String; = "password"

.field private static final COLUMN_PHONE:Ljava/lang/String; = "phone"

.field private static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field private static final CREATE_USER_TABLE:Ljava/lang/String; = "create table if not exists userTable (type TEXT,phone TEXT,key TEXT,mac TEXT,devtype TEXT,id TEXT,account TEXT,password TEXT)"

.field public static final TABLE_USER:Ljava/lang/String; = "userTable"

.field private static final USER_ACCOUNT:I = 0x6

.field private static final USER_DEVTYPE:I = 0x4

.field private static final USER_ID:I = 0x5

.field private static final USER_KEY:I = 0x2

.field private static final USER_MAC:I = 0x3

.field private static final USER_PASSWORD:I = 0x7

.field private static final USER_PHONE:I = 0x1

.field private static final USER_TYPE:I

.field private static dataBaseName:Ljava/lang/String;

.field private static instance:Lcom/pubinfo/wifi_core/core/database/Database;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/pubinfo/wifi_core/core/database/Database;->instance:Lcom/pubinfo/wifi_core/core/database/Database;

    .line 32
    const-string v0, "FreeWifi"

    sput-object v0, Lcom/pubinfo/wifi_core/core/database/Database;->dataBaseName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    sget-object v0, Lcom/pubinfo/wifi_core/core/database/Database;->dataBaseName:Ljava/lang/String;

    const/4 v1, 0x0

    .line 188
    const/4 v2, 0x0

    .line 187
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/database/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 189
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/database/Database;->onCreate()V

    .line 190
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/pubinfo/wifi_core/core/database/Database;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const-class v1, Lcom/pubinfo/wifi_core/core/database/Database;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/pubinfo/wifi_core/core/database/Database;->mContext:Landroid/content/Context;

    .line 169
    sget-object v0, Lcom/pubinfo/wifi_core/core/database/Database;->instance:Lcom/pubinfo/wifi_core/core/database/Database;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/pubinfo/wifi_core/core/database/Database;

    invoke-direct {v0, p0}, Lcom/pubinfo/wifi_core/core/database/Database;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pubinfo/wifi_core/core/database/Database;->instance:Lcom/pubinfo/wifi_core/core/database/Database;

    .line 172
    :cond_0
    sget-object v0, Lcom/pubinfo/wifi_core/core/database/Database;->instance:Lcom/pubinfo/wifi_core/core/database/Database;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public deleteUser()V
    .locals 2

    .prologue
    .line 308
    const-string v0, "DELETE FROM userTable"

    .line 309
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/database/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public insertUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "devtype"    # Ljava/lang/String;
    .param p6, "id"    # Ljava/lang/String;
    .param p7, "account"    # Ljava/lang/String;
    .param p8, "password"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/database/Database;->deleteUser()V

    .line 248
    const-string v2, "REPLACE INTO userTable (type,phone,key,mac,devtype,id,account,password)VALUES(?, ?, ?, ?, ?, ?, ?, ?)"

    .line 254
    .local v2, "str":Ljava/lang/String;
    const/16 v3, 0x8

    :try_start_0
    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 v3, 0x1

    aput-object p2, v1, v3

    const/4 v3, 0x2

    aput-object p3, v1, v3

    const/4 v3, 0x3

    aput-object p4, v1, v3

    const/4 v3, 0x4

    aput-object p5, v1, v3

    const/4 v3, 0x5

    aput-object p6, v1, v3

    const/4 v3, 0x6

    aput-object p7, v1, v3

    const/4 v3, 0x7

    .line 255
    aput-object p8, v1, v3

    .line 256
    .local v1, "ob":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/pubinfo/wifi_core/core/database/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1    # "ob":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/database/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 202
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/database/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "create table if not exists userTable (type TEXT,phone TEXT,key TEXT,mac TEXT,devtype TEXT,id TEXT,account TEXT,password TEXT)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public selectUserRow()V
    .locals 8

    .prologue
    .line 272
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v5, "wifiInfoData":Ljava/util/List;, "Ljava/util/List<Lcom/pubinfo/wifi_core/core/database/WifiInfoData;>;"
    const-string v4, "SELECT * FROM userTable"

    .line 274
    .local v4, "sql":Ljava/lang/String;
    iget-object v6, p0, Lcom/pubinfo/wifi_core/core/database/Database;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 275
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 276
    .local v3, "numRows":I
    if-nez v3, :cond_0

    .line 277
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 296
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 280
    new-instance v1, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;

    invoke-direct {v1}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;-><init>()V

    .line 281
    .local v1, "data":Lcom/pubinfo/wifi_core/core/database/WifiInfoData;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 293
    invoke-static {}, Lcom/pubinfo/wifi_core/core/data/ComData;->getInstance()Lcom/pubinfo/wifi_core/core/data/ComData;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/pubinfo/wifi_core/core/data/ComData;->setWifiInfoData(Ljava/util/List;)V

    .line 294
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 282
    :cond_1
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->setType(Ljava/lang/String;)V

    .line 283
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->setPhone(Ljava/lang/String;)V

    .line 284
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->setKey(Ljava/lang/String;)V

    .line 285
    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->setDevtype(Ljava/lang/String;)V

    .line 286
    const/4 v6, 0x5

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->setId(Ljava/lang/String;)V

    .line 287
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->setMac(Ljava/lang/String;)V

    .line 288
    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->setAccount(Ljava/lang/String;)V

    .line 289
    const/4 v6, 0x7

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/pubinfo/wifi_core/core/database/WifiInfoData;->setPassword(Ljava/lang/String;)V

    .line 290
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
