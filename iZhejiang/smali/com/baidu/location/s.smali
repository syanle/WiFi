.class abstract Lcom/baidu/location/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/ax;
.implements Lcom/baidu/location/n;


# static fields
.field private static cU:I

.field private static cX:Ljava/lang/String;

.field protected static cY:I

.field private static cZ:I


# instance fields
.field public c0:I

.field public cR:Ljava/lang/String;

.field public cS:Lorg/apache/http/HttpEntity;

.field public cT:Ljava/util/List;

.field private cV:Z

.field public cW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/baidu/location/s;->cU:I

    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/baidu/location/s;->cX:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/s;->cZ:I

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/s;->cY:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/s;->cV:Z

    iput-object v1, p0, Lcom/baidu/location/s;->cR:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/location/s;->c0:I

    iput-object v1, p0, Lcom/baidu/location/s;->cS:Lorg/apache/http/HttpEntity;

    iput-object v1, p0, Lcom/baidu/location/s;->cT:Ljava/util/List;

    iput-object v1, p0, Lcom/baidu/location/s;->cW:Ljava/lang/String;

    return-void
.end method

.method private L()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/s;->P()I

    move-result v0

    sput v0, Lcom/baidu/location/s;->cU:I

    return-void
.end method

.method static synthetic M()I
    .locals 1

    sget v0, Lcom/baidu/location/s;->cU:I

    return v0
.end method

.method static synthetic O()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/s;->cX:Ljava/lang/String;

    return-object v0
.end method

.method private P()I
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v9

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    if-eqz v8, :cond_1

    :try_start_1
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v7, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ctwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    sput-object v0, Lcom/baidu/location/s;->cX:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/s;->cZ:I

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v7

    goto :goto_0

    :cond_5
    const-string v0, "10.0.0.200"

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_2
    sput-object v0, Lcom/baidu/location/s;->cX:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/s;->cZ:I

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move v0, v7

    goto/16 :goto_0

    :cond_8
    const-string v0, "10.0.0.172"

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_a
    const/4 v0, 0x2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    :try_start_2
    invoke-static {v9, v0}, Lcom/baidu/location/s;->if(Landroid/content/Context;Landroid/net/NetworkInfo;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v6

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move v0, v6

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move-object v0, v8

    goto :goto_3
.end method

.method static synthetic S()I
    .locals 1

    sget v0, Lcom/baidu/location/s;->cZ:I

    return v0
.end method

.method private static if(Landroid/content/Context;Landroid/net/NetworkInfo;)I
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "cmwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "uniwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "3gwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    sput-object v0, Lcom/baidu/location/s;->cX:Ljava/lang/String;

    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    const-string v0, "10.0.0.172"

    goto :goto_0

    :cond_3
    const-string v3, "ctwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    sput-object v0, Lcom/baidu/location/s;->cX:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :cond_4
    const-string v0, "10.0.0.200"

    goto :goto_2

    :cond_5
    const-string v3, "cmnet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "uninet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ctnet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "3gnet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "10.0.0.172"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/baidu/location/s;->cX:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    :cond_7
    const-string v3, "10.0.0.200"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "10.0.0.200"

    sput-object v0, Lcom/baidu/location/s;->cX:Ljava/lang/String;

    move v0, v1

    goto :goto_1
.end method

.method static synthetic if(Lcom/baidu/location/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/s;->L()V

    return-void
.end method

.method public static if(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic if(Lcom/baidu/location/s;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/s;->cV:Z

    return p1
.end method


# virtual methods
.method public N()V
    .locals 1

    new-instance v0, Lcom/baidu/location/s$2;

    invoke-direct {v0, p0}, Lcom/baidu/location/s$2;-><init>(Lcom/baidu/location/s;)V

    invoke-virtual {v0}, Lcom/baidu/location/s$2;->start()V

    return-void
.end method

.method public Q()V
    .locals 1

    new-instance v0, Lcom/baidu/location/s$1;

    invoke-direct {v0, p0}, Lcom/baidu/location/s$1;-><init>(Lcom/baidu/location/s;)V

    invoke-virtual {v0}, Lcom/baidu/location/s$1;->start()V

    return-void
.end method

.method public R()V
    .locals 1

    new-instance v0, Lcom/baidu/location/s$3;

    invoke-direct {v0, p0}, Lcom/baidu/location/s$3;-><init>(Lcom/baidu/location/s;)V

    invoke-virtual {v0}, Lcom/baidu/location/s$3;->start()V

    return-void
.end method

.method abstract T()V
.end method

.method abstract do(Z)V
.end method
