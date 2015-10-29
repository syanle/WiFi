.class public Lcom/umeng/socom/net/DownloadingService;
.super Landroid/app/Service;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socom/net/DownloadingService$a;,
        Lcom/umeng/socom/net/DownloadingService$b;,
        Lcom/umeng/socom/net/DownloadingService$c;,
        Lcom/umeng/socom/net/DownloadingService$d;
    }
.end annotation


# static fields
.field static final a:I = 0x3

.field static final b:I = 0x4

.field static final c:I = 0x5

.field static final d:I = 0x0

.field static final e:I = 0x1

.field static final f:I = 0x64

.field static final g:Ljava/lang/String; = "filename"

.field public static h:Z = false

.field private static final j:Ljava/lang/String;

.field private static final l:I = 0x3

.field private static final p:J = 0x1f40L

.field private static q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socom/net/a$a;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/umeng/socom/net/DownloadingService$d;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Ljava/lang/Boolean;


# instance fields
.field final i:Landroid/os/Messenger;

.field private k:Landroid/app/NotificationManager;

.field private m:Landroid/content/Context;

.field private n:Landroid/os/Handler;

.field private o:Lcom/umeng/socom/net/DownloadingService$a;

.field private s:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    const-class v0, Lcom/umeng/socom/net/DownloadingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    .line 144
    sput-boolean v1, Lcom/umeng/socom/net/DownloadingService;->h:Z

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/socom/net/DownloadingService;->q:Ljava/util/Map;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/socom/net/DownloadingService;->r:Ljava/util/Map;

    .line 822
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/socom/net/DownloadingService;->t:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 155
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/umeng/socom/net/DownloadingService$c;

    invoke-direct {v1, p0}, Lcom/umeng/socom/net/DownloadingService$c;-><init>(Lcom/umeng/socom/net/DownloadingService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->i:Landroid/os/Messenger;

    .line 120
    return-void
.end method

.method public static a(Lcom/umeng/socom/net/a$a;)I
    .locals 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/umeng/socom/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/umeng/socom/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 448
    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 451
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/umeng/socom/net/DownloadingService;Lcom/umeng/socom/net/a$a;II)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 944
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/a$a;II)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/umeng/socom/net/a$a;II)Landroid/app/Notification;
    .locals 10

    .prologue
    const v9, 0x1080081

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 945
    invoke-virtual {p0}, Lcom/umeng/socom/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 946
    new-instance v1, Landroid/app/Notification;

    .line 947
    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\u5e94\u7528"

    const-wide/16 v3, 0x1

    .line 946
    invoke-direct {v1, v9, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 949
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 950
    invoke-static {v0}, Lcom/umeng/socom/a/b;->a(Landroid/content/Context;)I

    move-result v4

    .line 949
    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 952
    invoke-static {v0}, Lcom/umeng/socom/a/a;->c(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x64

    .line 951
    invoke-virtual {v2, v3, v4, p3, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 955
    invoke-static {v0}, Lcom/umeng/socom/a/a;->b(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 954
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 957
    invoke-static {v0}, Lcom/umeng/socom/a/a;->d(Landroid/content/Context;)I

    move-result v3

    .line 958
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 960
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 959
    invoke-static {v6}, Lcom/umeng/socom/a/c;->g(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 961
    iget-object v5, p1, Lcom/umeng/socom/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 958
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 956
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 963
    invoke-static {v0}, Lcom/umeng/socom/a/a;->a(Landroid/content/Context;)I

    move-result v3

    const-string v4, ""

    .line 962
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 965
    invoke-static {v0}, Lcom/umeng/socom/a/a;->e(Landroid/content/Context;)I

    move-result v3

    .line 964
    invoke-virtual {v2, v3, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 968
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 969
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 970
    const/high16 v4, 0x8000000

    .line 969
    invoke-static {v0, v7, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 972
    iget-boolean v3, p1, Lcom/umeng/socom/net/a$a;->e:Z

    if-eqz v3, :cond_0

    .line 973
    const/4 v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 974
    invoke-virtual {p0}, Lcom/umeng/socom/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 975
    const-string v4, "continue"

    invoke-static {p2, v4}, Lcom/umeng/socom/net/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 974
    invoke-static {v3, v4}, Lcom/umeng/socom/net/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 977
    invoke-static {v0}, Lcom/umeng/socom/a/a;->f(Landroid/content/Context;)I

    move-result v4

    .line 976
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 979
    invoke-static {v0}, Lcom/umeng/socom/a/a;->f(Landroid/content/Context;)I

    move-result v3

    .line 978
    invoke-virtual {v2, v3, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 980
    invoke-direct {p0, v1, p2}, Lcom/umeng/socom/net/DownloadingService;->b(Landroid/app/Notification;I)V

    .line 982
    invoke-virtual {p0}, Lcom/umeng/socom/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 983
    const-string v4, "cancel"

    invoke-static {p2, v4}, Lcom/umeng/socom/net/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 982
    invoke-static {v3, v4}, Lcom/umeng/socom/net/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 985
    invoke-static {v0}, Lcom/umeng/socom/a/a;->h(Landroid/content/Context;)I

    move-result v4

    .line 984
    invoke-virtual {v2, v4, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 987
    invoke-static {v0}, Lcom/umeng/socom/a/a;->h(Landroid/content/Context;)I

    move-result v0

    .line 986
    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 996
    :goto_0
    return-object v1

    .line 989
    :cond_0
    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 991
    invoke-static {v0}, Lcom/umeng/socom/a/a;->f(Landroid/content/Context;)I

    move-result v3

    .line 990
    invoke-virtual {v2, v3, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 993
    invoke-static {v0}, Lcom/umeng/socom/a/a;->h(Landroid/content/Context;)I

    move-result v0

    .line 992
    invoke-virtual {v2, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socom/net/DownloadingService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 394
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->r:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socom/net/DownloadingService$d;

    .line 395
    sget-object v1, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download service clear cache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/umeng/socom/net/DownloadingService$d;->e:Lcom/umeng/socom/net/a$a;

    iget-object v3, v3, Lcom/umeng/socom/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v1, v0, Lcom/umeng/socom/net/DownloadingService$d;->a:Lcom/umeng/socom/net/DownloadingService$b;

    if-eqz v1, :cond_0

    .line 397
    iget-object v1, v0, Lcom/umeng/socom/net/DownloadingService$d;->a:Lcom/umeng/socom/net/DownloadingService$b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/umeng/socom/net/DownloadingService$b;->a(I)V

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService;->k:Landroid/app/NotificationManager;

    iget v2, v0, Lcom/umeng/socom/net/DownloadingService$d;->c:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 400
    sget-object v1, Lcom/umeng/socom/net/DownloadingService;->q:Ljava/util/Map;

    iget-object v2, v0, Lcom/umeng/socom/net/DownloadingService$d;->e:Lcom/umeng/socom/net/a$a;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    sget-object v1, Lcom/umeng/socom/net/DownloadingService;->q:Ljava/util/Map;

    iget-object v2, v0, Lcom/umeng/socom/net/DownloadingService$d;->e:Lcom/umeng/socom/net/a$a;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/socom/net/DownloadingService$d;->b()V

    .line 404
    invoke-direct {p0}, Lcom/umeng/socom/net/DownloadingService;->e()V

    .line 405
    return-void
.end method

.method private a(Landroid/app/Notification;I)V
    .locals 5

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socom/a/a;->f(Landroid/content/Context;)I

    move-result v0

    .line 1072
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1074
    iget-object v2, p0, Lcom/umeng/socom/net/DownloadingService;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1076
    iget-object v3, p0, Lcom/umeng/socom/net/DownloadingService;->m:Landroid/content/Context;

    .line 1077
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 1076
    invoke-static {v3}, Lcom/umeng/socom/a/c;->e(Landroid/content/Context;)I

    move-result v3

    .line 1075
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1072
    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1078
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v2, "setBackgroundResource"

    iget-object v3, p0, Lcom/umeng/socom/net/DownloadingService;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/socom/b;->a(Landroid/content/Context;)Lcom/umeng/socom/b;

    move-result-object v3

    .line 1079
    const-string v4, "umeng_common_gradient_green"

    invoke-virtual {v3, v4}, Lcom/umeng/socom/b;->c(Ljava/lang/String;)I

    move-result v3

    .line 1078
    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1080
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->k:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1081
    return-void
.end method

.method static synthetic a(Lcom/umeng/socom/net/DownloadingService;I)V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0, p1}, Lcom/umeng/socom/net/DownloadingService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socom/net/DownloadingService;Landroid/app/NotificationManager;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/umeng/socom/net/DownloadingService;->k:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic a(Lcom/umeng/socom/net/DownloadingService;Lcom/umeng/socom/net/a$a;)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0, p1}, Lcom/umeng/socom/net/DownloadingService;->c(Lcom/umeng/socom/net/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socom/net/DownloadingService;Lcom/umeng/socom/net/a$a;JJJ)V
    .locals 0

    .prologue
    .line 798
    invoke-direct/range {p0 .. p7}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/a$a;JJJ)V

    return-void
.end method

.method private a(Lcom/umeng/socom/net/a$a;JJJ)V
    .locals 4

    .prologue
    .line 800
    iget-object v0, p1, Lcom/umeng/socom/net/a$a;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 801
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 802
    const-string v0, "dsize"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    invoke-static {}, Lcom/umeng/socom/util/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 806
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 807
    const-string v2, "dtime"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const/4 v0, 0x0

    .line 810
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_0

    .line 811
    long-to-float v0, p2

    long-to-float v2, p4

    div-float/2addr v0, v2

    .line 813
    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 814
    const-string v2, "dpcent"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string v0, "ptimes"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const/4 v0, 0x0

    iget-object v2, p1, Lcom/umeng/socom/net/a$a;->d:[Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/umeng/socom/net/DownloadingService;->b(Ljava/util/Map;Z[Ljava/lang/String;)V

    .line 820
    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 822
    sput-object p0, Lcom/umeng/socom/net/DownloadingService;->t:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic a(Ljava/util/Map;Z[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1004
    invoke-static {p0, p1, p2}, Lcom/umeng/socom/net/DownloadingService;->b(Ljava/util/Map;Z[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 851
    invoke-static {p0}, Lcom/umeng/socom/net/DownloadingService;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 15

    .prologue
    .line 1108
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.umeng.broadcast.download.msg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1109
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1111
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1112
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1113
    if-eqz v5, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/umeng/socom/net/DownloadingService;->r:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1114
    sget-object v1, Lcom/umeng/socom/net/DownloadingService;->r:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/umeng/socom/net/DownloadingService$d;

    move-object v14, v0

    .line 1115
    iget-object v1, v14, Lcom/umeng/socom/net/DownloadingService$d;->a:Lcom/umeng/socom/net/DownloadingService$b;

    .line 1117
    const-string v3, "continue"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1118
    if-nez v1, :cond_1

    .line 1119
    sget-object v1, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    const-string v2, "Receive action do play click."

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/umeng/socom/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1125
    invoke-static/range {p1 .. p1}, Lcom/umeng/socom/DeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1128
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1130
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1129
    invoke-static {v2}, Lcom/umeng/socom/a/c;->a(Landroid/content/Context;)I

    move-result v2

    .line 1128
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1130
    const/4 v2, 0x1

    .line 1126
    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1131
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1132
    const/4 v1, 0x0

    .line 1172
    :goto_0
    return v1

    .line 1135
    :cond_0
    new-instance v1, Lcom/umeng/socom/net/DownloadingService$b;

    iget-object v4, v14, Lcom/umeng/socom/net/DownloadingService$d;->e:Lcom/umeng/socom/net/a$a;

    .line 1136
    iget v6, v14, Lcom/umeng/socom/net/DownloadingService$d;->d:I

    iget-object v7, p0, Lcom/umeng/socom/net/DownloadingService;->o:Lcom/umeng/socom/net/DownloadingService$a;

    move-object v2, p0

    move-object/from16 v3, p1

    .line 1135
    invoke-direct/range {v1 .. v7}, Lcom/umeng/socom/net/DownloadingService$b;-><init>(Lcom/umeng/socom/net/DownloadingService;Landroid/content/Context;Lcom/umeng/socom/net/a$a;IILcom/umeng/socom/net/DownloadingService$a;)V

    .line 1137
    iput-object v1, v14, Lcom/umeng/socom/net/DownloadingService$d;->a:Lcom/umeng/socom/net/DownloadingService$b;

    .line 1138
    invoke-virtual {v1}, Lcom/umeng/socom/net/DownloadingService$b;->start()V

    .line 1140
    iget-object v1, v14, Lcom/umeng/socom/net/DownloadingService$d;->b:Landroid/app/Notification;

    invoke-direct {p0, v1, v5}, Lcom/umeng/socom/net/DownloadingService;->b(Landroid/app/Notification;I)V

    .line 1141
    const/4 v1, 0x1

    goto :goto_0

    .line 1143
    :cond_1
    sget-object v2, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    const-string v3, "Receive action do play click."

    invoke-static {v2, v3}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/umeng/socom/net/DownloadingService$b;->a(I)V

    .line 1145
    const/4 v1, 0x0

    iput-object v1, v14, Lcom/umeng/socom/net/DownloadingService$d;->a:Lcom/umeng/socom/net/DownloadingService$b;

    .line 1146
    iget-object v1, v14, Lcom/umeng/socom/net/DownloadingService$d;->b:Landroid/app/Notification;

    invoke-direct {p0, v1, v5}, Lcom/umeng/socom/net/DownloadingService;->a(Landroid/app/Notification;I)V

    .line 1147
    const/4 v1, 0x1

    goto :goto_0

    .line 1149
    :cond_2
    const-string v3, "cancel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1150
    sget-object v2, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    const-string v3, "Receive action do stop click."

    invoke-static {v2, v3}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1152
    if-eqz v1, :cond_3

    .line 1153
    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/umeng/socom/net/DownloadingService$b;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1163
    :goto_1
    :try_start_2
    invoke-direct {p0, v5}, Lcom/umeng/socom/net/DownloadingService;->a(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1165
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1156
    :cond_3
    :try_start_3
    iget-object v1, v14, Lcom/umeng/socom/net/DownloadingService$d;->f:[J

    const/4 v2, 0x0

    aget-wide v8, v1, v2

    .line 1157
    iget-object v1, v14, Lcom/umeng/socom/net/DownloadingService$d;->f:[J

    const/4 v2, 0x1

    aget-wide v10, v1, v2

    .line 1158
    iget-object v1, v14, Lcom/umeng/socom/net/DownloadingService$d;->f:[J

    const/4 v2, 0x2

    aget-wide v12, v1, v2

    .line 1159
    iget-object v7, v14, Lcom/umeng/socom/net/DownloadingService$d;->e:Lcom/umeng/socom/net/a$a;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/a$a;JJJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1161
    :catch_0
    move-exception v1

    .line 1163
    :try_start_4
    invoke-direct {p0, v5}, Lcom/umeng/socom/net/DownloadingService;->a(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1169
    :catch_1
    move-exception v1

    .line 1170
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1172
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1162
    :catchall_0
    move-exception v1

    .line 1163
    :try_start_5
    invoke-direct {p0, v5}, Lcom/umeng/socom/net/DownloadingService;->a(I)V

    .line 1164
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method static synthetic a(Lcom/umeng/socom/net/DownloadingService;Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 1106
    invoke-direct {p0, p1, p2}, Lcom/umeng/socom/net/DownloadingService;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/umeng/socom/net/DownloadingService;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->k:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->q:Ljava/util/Map;

    return-object v0
.end method

.method private b(Landroid/app/Notification;I)V
    .locals 5

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socom/a/a;->f(Landroid/content/Context;)I

    move-result v0

    .line 1085
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1087
    iget-object v2, p0, Lcom/umeng/socom/net/DownloadingService;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1088
    iget-object v3, p0, Lcom/umeng/socom/net/DownloadingService;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/socom/a/c;->d(Landroid/content/Context;)I

    move-result v3

    .line 1087
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1085
    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1090
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v2, "setBackgroundResource"

    iget-object v3, p0, Lcom/umeng/socom/net/DownloadingService;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/socom/b;->a(Landroid/content/Context;)Lcom/umeng/socom/b;

    move-result-object v3

    .line 1091
    const-string v4, "umeng_common_gradient_orange"

    invoke-virtual {v3, v4}, Lcom/umeng/socom/b;->c(Ljava/lang/String;)I

    move-result v3

    .line 1090
    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1092
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->k:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1093
    return-void
.end method

.method private static final b(Ljava/util/Map;Z[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1006
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/socom/net/i;

    invoke-direct {v1, p2, p1, p0}, Lcom/umeng/socom/net/i;-><init>([Ljava/lang/String;ZLjava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1067
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1068
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 852
    .line 853
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 852
    check-cast v0, Landroid/app/ActivityManager;

    .line 854
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 855
    if-nez v0, :cond_0

    move v0, v1

    .line 865
    :goto_0
    return v0

    .line 858
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 859
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 865
    goto :goto_0

    .line 859
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 860
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_1

    .line 861
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/socom/net/a$a;)Z
    .locals 1

    .prologue
    .line 874
    invoke-static {p0}, Lcom/umeng/socom/net/DownloadingService;->d(Lcom/umeng/socom/net/a$a;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/umeng/socom/net/DownloadingService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->r:Ljava/util/Map;

    return-object v0
.end method

.method private c(Lcom/umeng/socom/net/a$a;)V
    .locals 7

    .prologue
    .line 424
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startDownload([mComponentName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/umeng/socom/net/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    iget-object v2, p1, Lcom/umeng/socom/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/socom/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {p1}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/a$a;)I

    move-result v4

    .line 428
    new-instance v0, Lcom/umeng/socom/net/DownloadingService$b;

    invoke-virtual {p0}, Lcom/umeng/socom/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    .line 429
    iget-object v6, p0, Lcom/umeng/socom/net/DownloadingService;->o:Lcom/umeng/socom/net/DownloadingService$a;

    move-object v1, p0

    move-object v3, p1

    .line 428
    invoke-direct/range {v0 .. v6}, Lcom/umeng/socom/net/DownloadingService$b;-><init>(Lcom/umeng/socom/net/DownloadingService;Landroid/content/Context;Lcom/umeng/socom/net/a$a;IILcom/umeng/socom/net/DownloadingService$a;)V

    .line 431
    new-instance v1, Lcom/umeng/socom/net/DownloadingService$d;

    invoke-direct {v1, p1, v4}, Lcom/umeng/socom/net/DownloadingService$d;-><init>(Lcom/umeng/socom/net/a$a;I)V

    .line 432
    invoke-virtual {v1}, Lcom/umeng/socom/net/DownloadingService$d;->a()V

    .line 433
    iput-object v0, v1, Lcom/umeng/socom/net/DownloadingService$d;->a:Lcom/umeng/socom/net/DownloadingService$b;

    .line 435
    invoke-virtual {v0}, Lcom/umeng/socom/net/DownloadingService$b;->start()V

    .line 437
    invoke-direct {p0}, Lcom/umeng/socom/net/DownloadingService;->e()V

    .line 438
    sget-boolean v0, Lcom/umeng/socom/net/DownloadingService;->h:Z

    if-eqz v0, :cond_0

    .line 439
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 440
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 445
    :cond_0
    return-void

    .line 440
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 441
    sget-object v2, Lcom/umeng/socom/net/DownloadingService;->r:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socom/net/DownloadingService$d;

    .line 442
    sget-object v2, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Running task "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/umeng/socom/net/DownloadingService$d;->e:Lcom/umeng/socom/net/a$a;

    iget-object v0, v0, Lcom/umeng/socom/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 411
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.umeng.intent.DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 412
    new-instance v1, Lcom/umeng/socom/net/f;

    invoke-direct {v1, p0}, Lcom/umeng/socom/net/f;-><init>(Lcom/umeng/socom/net/DownloadingService;)V

    iput-object v1, p0, Lcom/umeng/socom/net/DownloadingService;->s:Landroid/content/BroadcastReceiver;

    .line 420
    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socom/net/DownloadingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    return-void
.end method

.method private static d(Lcom/umeng/socom/net/a$a;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 875
    sget-boolean v0, Lcom/umeng/socom/net/DownloadingService;->h:Z

    if-eqz v0, :cond_0

    .line 876
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 877
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->q:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 878
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 885
    :cond_0
    :goto_1
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->q:Ljava/util/Map;

    if-nez v0, :cond_3

    move v0, v1

    .line 893
    :goto_2
    return v0

    .line 878
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socom/net/a$a;

    .line 879
    sget-object v4, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " downling  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/umeng/socom/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/umeng/socom/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 882
    :cond_2
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "downling  null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 888
    :cond_3
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 893
    goto :goto_2

    .line 888
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socom/net/a$a;

    .line 889
    iget-object v0, v0, Lcom/umeng/socom/net/a$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/socom/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 890
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private e()V
    .locals 5

    .prologue
    .line 1096
    sget-boolean v0, Lcom/umeng/socom/net/DownloadingService;->h:Z

    if-eqz v0, :cond_0

    .line 1097
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 1098
    sget-object v1, Lcom/umeng/socom/net/DownloadingService;->r:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 1099
    sget-object v2, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Client size ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   cacheSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/socom/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    if-eq v0, v1, :cond_0

    .line 1101
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Client size ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   cacheSize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1104
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 825
    sget-object v1, Lcom/umeng/socom/net/DownloadingService;->t:Ljava/lang/Boolean;

    monitor-enter v1

    .line 826
    :try_start_0
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "show single toast.["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/socom/net/DownloadingService;->t:Ljava/lang/Boolean;

    .line 829
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->n:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/socom/net/g;

    invoke-direct {v2, p0, p1}, Lcom/umeng/socom/net/g;-><init>(Lcom/umeng/socom/net/DownloadingService;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 835
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->n:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/socom/net/h;

    invoke-direct {v2, p0}, Lcom/umeng/socom/net/h;-><init>(Lcom/umeng/socom/net/DownloadingService;)V

    .line 840
    const-wide/16 v3, 0x4b0

    .line 835
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 825
    :cond_0
    monitor-exit v1

    .line 843
    return-void

    .line 825
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    const-string v1, "onBind "

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->i:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 221
    sget-boolean v0, Lcom/umeng/socom/net/DownloadingService;->h:Z

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/socom/Log;->LOG:Z

    .line 223
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 225
    :cond_0
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/umeng/socom/net/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->k:Landroid/app/NotificationManager;

    .line 227
    iput-object p0, p0, Lcom/umeng/socom/net/DownloadingService;->m:Landroid/content/Context;

    .line 229
    new-instance v0, Lcom/umeng/socom/net/d;

    invoke-direct {v0, p0}, Lcom/umeng/socom/net/d;-><init>(Lcom/umeng/socom/net/DownloadingService;)V

    iput-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->n:Landroid/os/Handler;

    .line 282
    new-instance v0, Lcom/umeng/socom/net/e;

    invoke-direct {v0, p0}, Lcom/umeng/socom/net/e;-><init>(Lcom/umeng/socom/net/DownloadingService;)V

    iput-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->o:Lcom/umeng/socom/net/DownloadingService$a;

    .line 391
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 899
    const v0, 0x3f480

    .line 900
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/socom/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socom/net/c;->a(Landroid/content/Context;)Lcom/umeng/socom/net/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/socom/net/c;->a(I)V

    .line 901
    invoke-virtual {p0}, Lcom/umeng/socom/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socom/net/c;->a(Landroid/content/Context;)Lcom/umeng/socom/net/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socom/net/c;->finalize()V

    .line 902
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->s:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/umeng/socom/net/DownloadingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 909
    return-void

    .line 905
    :catch_0
    move-exception v0

    .line 906
    sget-object v1, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lcom/umeng/socom/net/DownloadingService;->j:Ljava/lang/String;

    const-string v1, "onStart "

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/umeng/socom/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/umeng/socom/net/DownloadingService;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 214
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 215
    return-void
.end method
