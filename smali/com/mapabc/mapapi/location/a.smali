.class public Lcom/mapabc/mapapi/location/a;
.super Ljava/lang/Object;
.source "IAPSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/location/a$b;,
        Lcom/mapabc/mapapi/location/a$a;
    }
.end annotation


# static fields
.field private static b:Lcom/mapabc/mapapi/location/a;

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I


# instance fields
.field private a:Lcom/autonavi/aps/api/IAPS;

.field private c:Lcom/mapabc/mapapi/location/a$a;

.field private volatile d:Z

.field private e:Ljava/lang/Thread;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mapabc/mapapi/location/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/location/Location;

.field private l:Landroid/content/Context;

.field private m:Landroid/location/LocationManager;

.field private n:Z

.field private o:Landroid/location/Location;

.field private p:F

.field private q:J

.field private r:J

.field private s:Ljava/lang/String;

.field private t:Landroid/location/LocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/mapabc/mapapi/location/a;->b:Lcom/mapabc/mapapi/location/a;

    .line 23
    const/16 v0, 0x64

    sput v0, Lcom/mapabc/mapapi/location/a;->f:I

    .line 24
    const/16 v0, 0x65

    sput v0, Lcom/mapabc/mapapi/location/a;->g:I

    .line 25
    const/16 v0, 0x66

    sput v0, Lcom/mapabc/mapapi/location/a;->h:I

    .line 26
    const/16 v0, 0x67

    sput v0, Lcom/mapabc/mapapi/location/a;->i:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/mapabc/mapapi/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    .line 20
    iput-object v1, p0, Lcom/mapabc/mapapi/location/a;->c:Lcom/mapabc/mapapi/location/a$a;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapabc/mapapi/location/a;->d:Z

    .line 22
    iput-object v1, p0, Lcom/mapabc/mapapi/location/a;->e:Ljava/lang/Thread;

    .line 27
    iput-object v1, p0, Lcom/mapabc/mapapi/location/a;->j:Ljava/util/ArrayList;

    .line 28
    iput-object v1, p0, Lcom/mapabc/mapapi/location/a;->k:Landroid/location/Location;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapabc/mapapi/location/a;->n:Z

    .line 32
    iput-object v1, p0, Lcom/mapabc/mapapi/location/a;->o:Landroid/location/Location;

    .line 33
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/mapabc/mapapi/location/a;->p:F

    .line 34
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/mapabc/mapapi/location/a;->q:J

    .line 35
    const-wide/16 v0, 0x9c4

    iput-wide v0, p0, Lcom/mapabc/mapapi/location/a;->r:J

    .line 36
    const-string v0, "lbs"

    iput-object v0, p0, Lcom/mapabc/mapapi/location/a;->s:Ljava/lang/String;

    .line 252
    new-instance v0, Lcom/mapabc/mapapi/location/b;

    invoke-direct {v0, p0}, Lcom/mapabc/mapapi/location/b;-><init>(Lcom/mapabc/mapapi/location/a;)V

    iput-object v0, p0, Lcom/mapabc/mapapi/location/a;->t:Landroid/location/LocationListener;

    .line 40
    iput-object p1, p0, Lcom/mapabc/mapapi/location/a;->l:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/mapabc/mapapi/location/a;->m:Landroid/location/LocationManager;

    .line 42
    new-instance v0, Lcom/mapabc/mapapi/location/a$a;

    invoke-direct {v0, p0}, Lcom/mapabc/mapapi/location/a$a;-><init>(Lcom/mapabc/mapapi/location/a;)V

    iput-object v0, p0, Lcom/mapabc/mapapi/location/a;->c:Lcom/mapabc/mapapi/location/a$a;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/location/a;->j:Ljava/util/ArrayList;

    .line 45
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/aps/api/APSFactory;->getInstance(Landroid/content/Context;)Lcom/autonavi/aps/api/IAPS;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    .line 47
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    const-string v1, "autonavi"

    invoke-interface {v0, v1}, Lcom/autonavi/aps/api/IAPS;->setProductName(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    invoke-static {}, Lcom/mapabc/mapapi/core/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/aps/api/IAPS;->setLicence(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/autonavi/aps/api/Location;)Landroid/location/Location;
    .locals 4

    .prologue
    .line 198
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 200
    const-string v1, "lbs"

    invoke-virtual {v0, v1}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/autonavi/aps/api/Location;->getCeny()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 202
    invoke-virtual {p1}, Lcom/autonavi/aps/api/Location;->getCenx()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 203
    invoke-virtual {p1}, Lcom/autonavi/aps/api/Location;->getRadius()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 204
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 205
    const-string v2, "citycode"

    invoke-virtual {p1}, Lcom/autonavi/aps/api/Location;->getCitycode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/autonavi/aps/api/Location;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 208
    return-object v0
.end method

.method static synthetic a(Lcom/mapabc/mapapi/location/a;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/mapabc/mapapi/location/a;->o:Landroid/location/Location;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/mapabc/mapapi/location/a;
    .locals 2

    .prologue
    .line 64
    const-class v1, Lcom/mapabc/mapapi/location/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mapabc/mapapi/location/a;->b:Lcom/mapabc/mapapi/location/a;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/mapabc/mapapi/location/a;

    invoke-direct {v0, p0, p1}, Lcom/mapabc/mapapi/location/a;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Lcom/mapabc/mapapi/location/a;->b:Lcom/mapabc/mapapi/location/a;

    .line 67
    :cond_0
    sget-object v0, Lcom/mapabc/mapapi/location/a;->b:Lcom/mapabc/mapapi/location/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/mapabc/mapapi/location/a;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/mapabc/mapapi/location/a;Z)Z
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/mapabc/mapapi/location/a;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/mapabc/mapapi/location/a;)Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->m:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/mapabc/mapapi/location/a;->f:I

    return v0
.end method

.method static synthetic c(Lcom/mapabc/mapapi/location/a;)J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/mapabc/mapapi/location/a;->q:J

    return-wide v0
.end method

.method static synthetic d(Lcom/mapabc/mapapi/location/a;)F
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/mapabc/mapapi/location/a;->p:F

    return v0
.end method

.method static synthetic d()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/mapabc/mapapi/location/a;->g:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/mapabc/mapapi/location/a;->h:I

    return v0
.end method

.method static synthetic e(Lcom/mapabc/mapapi/location/a;)Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->t:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/mapabc/mapapi/location/a;->i:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapabc/mapapi/location/a;->d:Z

    .line 72
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->m:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->m:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mapabc/mapapi/location/a;->t:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->c:Lcom/mapabc/mapapi/location/a$a;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->c:Lcom/mapabc/mapapi/location/a$a;

    sget v1, Lcom/mapabc/mapapi/location/a;->f:I

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/location/a$a;->removeMessages(I)V

    .line 84
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->c:Lcom/mapabc/mapapi/location/a$a;

    sget v1, Lcom/mapabc/mapapi/location/a;->g:I

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/location/a$a;->removeMessages(I)V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    if-eqz v0, :cond_4

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    invoke-interface {v0}, Lcom/autonavi/aps/api/IAPS;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :cond_4
    :goto_1
    iput-object v2, p0, Lcom/mapabc/mapapi/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    .line 96
    sput-object v2, Lcom/mapabc/mapapi/location/a;->b:Lcom/mapabc/mapapi/location/a;

    .line 97
    iput-object v2, p0, Lcom/mapabc/mapapi/location/a;->k:Landroid/location/Location;

    .line 98
    iput-object v2, p0, Lcom/mapabc/mapapi/location/a;->c:Lcom/mapabc/mapapi/location/a$a;

    .line 99
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_1

    .line 76
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/location/LocationListener;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->c:Lcom/mapabc/mapapi/location/a$a;

    invoke-virtual {v0}, Lcom/mapabc/mapapi/location/a$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 114
    sget v1, Lcom/mapabc/mapapi/location/a;->i:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 115
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/mapabc/mapapi/location/a;->c:Lcom/mapabc/mapapi/location/a$a;

    invoke-virtual {v1, v0}, Lcom/mapabc/mapapi/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method

.method public a(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 3

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mapabc/mapapi/location/a;->s:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/mapabc/mapapi/location/a$b;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/mapabc/mapapi/location/a$b;-><init>(JFLandroid/location/LocationListener;)V

    .line 106
    iget-object v1, p0, Lcom/mapabc/mapapi/location/a;->c:Lcom/mapabc/mapapi/location/a$a;

    invoke-virtual {v1}, Lcom/mapabc/mapapi/location/a$a;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 107
    sget v2, Lcom/mapabc/mapapi/location/a;->h:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 108
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->c:Lcom/mapabc/mapapi/location/a$a;

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method public b()Landroid/location/Location;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->k:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->k:Landroid/location/Location;

    .line 123
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapabc/mapapi/core/e;->d(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public run()V
    .locals 13

    .prologue
    const-wide/16 v5, 0x9c4

    const/4 v2, 0x0

    .line 128
    .line 131
    :goto_0
    iget-boolean v0, p0, Lcom/mapabc/mapapi/location/a;->d:Z

    if-eqz v0, :cond_8

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/location/a;->e:Ljava/lang/Thread;

    .line 133
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 134
    iget-boolean v0, p0, Lcom/mapabc/mapapi/location/a;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->m:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->s:Ljava/lang/String;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->c:Lcom/mapabc/mapapi/location/a$a;

    sget v1, Lcom/mapabc/mapapi/location/a;->g:I

    invoke-virtual {v0, v1}, Lcom/mapabc/mapapi/location/a$a;->sendEmptyMessage(I)Z

    .line 140
    :cond_0
    iget-object v8, p0, Lcom/mapabc/mapapi/location/a;->j:Ljava/util/ArrayList;

    monitor-enter v8

    move v1, v2

    .line 141
    :goto_1
    if-ge v1, v7, :cond_7

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/location/a$b;

    .line 143
    invoke-static {}, Lcom/mapabc/mapapi/core/e;->c()J

    move-result-wide v9

    .line 144
    iget v3, p0, Lcom/mapabc/mapapi/location/a;->p:F

    iget v4, v0, Lcom/mapabc/mapapi/location/a$b;->b:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, v0, Lcom/mapabc/mapapi/location/a$b;->b:F

    :goto_2
    iput v3, p0, Lcom/mapabc/mapapi/location/a;->p:F

    .line 146
    iget-wide v3, p0, Lcom/mapabc/mapapi/location/a;->q:J

    iget-wide v11, v0, Lcom/mapabc/mapapi/location/a$b;->a:J

    cmp-long v3, v3, v11

    if-lez v3, :cond_4

    iget-wide v3, v0, Lcom/mapabc/mapapi/location/a$b;->a:J

    :goto_3
    iput-wide v3, p0, Lcom/mapabc/mapapi/location/a;->q:J

    .line 148
    if-eqz v0, :cond_2

    .line 150
    iget-wide v3, v0, Lcom/mapabc/mapapi/location/a$b;->a:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    move-wide v3, v5

    :goto_4
    iput-wide v3, p0, Lcom/mapabc/mapapi/location/a;->r:J

    .line 155
    iget-wide v3, v0, Lcom/mapabc/mapapi/location/a$b;->d:J

    sub-long v3, v9, v3

    iget-wide v11, v0, Lcom/mapabc/mapapi/location/a$b;->a:J

    cmp-long v3, v3, v11

    if-ltz v3, :cond_1

    .line 156
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/mapabc/mapapi/location/a$b;->e:Z

    .line 158
    :cond_1
    iget-boolean v3, v0, Lcom/mapabc/mapapi/location/a$b;->e:Z

    if-eqz v3, :cond_2

    .line 159
    iget-object v3, p0, Lcom/mapabc/mapapi/location/a;->c:Lcom/mapabc/mapapi/location/a$a;

    invoke-virtual {v3}, Lcom/mapabc/mapapi/location/a$a;->obtainMessage()Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 162
    :try_start_1
    iget-object v3, p0, Lcom/mapabc/mapapi/location/a;->o:Landroid/location/Location;

    if-eqz v3, :cond_6

    .line 163
    iget-object v3, p0, Lcom/mapabc/mapapi/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    iget-object v11, p0, Lcom/mapabc/mapapi/location/a;->o:Landroid/location/Location;

    invoke-interface {v3, v11}, Lcom/autonavi/aps/api/IAPS;->getCurrentLocation(Landroid/location/Location;)Lcom/autonavi/aps/api/Location;

    move-result-object v3

    .line 168
    :goto_5
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/mapabc/mapapi/location/a;->o:Landroid/location/Location;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    if-eqz v3, :cond_2

    .line 174
    const/4 v11, 0x0

    :try_start_2
    iput-boolean v11, v0, Lcom/mapabc/mapapi/location/a$b;->e:Z

    .line 175
    iput-wide v9, v0, Lcom/mapabc/mapapi/location/a$b;->d:J

    .line 176
    invoke-direct {p0, v3}, Lcom/mapabc/mapapi/location/a;->a(Lcom/autonavi/aps/api/Location;)Landroid/location/Location;

    move-result-object v3

    .line 177
    iget-object v9, p0, Lcom/mapabc/mapapi/location/a;->k:Landroid/location/Location;

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 178
    iput-object v3, p0, Lcom/mapabc/mapapi/location/a;->k:Landroid/location/Location;

    iput-object v3, v0, Lcom/mapabc/mapapi/location/a$b;->f:Landroid/location/Location;

    .line 179
    sget v9, Lcom/mapabc/mapapi/location/a;->f:I

    iput v9, v4, Landroid/os/Message;->what:I

    .line 180
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->c:Lcom/mapabc/mapapi/location/a$a;

    invoke-virtual {v0, v4}, Lcom/mapabc/mapapi/location/a$a;->sendMessage(Landroid/os/Message;)Z

    .line 182
    iget-object v0, p0, Lcom/mapabc/mapapi/location/a;->l:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/mapabc/mapapi/core/e;->a(Landroid/content/Context;Landroid/location/Location;)V

    .line 141
    :cond_2
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 144
    :cond_3
    iget v3, p0, Lcom/mapabc/mapapi/location/a;->p:F

    goto :goto_2

    .line 146
    :cond_4
    iget-wide v3, p0, Lcom/mapabc/mapapi/location/a;->q:J

    goto :goto_3

    .line 150
    :cond_5
    iget-wide v3, v0, Lcom/mapabc/mapapi/location/a$b;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 166
    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/mapabc/mapapi/location/a;->a:Lcom/autonavi/aps/api/IAPS;

    const/4 v11, 0x0

    invoke-interface {v3, v11}, Lcom/autonavi/aps/api/IAPS;->getCurrentLocation(Landroid/location/Location;)Lcom/autonavi/aps/api/Location;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_5

    .line 169
    :catch_0
    move-exception v3

    .line 170
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, v0, Lcom/mapabc/mapapi/location/a$b;->e:Z

    goto :goto_6

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 189
    :cond_7
    :try_start_5
    iget-wide v0, p0, Lcom/mapabc/mapapi/location/a;->r:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 193
    :goto_7
    :try_start_6
    monitor-exit v8

    goto/16 :goto_0

    .line 190
    :catch_1
    move-exception v0

    .line 191
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 195
    :cond_8
    return-void
.end method
