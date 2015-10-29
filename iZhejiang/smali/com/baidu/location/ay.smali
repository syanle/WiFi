.class Lcom/baidu/location/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/ax;
.implements Lcom/baidu/location/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/ay$a;,
        Lcom/baidu/location/ay$b;
    }
.end annotation


# static fields
.field private static im:Lcom/baidu/location/ay;


# instance fields
.field private volatile iA:Z

.field private final iB:Ljava/lang/String;

.field private iC:I

.field private final iD:Ljava/lang/String;

.field private iE:Z

.field private final iF:I

.field private iG:Ljava/lang/String;

.field private in:Z

.field private io:Ljava/lang/String;

.field private ip:J

.field private final iq:I

.field private ir:D

.field private is:D

.field private final it:Ljava/lang/String;

.field private iu:D

.field private iv:D

.field private iw:Z

.field private ix:Z

.field private iy:Z

.field private iz:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/ay;->im:Lcom/baidu/location/ay;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/baidu/location/ay;->iG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/ay;->iy:Z

    iput-boolean v2, p0, Lcom/baidu/location/ay;->iE:Z

    iput-boolean v2, p0, Lcom/baidu/location/ay;->in:Z

    iput-object v3, p0, Lcom/baidu/location/ay;->io:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/location/ay;->iC:I

    iput-wide v0, p0, Lcom/baidu/location/ay;->iv:D

    iput-wide v0, p0, Lcom/baidu/location/ay;->iu:D

    iput-wide v0, p0, Lcom/baidu/location/ay;->iz:D

    iput-wide v0, p0, Lcom/baidu/location/ay;->is:D

    iput-wide v0, p0, Lcom/baidu/location/ay;->ir:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/ay;->ip:J

    iput-boolean v2, p0, Lcom/baidu/location/ay;->iw:Z

    iput-boolean v2, p0, Lcom/baidu/location/ay;->iA:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/location/ay;->iq:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/baidu/location/ay;->iF:I

    const-string v0, "bdcltb09"

    iput-object v0, p0, Lcom/baidu/location/ay;->it:Ljava/lang/String;

    const-string v0, "wof"

    iput-object v0, p0, Lcom/baidu/location/ay;->iD:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/ay;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ls.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/ay;->iB:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/ay;->ix:Z

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/location/ay;->cg()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private byte(Z)Ljava/lang/String;
    .locals 11

    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-boolean v4, p0, Lcom/baidu/location/ay;->iE:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    iget-wide v7, p0, Lcom/baidu/location/ay;->is:D

    iget-wide v5, p0, Lcom/baidu/location/ay;->ir:D

    const-wide v2, 0x406ecccccccccccdL    # 246.4

    const/4 v0, 0x1

    move-wide v9, v2

    move-wide v3, v7

    move v7, v0

    move v8, v1

    :goto_0
    invoke-static {}, Lcom/baidu/location/j;->cZ()Lcom/baidu/location/j;

    move-result-object v0

    iget-boolean v1, p0, Lcom/baidu/location/ay;->iy:Z

    iget-boolean v2, p0, Lcom/baidu/location/ay;->iE:Z

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/location/j;->if(ZZDD)V

    if-eqz v8, :cond_2

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/c;->new()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"66\"},\"content\":{\"point\":{\"x\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-boolean v4, p0, Lcom/baidu/location/ay;->iy:Z

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    iget-wide v7, p0, Lcom/baidu/location/ay;->iv:D

    iget-wide v5, p0, Lcom/baidu/location/ay;->iu:D

    iget-wide v2, p0, Lcom/baidu/location/ay;->iz:D

    invoke-static {}, Lcom/baidu/location/ah;->ay()Lcom/baidu/location/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ah;->aA()Z

    move-result v0

    move-wide v9, v2

    move-wide v3, v7

    move v7, v0

    move v8, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/c;->new()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"68\"},\"content\":{\"point\":{\"x\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/c;->new()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"67\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/c;->new()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"63\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    move-wide v9, v2

    move-wide v3, v7

    move v7, v0

    move v8, v1

    goto/16 :goto_0
.end method

.method public static cd()Lcom/baidu/location/ay;
    .locals 1

    sget-object v0, Lcom/baidu/location/ay;->im:Lcom/baidu/location/ay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/ay;

    invoke-direct {v0}, Lcom/baidu/location/ay;-><init>()V

    sput-object v0, Lcom/baidu/location/ay;->im:Lcom/baidu/location/ay;

    :cond_0
    sget-object v0, Lcom/baidu/location/ay;->im:Lcom/baidu/location/ay;

    return-object v0
.end method

.method private ce()V
    .locals 12

    const-wide/16 v10, 0x2710

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/ay;->iB:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-nez v4, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v4, v5

    goto :goto_0

    :cond_0
    const-string v0, "wof"

    invoke-static {v4, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "bdcltb09"

    invoke-static {v4, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    move v3, v1

    :goto_2
    cmp-long v0, v8, v10

    if-lez v0, :cond_4

    move v0, v1

    :goto_3
    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    new-instance v6, Lcom/baidu/location/ay$a;

    invoke-direct {v6, p0, v5}, Lcom/baidu/location/ay$a;-><init>(Lcom/baidu/location/ay;Lcom/baidu/location/ay$1;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v6, v5}, Lcom/baidu/location/ay$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method private cf()V
    .locals 1

    invoke-static {}, Lcom/baidu/location/t;->an()Lcom/baidu/location/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/t;->ak()Lcom/baidu/location/t$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/location/t$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/ay;->r(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/baidu/location/ar;->bW()Lcom/baidu/location/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ar;->bS()Lcom/baidu/location/ar$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/ay;->for(Lcom/baidu/location/ar$b;)V

    return-void
.end method

.method private cg()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/ay;->I:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/location/ay;->iB:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "CREATE TABLE IF NOT EXISTS bdcltb09(id CHAR(40) PRIMARY KEY,time DOUBLE,tag DOUBLE, type DOUBLE , ac INT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE IF NOT EXISTS wof(id CHAR(15) PRIMARY KEY,mktime DOUBLE,time DOUBLE, ac INT, bc INT, cc INT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic do(Lcom/baidu/location/ay;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/ay;->ce()V

    return-void
.end method

.method private for(Lcom/baidu/location/ar$b;)V
    .locals 24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/baidu/location/ay;->iE:Z

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/baidu/location/ar$b;->for:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/ay;->iB:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object/from16 v20, v1

    :goto_1
    if-eqz v20, :cond_0

    if-eqz p1, :cond_0

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/baidu/location/ar$b;->for:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move v10, v1

    move-object v11, v2

    move v12, v3

    move v13, v4

    move-wide v14, v5

    move-wide/from16 v16, v7

    move v2, v9

    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    add-int/lit8 v18, v2, 0x1

    const/16 v2, 0xa

    move/from16 v0, v18

    if-le v0, v2, :cond_4

    :cond_2
    :goto_3
    if-lez v13, :cond_3

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/baidu/location/ay;->iE:Z

    int-to-double v1, v13

    div-double v1, v16, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/baidu/location/ay;->is:D

    int-to-double v1, v13

    div-double v1, v14, v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/baidu/location/ay;->ir:D

    :cond_3
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    move-object/from16 v20, v1

    goto :goto_1

    :cond_4
    iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/Jni;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select * from wof where id = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    const-wide v3, 0x405c4f089a027525L    # 113.2349

    sub-double v3, v1, v3

    const/4 v1, 0x2

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    const-wide v6, 0x407b01fb15b573ebL    # 432.1238

    sub-double/2addr v1, v6

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/16 v5, 0x8

    if-le v7, v5, :cond_5

    if-le v7, v6, :cond_5

    move/from16 v2, v18

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/baidu/location/ay;->iy:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    new-array v9, v5, [F

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/baidu/location/ay;->iu:D

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/baidu/location/ay;->iv:D

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v5, 0x0

    aget v5, v9, v5

    float-to-double v5, v5

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/baidu/location/ay;->iz:D

    const-wide v22, 0x409f400000000000L    # 2000.0

    add-double v7, v7, v22

    cmpl-double v5, v5, v7

    if-lez v5, :cond_6

    move/from16 v2, v18

    goto/16 :goto_2

    :cond_6
    const/4 v12, 0x1

    add-double v16, v16, v3

    add-double/2addr v14, v1

    add-int/lit8 v13, v13, 0x1

    move v1, v10

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    move-wide/from16 v7, v16

    :goto_4
    const/4 v9, 0x4

    if-le v4, v9, :cond_e

    move v13, v4

    move-wide v14, v5

    move-wide/from16 v16, v7

    goto/16 :goto_3

    :cond_7
    if-eqz v12, :cond_9

    const/4 v5, 0x1

    new-array v9, v5, [F

    int-to-double v5, v13

    div-double v5, v14, v5

    int-to-double v7, v13

    div-double v7, v16, v7

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v1, 0x0

    aget v1, v9, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    move/from16 v2, v18

    goto/16 :goto_2

    :cond_8
    move v1, v10

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    move-wide/from16 v7, v16

    goto :goto_4

    :cond_9
    if-nez v11, :cond_a

    const/16 v5, 0x8

    new-array v11, v5, [D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v5, v10, 0x1

    :try_start_2
    aput-wide v3, v11, v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v10, v5, 0x1

    :try_start_3
    aput-wide v1, v11, v5

    move v1, v10

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    move-wide/from16 v7, v16

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    move/from16 v19, v5

    :goto_5
    move/from16 v0, v19

    if-ge v0, v10, :cond_b

    const/4 v5, 0x1

    new-array v9, v5, [F

    add-int/lit8 v5, v19, 0x1

    aget-wide v5, v11, v5

    aget-wide v7, v11, v19

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v5, 0x0

    aget v5, v9, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/high16 v6, 0x447a0000    # 1000.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_10

    const/4 v5, 0x1

    :try_start_4
    aget-wide v6, v11, v19

    add-double v16, v16, v6

    add-int/lit8 v6, v19, 0x1

    aget-wide v6, v11, v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    add-double v7, v14, v6

    add-int/lit8 v6, v13, 0x1

    move-wide/from16 v12, v16

    :goto_6
    add-int/lit8 v9, v19, 0x2

    move/from16 v19, v9

    move-wide v14, v7

    move-wide/from16 v16, v12

    move v12, v5

    move v13, v6

    goto :goto_5

    :cond_b
    if-eqz v12, :cond_c

    add-double v16, v16, v3

    add-double/2addr v14, v1

    add-int/lit8 v13, v13, 0x1

    move v1, v10

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    move-wide/from16 v7, v16

    goto/16 :goto_4

    :cond_c
    const/16 v5, 0x8

    if-ge v10, v5, :cond_d

    add-int/lit8 v5, v10, 0x1

    :try_start_5
    aput-wide v3, v11, v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v10, v5, 0x1

    :try_start_6
    aput-wide v1, v11, v5

    move v1, v10

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    move-wide/from16 v7, v16

    goto/16 :goto_4

    :cond_d
    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move v1, v10

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide v5, v14

    move-wide/from16 v7, v16

    :cond_e
    :goto_7
    move v10, v1

    move-object v11, v2

    move v12, v3

    move v13, v4

    move-wide v14, v5

    move-wide/from16 v16, v7

    move/from16 v2, v18

    goto/16 :goto_2

    :cond_f
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move/from16 v2, v18

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move v1, v5

    move-object v2, v11

    move v3, v12

    move v4, v13

    move-wide/from16 v7, v16

    move-wide v5, v14

    goto :goto_7

    :catch_3
    move-exception v1

    move v1, v10

    move-object v2, v11

    move v3, v5

    move v4, v13

    move-wide/from16 v7, v16

    move-wide v5, v14

    goto :goto_7

    :cond_10
    move v5, v12

    move v6, v13

    move-wide v7, v14

    move-wide/from16 v12, v16

    goto :goto_6
.end method

.method static synthetic if(Lcom/baidu/location/ay;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/ay;->iB:Ljava/lang/String;

    return-object v0
.end method

.method private if(Lcom/baidu/location/ar$b;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0xa1

    if-ne v1, v2, :cond_0

    const-string v1, "wf"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v1

    const/high16 v2, 0x43960000    # 300.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/baidu/location/ar$b;->for:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x1c

    shr-long/2addr v2, v4

    long-to-int v13, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/baidu/location/ar$b;->for:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v2, v1

    :cond_2
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget v3, v1, Landroid/net/wifi/ScanResult;->level:I

    if-eqz v3, :cond_2

    add-int/lit8 v10, v2, 0x1

    const/4 v2, 0x6

    if-gt v10, v2, :cond_0

    const-wide/16 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v9, ":"

    const-string v11, ""

    invoke-virtual {v1, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/location/Jni;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "select * from wof where id = \""

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "\";"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    const-wide v3, 0x405c4f089a027525L    # 113.2349

    sub-double v6, v1, v3

    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    const-wide v3, 0x407b01fb15b573ebL    # 432.1238

    sub-double v4, v1, v3

    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v1, 0x1

    move v11, v2

    move v12, v3

    move/from16 v17, v1

    move-wide v1, v4

    move/from16 v5, v17

    move-wide v3, v6

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    if-nez v5, :cond_4

    const-string v1, "mktime"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x405c4f089a027525L    # 113.2349

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "time"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x407b01fb15b573ebL    # 432.1238

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "bc"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cc"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "ac"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "id"

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wof"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_3
    :goto_2
    move v2, v10

    goto/16 :goto_0

    :cond_4
    if-nez v11, :cond_5

    move v2, v10

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x1

    new-array v9, v5, [F

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v7

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v5, 0x0

    aget v5, v9, v5

    const v6, 0x44bb8000    # 1500.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    add-int/lit8 v1, v11, 0x1

    const/16 v2, 0xa

    if-le v1, v2, :cond_6

    mul-int/lit8 v2, v12, 0x3

    if-le v1, v2, :cond_6

    const-string v1, "mktime"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    const-wide v4, 0x405c4f089a027525L    # 113.2349

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "time"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v2

    const-wide v4, 0x407b01fb15b573ebL    # 432.1238

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "bc"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "cc"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "ac"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    :try_start_1
    const-string v1, "wof"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-gtz v1, :cond_3

    goto/16 :goto_2

    :cond_6
    :try_start_2
    const-string v2, "cc"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :cond_7
    int-to-double v5, v12

    mul-double/2addr v3, v5

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v5

    add-double/2addr v3, v5

    add-int/lit8 v5, v12, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    int-to-double v5, v12

    mul-double/2addr v1, v5

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v5

    add-double/2addr v1, v5

    add-int/lit8 v5, v12, 0x1

    int-to-double v5, v5

    div-double/2addr v1, v5

    const-string v5, "mktime"

    const-wide v6, 0x405c4f089a027525L    # 113.2349

    add-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v15, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v3, "time"

    const-wide v4, 0x407b01fb15b573ebL    # 432.1238

    add-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v15, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v1, "bc"

    add-int/lit8 v2, v12, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "ac"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_2

    :cond_8
    move v11, v3

    move v12, v4

    move-wide v3, v7

    move-wide/from16 v17, v5

    move v5, v2

    move-wide/from16 v1, v17

    goto/16 :goto_1
.end method

.method static synthetic if(Lcom/baidu/location/ay;Lcom/baidu/location/ar$b;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/ay;->if(Lcom/baidu/location/ar$b;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/ay;Ljava/lang/String;Lcom/baidu/location/t$a;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/ay;->if(Ljava/lang/String;Lcom/baidu/location/t$a;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private if(Ljava/lang/String;Lcom/baidu/location/t$a;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    invoke-virtual {p2}, Lcom/baidu/location/t$a;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/ah;->ay()Lcom/baidu/location/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ah;->aA()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v0, 0x1c

    shr-long/2addr v6, v0

    long-to-int v6, v6

    invoke-virtual {p2}, Lcom/baidu/location/t$a;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v9, "result"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "error"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0xa1

    if-ne v9, v10, :cond_4

    const-string v9, "content"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "clf"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v0, 0x0

    const-string v1, "clf"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "point"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v1, "radius"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :cond_2
    :goto_1
    if-nez v0, :cond_0

    const-wide v8, 0x40934dbaacd9e83eL    # 1235.4323

    add-double/2addr v4, v8

    const-wide v8, 0x40a27ea4b5dcc63fL    # 2367.3217

    add-double/2addr v2, v8

    const v0, 0x45873000    # 4326.0f

    add-float/2addr v0, v1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "time"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v4, "tag"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v0, "type"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "ac"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_1
    const-string v0, "bdcltb09"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {v1, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bdcltb09"

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_3
    :try_start_2
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v8, 0x2

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto/16 :goto_1

    :cond_4
    const/16 v8, 0xa7

    if-ne v9, v8, :cond_2

    const-string v0, "bdcltb09"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic if(Lcom/baidu/location/ay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/ay;->iA:Z

    return p1
.end method

.method private k(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Lcom/baidu/location/k;->p()Lcom/baidu/location/k;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/location/ay;->case(Z)Lcom/baidu/location/BDLocation;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/location/k;->if(Lcom/baidu/location/BDLocation;Landroid/os/Message;)V

    return-void
.end method

.method private r(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/ay;->iG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/ay;->iB:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iput-boolean v3, p0, Lcom/baidu/location/ay;->iy:Z

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/baidu/location/ay;->iy:Z

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from bdcltb09 where id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object p1, p0, Lcom/baidu/location/ay;->iG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/ay;->ip:J

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x40934dbaacd9e83eL    # 1235.4323

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/location/ay;->iv:D

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x40b0e60000000000L    # 4326.0

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/location/ay;->iz:D

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x40a27ea4b5dcc63fL    # 2367.3217

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/location/ay;->iu:D

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/location/ay;->iy:Z

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public case(Z)Lcom/baidu/location/BDLocation;
    .locals 2

    invoke-direct {p0}, Lcom/baidu/location/ay;->cf()V

    invoke-direct {p0, p1}, Lcom/baidu/location/ay;->byte(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public ch()V
    .locals 0

    return-void
.end method

.method public ci()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/ay;->ix:Z

    invoke-static {}, Lcom/baidu/location/ab;->bj()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/ay$1;

    invoke-direct {v1, p0}, Lcom/baidu/location/ay$1;-><init>(Lcom/baidu/location/ay;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public if(Ljava/lang/String;Lcom/baidu/location/t$a;Lcom/baidu/location/ar$b;Lcom/baidu/location/BDLocation;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/baidu/location/t$a;->for()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/ah;->ay()Lcom/baidu/location/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/ah;->aA()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v4, 0xa1

    if-ne v0, v4, :cond_1

    const-string v0, "wf"

    invoke-virtual {p4}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p4}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v0

    const/high16 v4, 0x43960000    # 300.0f

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    iget-object v4, p3, Lcom/baidu/location/ar$b;->for:Ljava/util/List;

    if-nez v4, :cond_2

    move v0, v2

    :cond_2
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/baidu/location/ay;->iA:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/baidu/location/ay;->iA:Z

    new-instance v0, Lcom/baidu/location/ay$b;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/baidu/location/ay$b;-><init>(Lcom/baidu/location/ay;Lcom/baidu/location/ay$1;)V

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    const/4 v1, 0x2

    aput-object p3, v3, v1

    const/4 v1, 0x3

    aput-object p4, v3, v1

    invoke-virtual {v0, v3}, Lcom/baidu/location/ay$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v3, v1

    goto :goto_0
.end method

.method public j(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/ay;->k(Landroid/os/Message;)V

    return-void
.end method
