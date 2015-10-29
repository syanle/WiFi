.class public Lcom/umeng/socialize/db/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SocializeDBHelper.java"

# interfaces
.implements Lcom/umeng/socialize/db/SocializeDBConstants;


# static fields
.field private static final N:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/umeng/socialize/db/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/db/f;->N:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 2

    .prologue
    .line 22
    const-string v0, "USocialize.db"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 109
    :cond_0
    return-void
.end method

.method protected a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 115
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 37
    const-string v0, "CREATE TABLE comment(_id INTEGER PRIMARY KEY AUTOINCREMENT,uid VARCHAR(20),user VARCHAR(20),avatar_icon VARCHAR(40),entity_key VARCHAR(20),content TEXT,data INTEGER(20),location VARCHAR(20));"

    .line 45
    sget-object v1, Lcom/umeng/socialize/db/f;->N:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " createSQL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string v0, "CREATE TABLE friends(_id INTEGER PRIMARY KEY AUTOINCREMENT,_name VARCHAR(20),fid VARCHAR(20),link_name VARCHAR(20),pinyin VARCHAR(20),initial VARCHAR(20),avatar_icon VARCHAR(20),usid VARCHAR(40),last_at_time INTEGER,alive INTEGER);"

    .line 58
    sget-object v1, Lcom/umeng/socialize/db/f;->N:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " createSQL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v0, "CREATE TABLE platforms(_id INTEGER PRIMARY KEY AUTOINCREMENT,keyword VARCHAR(20),showord VARCHAR(20),icon_light VARCHAR(20),icon_grey VARCHAR(40),alive INTEGER);"

    .line 68
    sget-object v1, Lcom/umeng/socialize/db/f;->N:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " createSQL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "CREATE TABLE accounts(_id INTEGER PRIMARY KEY AUTOINCREMENT,acc_id VARCHAR(20),usid VARCHAR(20),keyword VARCHAR(20),username VARCHAR(20),gender VARCHAR(10),avatar_url VARCHAR(40),default_acc INTEGER);"

    .line 80
    sget-object v1, Lcom/umeng/socialize/db/f;->N:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " createSQL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 84
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 85
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 89
    sget-object v0, Lcom/umeng/socialize/db/f;->N:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DAOHelper.onUpgade do it  oldVersion:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "DROP TABLE IF EXISTS comment;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string v0, "DROP TABLE IF EXISTS friends;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 94
    const-string v0, "DROP TABLE IF EXISTS platforms;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string v0, "DROP TABLE IF EXISTS accounts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/db/f;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    return-void
.end method
