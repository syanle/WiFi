.class Lcom/baidu/location/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/ax;
.implements Lcom/baidu/location/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/l$c;,
        Lcom/baidu/location/l$b;,
        Lcom/baidu/location/l$a;
    }
.end annotation


# static fields
.field private static final b5:I = 0xc8

.field private static b7:Ljava/io/File; = null

.field private static bD:Ljava/io/File; = null

.field private static final bK:I = 0x320

.field public static final bM:Ljava/lang/String; = "com.baidu.locTest.LocationServer4.2"

.field private static final bW:I = 0x18

.field private static bZ:Ljava/lang/String;


# instance fields
.field private b0:J

.field private final b1:I

.field private b2:I

.field private b3:I

.field private b4:Z

.field b6:J

.field private b8:Lcom/baidu/location/l$a;

.field private bA:Landroid/os/Handler;

.field private bB:Z

.field private bC:[J

.field private bE:Z

.field private bF:Z

.field private bG:Ljava/lang/String;

.field private bH:I

.field private bI:Landroid/app/AlarmManager;

.field private bJ:Landroid/app/PendingIntent;

.field private bL:Landroid/content/Context;

.field private bN:Ljava/lang/String;

.field private bO:J

.field private bP:Z

.field private bQ:J

.field private bR:Lcom/baidu/location/t$a;

.field private bS:J

.field private final bT:I

.field bU:Ljava/lang/String;

.field bV:Ljava/util/ArrayList;

.field private bX:J

.field bY:Ljava/util/ArrayList;

.field bx:Lcom/baidu/location/l$c;

.field private final by:J

.field private bz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/l;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/glb.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/l;->bZ:Ljava/lang/String;

    sput-object v2, Lcom/baidu/location/l;->bD:Ljava/io/File;

    sput-object v2, Lcom/baidu/location/l;->b7:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/l;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vm.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/l;->bG:Ljava/lang/String;

    const-wide/32 v0, 0x521c820

    iput-wide v0, p0, Lcom/baidu/location/l;->by:J

    const/16 v0, 0xc8

    iput v0, p0, Lcom/baidu/location/l;->b1:I

    iput-object v2, p0, Lcom/baidu/location/l;->bI:Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/baidu/location/l;->b8:Lcom/baidu/location/l$a;

    iput-object v2, p0, Lcom/baidu/location/l;->bJ:Landroid/app/PendingIntent;

    iput-object v2, p0, Lcom/baidu/location/l;->bL:Landroid/content/Context;

    iput-wide v4, p0, Lcom/baidu/location/l;->bX:J

    const/16 v0, 0x14

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/baidu/location/l;->bC:[J

    iput v3, p0, Lcom/baidu/location/l;->bH:I

    iput-object v2, p0, Lcom/baidu/location/l;->bR:Lcom/baidu/location/t$a;

    iput-object v2, p0, Lcom/baidu/location/l;->bN:Ljava/lang/String;

    iput v6, p0, Lcom/baidu/location/l;->b3:I

    iput-boolean v3, p0, Lcom/baidu/location/l;->bF:Z

    iput-boolean v3, p0, Lcom/baidu/location/l;->bP:Z

    iput-boolean v3, p0, Lcom/baidu/location/l;->b4:Z

    iput-object v2, p0, Lcom/baidu/location/l;->bA:Landroid/os/Handler;

    iput v6, p0, Lcom/baidu/location/l;->bT:I

    iput-boolean v3, p0, Lcom/baidu/location/l;->bE:Z

    sget-wide v0, Lcom/baidu/location/c;->ad:J

    iput-wide v0, p0, Lcom/baidu/location/l;->bS:J

    iput v3, p0, Lcom/baidu/location/l;->b2:I

    iput-wide v4, p0, Lcom/baidu/location/l;->bQ:J

    iput-wide v4, p0, Lcom/baidu/location/l;->bO:J

    iput-wide v4, p0, Lcom/baidu/location/l;->b0:J

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/l;->bz:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/baidu/location/l;->bB:Z

    iput-object v2, p0, Lcom/baidu/location/l;->bx:Lcom/baidu/location/l$c;

    iput-object v2, p0, Lcom/baidu/location/l;->bY:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/baidu/location/l;->bV:Ljava/util/ArrayList;

    iput-wide v4, p0, Lcom/baidu/location/l;->b6:J

    const-string v0, "dlcu.dat"

    iput-object v0, p0, Lcom/baidu/location/l;->bU:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/location/l;->bL:Landroid/content/Context;

    iput-wide v4, p0, Lcom/baidu/location/l;->b6:J

    :try_start_0
    new-instance v0, Lcom/baidu/location/l$c;

    invoke-direct {v0, p0}, Lcom/baidu/location/l$c;-><init>(Lcom/baidu/location/l;)V

    iput-object v0, p0, Lcom/baidu/location/l;->bx:Lcom/baidu/location/l$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/baidu/location/l$1;

    invoke-direct {v0, p0}, Lcom/baidu/location/l$1;-><init>(Lcom/baidu/location/l;)V

    iput-object v0, p0, Lcom/baidu/location/l;->bA:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/l;->bX:J

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/baidu/location/l;->bI:Landroid/app/AlarmManager;

    new-instance v0, Lcom/baidu/location/l$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/l$a;-><init>(Lcom/baidu/location/l;)V

    iput-object v0, p0, Lcom/baidu/location/l;->b8:Lcom/baidu/location/l$a;

    iget-object v0, p0, Lcom/baidu/location/l;->b8:Lcom/baidu/location/l$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.baidu.locTest.LocationServer4.2"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.locTest.LocationServer4.2"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x8000000

    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/l;->bJ:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/baidu/location/l;->bI:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/baidu/location/l;->bJ:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    sget-wide v0, Lcom/baidu/location/c;->ad:J

    iput-wide v0, p0, Lcom/baidu/location/l;->bS:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/l;->bY:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/l;->bV:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/baidu/location/l;->t()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/l;->bE:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v0

    iput-object v2, p0, Lcom/baidu/location/l;->bx:Lcom/baidu/location/l$c;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic if(Lcom/baidu/location/l;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/l;->bA:Landroid/os/Handler;

    return-object v0
.end method

.method private if(Z)V
    .locals 4

    invoke-static {}, Lcom/baidu/location/c;->byte()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "baidu/tempdata/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/l;->bU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/16 v0, 0x84d

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/location/l;->b2:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/l;->bQ:J

    :goto_1
    iget v0, p0, Lcom/baidu/location/l;->b2:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v0, 0x84d

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static q()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    sget-object v0, Lcom/baidu/location/l;->bZ:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/l;->bZ:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/location/l;->b7:Ljava/io/File;

    sget-object v0, Lcom/baidu/location/l;->b7:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/l;->I:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    sget-object v0, Lcom/baidu/location/l;->b7:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/baidu/location/l;->b7:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/l;->b7:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sput-object v3, Lcom/baidu/location/l;->b7:Ljava/io/File;

    goto :goto_0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private t()V
    .locals 9

    const/16 v8, 0x84d

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/baidu/location/c;->byte()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "baidu/tempdata/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/l;->bU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v7, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    if-ne v4, v8, :cond_3

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    :try_start_2
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    if-ne v6, v8, :cond_2

    const/4 v6, 0x1

    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    if-eqz v6, :cond_1

    iput v4, p0, Lcom/baidu/location/l;->b2:I

    iput-wide v0, p0, Lcom/baidu/location/l;->bQ:J

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/baidu/location/l;->b2:I

    iput-wide v2, p0, Lcom/baidu/location/l;->bQ:J

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v2

    move v4, v5

    move v6, v5

    goto :goto_2

    :catch_1
    move-exception v4

    move v4, v5

    move v6, v5

    goto :goto_2

    :catch_2
    move-exception v6

    move v6, v5

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_2

    :cond_2
    move v6, v5

    goto :goto_1

    :cond_3
    move v4, v5

    move v6, v5

    goto :goto_1
.end method


# virtual methods
.method if(DD)Z
    .locals 6

    const-wide v0, -0x3ffe6c3b77a5530bL    # -2.1971522

    const-wide v2, -0x401969821497bca0L    # -0.70587059

    const-wide v4, 0x3feaf83b7b00515fL    # 0.8428018

    mul-double/2addr v0, p1

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    add-double/2addr v0, v4

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/l;->bL:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized u()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/baidu/location/l;->bE:Z

    iget-object v0, p0, Lcom/baidu/location/l;->b8:Lcom/baidu/location/l$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/l;->bL:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/location/l;->b8:Lcom/baidu/location/l$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/l;->b8:Lcom/baidu/location/l$a;

    iget-object v0, p0, Lcom/baidu/location/l;->bI:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/l;->bJ:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/l;->bI:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/baidu/location/l;->bJ:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/l;->bI:Landroid/app/AlarmManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/l;->bJ:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/l;->bD:Ljava/io/File;

    iget-object v0, p0, Lcom/baidu/location/l;->bY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/baidu/location/l;->bV:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/l;->bY:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/l;->bV:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/l;->b6:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/l;->b0:J

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/location/l;->bz:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/l;->bB:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method v()V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/baidu/location/l;->bE:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/baidu/location/l;->b0:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/baidu/location/l;->b0:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    move-wide v2, v1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/baidu/location/l;->b0:J

    invoke-static {}, Lcom/baidu/location/c;->byte()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/l;->bI:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/baidu/location/c;->aQ:J

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/location/l;->bJ:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/baidu/location/t;->an()Lcom/baidu/location/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/t;->ak()Lcom/baidu/location/t$a;

    move-result-object v10

    if-nez v10, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/l;->bI:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/baidu/location/c;->aQ:J

    add-long/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/location/l;->bJ:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/baidu/location/ar;->bW()Lcom/baidu/location/ar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/ar;->b1()Lcom/baidu/location/ar$b;

    move-result-object v11

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/baidu/location/l;->b6:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/l;->bY:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/l;->bV:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_3
    move v5, v1

    const/4 v4, 0x0

    if-nez v5, :cond_4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/l;->bV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/l;->bV:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/t$a;

    invoke-virtual {v10, v1}, Lcom/baidu/location/t$a;->a(Lcom/baidu/location/t$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/l;->bY:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/l;->bY:Ljava/util/ArrayList;

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/location/ar$b;

    invoke-static {v11, v1}, Lcom/baidu/location/ar;->if(Lcom/baidu/location/ar$b;Lcom/baidu/location/ar$b;)D

    move-result-wide v7

    new-instance v12, Lcom/baidu/location/l$b;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v1}, Lcom/baidu/location/l$b;-><init>(Lcom/baidu/location/l;Lcom/baidu/location/ar$b;)V

    new-instance v1, Lcom/baidu/location/l$b;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v11}, Lcom/baidu/location/l$b;-><init>(Lcom/baidu/location/l;Lcom/baidu/location/ar$b;)V

    invoke-virtual {v12, v1}, Lcom/baidu/location/l$b;->a(Lcom/baidu/location/l$b;)D

    move-result-wide v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v12, v13}, Lcom/baidu/location/l;->if(DD)Z

    move-result v1

    if-nez v1, :cond_4

    neg-int v1, v6

    move v4, v1

    :cond_4
    const/4 v1, 0x0

    if-gez v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-nez v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/baidu/location/l;->bQ:J

    sub-long/2addr v6, v12

    const-wide/32 v12, 0x5265c00

    cmp-long v6, v6, v12

    if-gtz v6, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/baidu/location/l;->bQ:J

    sub-long/2addr v6, v12

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-gez v6, :cond_9

    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/baidu/location/l;->b2:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/baidu/location/l;->if(Z)V

    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/location/l;->b2:I

    sget v7, Lcom/baidu/location/c;->a5:I

    if-le v6, v7, :cond_7

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/location/l;->bQ:J

    const-wide/32 v12, 0x5265c00

    add-long/2addr v6, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v6, v12

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/baidu/location/l;->bO:J

    :cond_7
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/location/l;->bO:J

    const-wide/32 v12, 0xdbba0

    cmp-long v6, v6, v12

    if-lez v6, :cond_a

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/location/l;->bO:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/baidu/location/l;->bS:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/l;->bI:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/baidu/location/l;->bS:J

    add-long/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/location/l;->bJ:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6, v7, v8, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/baidu/location/l;->bO:J

    :cond_8
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/baidu/location/l;->b6:J

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/baidu/location/q;->x()Lcom/baidu/location/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/q;->z()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/location/l;->b2:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/baidu/location/l;->b2:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/baidu/location/l;->if(Z)V

    goto :goto_2

    :cond_a
    if-gez v4, :cond_e

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/location/l;->bS:J

    sget-wide v12, Lcom/baidu/location/c;->ao:J

    add-long/2addr v6, v12

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/baidu/location/l;->bS:J

    if-eqz v11, :cond_b

    iget-object v4, v11, Lcom/baidu/location/ar$b;->for:Ljava/util/List;

    if-eqz v4, :cond_b

    iget-object v4, v11, Lcom/baidu/location/ar$b;->for:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/location/l;->bS:J

    sget-wide v12, Lcom/baidu/location/c;->aK:J

    cmp-long v4, v6, v12

    if-lez v4, :cond_c

    sget-wide v6, Lcom/baidu/location/c;->aK:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/baidu/location/l;->bS:J

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/l;->bI:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/baidu/location/l;->bS:J

    add-long/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/location/l;->bJ:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6, v7, v8, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/baidu/location/l;->bB:Z

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/location/l;->bS:J

    sget-wide v12, Lcom/baidu/location/c;->aQ:J

    cmp-long v4, v6, v12

    if-lez v4, :cond_c

    sget-wide v6, Lcom/baidu/location/c;->aQ:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/baidu/location/l;->bS:J

    goto :goto_4

    :cond_e
    sget-wide v6, Lcom/baidu/location/c;->ad:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/baidu/location/l;->bS:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/l;->bI:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/baidu/location/l;->bS:J

    add-long/2addr v7, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/location/l;->bJ:Landroid/app/PendingIntent;

    invoke-virtual {v4, v6, v7, v8, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/baidu/location/l;->b6:J

    sub-long/2addr v6, v12

    const-wide/32 v12, 0xcd140

    cmp-long v4, v6, v12

    if-lez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/l;->bY:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/location/l;->bV:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    :cond_f
    new-instance v12, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v12, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz v5, :cond_10

    const-string v1, "s"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    const-string v1, "v"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x4

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v1, 0xf

    shr-long/2addr v4, v1

    long-to-int v13, v4

    const-string v1, "t"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Lcom/baidu/location/t$a;->for()Z

    move-result v1

    if-eqz v1, :cond_11

    iget v1, v10, Lcom/baidu/location/t$a;->do:I

    const/16 v4, 0x1cc

    if-ne v1, v4, :cond_12

    const-string v1, "x,"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    iget v1, v10, Lcom/baidu/location/t$a;->if:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, v10, Lcom/baidu/location/t$a;->for:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, v10, Lcom/baidu/location/t$a;->try:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_11
    invoke-static {}, Lcom/baidu/location/ar;->bW()Lcom/baidu/location/ar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/ar;->b4()Ljava/lang/String;

    move-result-object v14

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz v11, :cond_16

    iget-object v1, v11, Lcom/baidu/location/ar$b;->for:Ljava/util/List;

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    move v7, v1

    :goto_6
    iget-object v1, v11, Lcom/baidu/location/ar$b;->for:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_24

    iget-object v1, v11, Lcom/baidu/location/ar$b;->for:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v8, ":"

    const-string v15, ""

    invoke-virtual {v1, v8, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    iget-object v1, v11, Lcom/baidu/location/ar$b;->for:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget v1, v1, Landroid/net/wifi/ScanResult;->level:I

    if-gez v1, :cond_23

    neg-int v1, v1

    move v8, v1

    :goto_7
    const/4 v1, 0x3

    if-ge v6, v1, :cond_22

    const/4 v1, 0x2

    if-lt v7, v1, :cond_13

    if-nez v5, :cond_13

    if-eqz v14, :cond_13

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    if-nez v4, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v4, v5

    move v5, v6

    :goto_8
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    move-object v4, v1

    goto :goto_6

    :cond_12
    const-string v1, "x"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, v10, Lcom/baidu/location/t$a;->do:I

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_5

    :cond_13
    if-nez v7, :cond_1a

    const-string v1, "w"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_9
    invoke-virtual {v12, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v14, :cond_15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v11, Lcom/baidu/location/ar$b;->for:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1c

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "WEP"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "WPA"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_14
    const-string v1, "l"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_a
    const/4 v5, 0x1

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ";"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    move v1, v5

    move v5, v6

    :goto_b
    const/4 v6, 0x2

    if-le v5, v6, :cond_20

    :goto_c
    const/4 v1, 0x3

    if-ge v5, v1, :cond_16

    if-eqz v4, :cond_16

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/location/l;->r()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "y2"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_d
    invoke-static {}, Lcom/baidu/location/aw;->do()Lcom/baidu/location/aw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/location/aw;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/aw;->do()Lcom/baidu/location/aw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/location/aw;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_17
    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/baidu/location/l;->bB:Z

    if-eqz v1, :cond_19

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_18

    const-wide/32 v4, 0xea60

    div-long v1, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/location/l;->bz:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/l;->bz:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ""

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/location/l;->bz:Ljava/lang/String;

    :cond_18
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/baidu/location/l;->bB:Z

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/baidu/location/Jni;->int(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/l;->bY:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/l;->bY:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/l;->bY:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_e

    :cond_1a
    const-string v1, ","

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_9

    :cond_1b
    const-string v1, "j"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    :cond_1c
    const-string v1, "j"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a

    :cond_1d
    :try_start_1
    const-string v1, "y1"

    invoke-static {}, Lcom/baidu/location/ad;->cM()Lcom/baidu/location/ad;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/baidu/location/ad;->goto(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_d

    :catch_0
    move-exception v1

    const-string v1, "y"

    goto/16 :goto_d

    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/l;->bV:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/l;->bV:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/location/l;->bV:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f

    :cond_1f
    invoke-static {}, Lcom/baidu/location/q;->x()Lcom/baidu/location/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/q;->z()V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v16, v4

    move v4, v1

    move-object/from16 v1, v16

    goto/16 :goto_8

    :cond_21
    move-object v1, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_8

    :cond_22
    move v1, v5

    move v5, v6

    goto/16 :goto_b

    :cond_23
    move v8, v1

    goto/16 :goto_7

    :cond_24
    move v5, v6

    goto/16 :goto_c

    :cond_25
    move-wide v2, v1

    goto/16 :goto_1
.end method
