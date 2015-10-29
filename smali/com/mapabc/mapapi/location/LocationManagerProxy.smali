.class public Lcom/mapabc/mapapi/location/LocationManagerProxy;
.super Ljava/lang/Object;
.source "LocationManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/location/LocationManagerProxy$a;,
        Lcom/mapabc/mapapi/location/LocationManagerProxy$b;
    }
.end annotation


# static fields
.field public static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "location"

.field public static final KEY_PROVIDER_ENABLED:Ljava/lang/String; = "providerEnabled"

.field public static final KEY_PROXIMITY_ENTERING:Ljava/lang/String; = "entering"

.field public static final KEY_STATUS_CHANGED:Ljava/lang/String; = "status"

.field public static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field private static b:Lcom/mapabc/mapapi/location/LocationManagerProxy;


# instance fields
.field private a:Landroid/location/LocationManager;

.field private c:Lcom/mapabc/mapapi/location/a;

.field private d:Landroid/content/Context;

.field private e:Lcom/mapabc/mapapi/location/c;

.field private f:Lcom/mapabc/mapapi/location/LocationManagerProxy$b;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/mapabc/mapapi/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:D

.field private k:D

.field private l:Z

.field private m:J

.field private n:D

.field private o:Lcom/mapabc/mapapi/location/c;

.field private p:Lcom/mapabc/mapapi/location/LocationManagerProxy$a;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->b:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    .line 31
    iput-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    .line 36
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->l:Z

    .line 42
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->m:J

    .line 43
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->n:D

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    .line 56
    :try_start_0
    const-string v1, "com.mapabc.mapapi.map.MapActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-static {}, Lcom/mapabc/mapapi/core/e;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mapabc/mapapi/core/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u5fc5\u987b\u4f20\u5165MapActivity\u7684\u5b9e\u4f8b"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    .line 31
    iput-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->l:Z

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->m:J

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->n:D

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    .line 49
    invoke-static {p1}, Lcom/mapabc/mapapi/core/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/mapabc/mapapi/location/LocationManagerProxy;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->d:Landroid/content/Context;

    .line 69
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-static {v0, v1}, Lcom/mapabc/mapapi/location/a;->a(Landroid/content/Context;Landroid/location/LocationManager;)Lcom/mapabc/mapapi/location/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    .line 73
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method

.method static synthetic b(Lcom/mapabc/mapapi/location/LocationManagerProxy;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/mapabc/mapapi/location/LocationManagerProxy;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/mapabc/mapapi/location/LocationManagerProxy;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/mapabc/mapapi/location/LocationManagerProxy;)D
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->j:D

    return-wide v0
.end method

.method static synthetic f(Lcom/mapabc/mapapi/location/LocationManagerProxy;)D
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->k:D

    return-wide v0
.end method

.method static synthetic g(Lcom/mapabc/mapapi/location/LocationManagerProxy;)J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->m:J

    return-wide v0
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/mapabc/mapapi/location/LocationManagerProxy;
    .locals 2

    .prologue
    .line 77
    const-class v1, Lcom/mapabc/mapapi/location/LocationManagerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->b:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-direct {v0, p0}, Lcom/mapabc/mapapi/location/LocationManagerProxy;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->b:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    .line 80
    :cond_0
    sget-object v0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->b:Lcom/mapabc/mapapi/location/LocationManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mapabc/mapapi/location/LocationManagerProxy;
    .locals 2

    .prologue
    .line 85
    const-class v1, Lcom/mapabc/mapapi/location/LocationManagerProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->b:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/mapabc/mapapi/location/LocationManagerProxy;

    invoke-direct {v0, p0, p1}, Lcom/mapabc/mapapi/location/LocationManagerProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->b:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    .line 88
    :cond_0
    sget-object v0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->b:Lcom/mapabc/mapapi/location/LocationManagerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic h(Lcom/mapabc/mapapi/location/LocationManagerProxy;)D
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->n:D

    return-wide v0
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    move-result v0

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 10

    .prologue
    .line 94
    const-string v1, "lbs"

    iget-object v2, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    iget-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->o:Lcom/mapabc/mapapi/location/c;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Lcom/mapabc/mapapi/location/c;

    invoke-direct {v1, p0}, Lcom/mapabc/mapapi/location/c;-><init>(Lcom/mapabc/mapapi/location/LocationManagerProxy;)V

    iput-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->o:Lcom/mapabc/mapapi/location/c;

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->p:Lcom/mapabc/mapapi/location/LocationManagerProxy$a;

    if-nez v1, :cond_1

    .line 99
    new-instance v1, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;

    invoke-direct {v1, p0}, Lcom/mapabc/mapapi/location/LocationManagerProxy$a;-><init>(Lcom/mapabc/mapapi/location/LocationManagerProxy;)V

    iput-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->p:Lcom/mapabc/mapapi/location/LocationManagerProxy$a;

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->o:Lcom/mapabc/mapapi/location/c;

    iget-object v2, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->p:Lcom/mapabc/mapapi/location/LocationManagerProxy$a;

    const-wide/16 v3, 0x2710

    iget-object v6, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->i:Ljava/lang/String;

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/mapabc/mapapi/location/c;->a(Landroid/location/LocationListener;JFLjava/lang/String;)Z

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->l:Z

    .line 104
    iput-wide p1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->j:D

    .line 105
    iput-wide p3, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->k:D

    .line 106
    float-to-double v1, p5

    iput-wide v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->n:D

    .line 107
    const-wide/16 v1, -0x1

    cmp-long v1, p6, v1

    if-eqz v1, :cond_2

    .line 108
    invoke-static {}, Lcom/mapabc/mapapi/core/e;->c()J

    move-result-wide v1

    .line 109
    add-long v1, v1, p6

    iput-wide v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->m:J

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_3
    :goto_0
    return-void

    .line 113
    :cond_4
    iget-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/location/LocationManager;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 11

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 326
    :cond_0
    return-void
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderEnabled(Ljava/lang/String;)V

    .line 333
    :cond_0
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderLocation(Ljava/lang/String;)V

    .line 340
    :cond_0
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->clearTestProviderStatus(Ljava/lang/String;)V

    .line 347
    :cond_0
    return-void
.end method

.method public destory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    invoke-virtual {v0}, Lcom/mapabc/mapapi/location/a;->a()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 360
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 362
    :cond_3
    iput-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    .line 363
    iput-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    .line 364
    iput-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    .line 365
    iput-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    .line 366
    sput-object v1, Lcom/mapabc/mapapi/location/LocationManagerProxy;->b:Lcom/mapabc/mapapi/location/LocationManagerProxy;

    .line 367
    return-void
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_1

    .line 213
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    :goto_0
    return-object v0

    .line 217
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    const-string v0, "lbs"

    .line 250
    if-nez p1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-object v0

    .line 253
    :cond_1
    const-string v1, "lbs"

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->getProvider(Ljava/lang/String;)Lcom/mapabc/mapapi/location/LocationProviderProxy;

    move-result-object v1

    .line 254
    invoke-virtual {v1, p1}, Lcom/mapabc/mapapi/location/LocationProviderProxy;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_2
    if-eqz p2, :cond_0

    .line 259
    iget-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/mapabc/mapapi/core/e;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 140
    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    if-eqz v0, :cond_0

    .line 142
    iput-object p1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->i:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    invoke-virtual {v0}, Lcom/mapabc/mapapi/location/a;->b()Landroid/location/Location;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Lcom/mapabc/mapapi/location/LocationProviderProxy;
    .locals 2

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/location/LocationProviderProxy;

    .line 288
    :goto_0
    return-object v0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-static {v0, p1}, Lcom/mapabc/mapapi/location/LocationProviderProxy;->a(Landroid/location/LocationManager;Ljava/lang/String;)Lcom/mapabc/mapapi/location/LocationProviderProxy;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->h:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    .line 240
    const-string v1, "lbs"

    invoke-virtual {p0, p1, p2}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    return-object v0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 227
    const-string v1, "lbs"

    invoke-virtual {p0, v1}, Lcom/mapabc/mapapi/location/LocationManagerProxy;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    if-nez v0, :cond_0

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 231
    :cond_0
    const-string v1, "lbs"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_1
    return-object v0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 269
    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapabc/mapapi/core/e;->c(Landroid/content/Context;)Z

    move-result v0

    .line 272
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 304
    :cond_0
    return-void
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 121
    const-string v0, "lbs"

    iget-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->o:Lcom/mapabc/mapapi/location/c;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->o:Lcom/mapabc/mapapi/location/c;

    invoke-virtual {v0}, Lcom/mapabc/mapapi/location/c;->a()V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->o:Lcom/mapabc/mapapi/location/c;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->l:Z

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->m:J

    .line 129
    iput-wide v2, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->n:D

    .line 130
    iput-wide v2, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->j:D

    .line 131
    iput-wide v2, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->k:D

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeProximityAlert(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public removeUpdates(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->e:Lcom/mapabc/mapapi/location/c;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->e:Lcom/mapabc/mapapi/location/c;

    invoke-virtual {v0}, Lcom/mapabc/mapapi/location/c;->a()V

    .line 205
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->e:Lcom/mapabc/mapapi/location/c;

    .line 206
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/app/PendingIntent;)V

    .line 207
    return-void
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 1

    .prologue
    .line 172
    if-eqz p1, :cond_1

    .line 173
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    invoke-virtual {v0, p1}, Lcom/mapabc/mapapi/location/a;->a(Landroid/location/LocationListener;)V

    .line 180
    :cond_1
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V
    .locals 6

    .prologue
    .line 184
    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->e:Lcom/mapabc/mapapi/location/c;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/mapabc/mapapi/location/c;

    invoke-direct {v0, p0}, Lcom/mapabc/mapapi/location/c;-><init>(Lcom/mapabc/mapapi/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->e:Lcom/mapabc/mapapi/location/c;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->f:Lcom/mapabc/mapapi/location/LocationManagerProxy$b;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Lcom/mapabc/mapapi/location/LocationManagerProxy$b;

    invoke-direct {v0, p0}, Lcom/mapabc/mapapi/location/LocationManagerProxy$b;-><init>(Lcom/mapabc/mapapi/location/LocationManagerProxy;)V

    iput-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->f:Lcom/mapabc/mapapi/location/LocationManagerProxy$b;

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->e:Lcom/mapabc/mapapi/location/c;

    iget-object v1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->f:Lcom/mapabc/mapapi/location/LocationManagerProxy$b;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/mapabc/mapapi/location/c;->a(Landroid/location/LocationListener;JF)Z

    .line 193
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    .locals 6

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->i:Ljava/lang/String;

    .line 156
    const-string v0, "lbs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mapabc/mapapi/location/a;->a(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 168
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->c:Lcom/mapabc/mapapi/location/a;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mapabc/mapapi/location/a;->a(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/mapabc/mapapi/location/LocationManagerProxy;->a:Landroid/location/LocationManager;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0
.end method
