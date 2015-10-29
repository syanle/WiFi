.class public Lcom/umeng/socialize/controller/impl/c;
.super Lcom/umeng/socialize/controller/impl/b;
.source "SocialServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/UMSocialService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/controller/impl/c$a;
    }
.end annotation


# static fields
.field public static b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener; = null

.field public static c:Landroid/app/ProgressDialog; = null

.field public static volatile d:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/bean/SocializeEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:I = 0x0

.field public static f:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Landroid/os/Handler; = null

.field private static final h:Ljava/lang/String;

.field private static i:Lcom/umeng/socialize/bean/SocializeConfig; = null

.field private static final m:Ljava/lang/String; = "image_uri_cache"

.field private static final n:Ljava/lang/String; = "100424468"


# instance fields
.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private o:Lcom/umeng/socialize/view/ce;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    const-class v0, Lcom/umeng/socialize/controller/impl/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 114
    sput-object v0, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 116
    sput-object v1, Lcom/umeng/socialize/controller/impl/c;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 121
    sput-object v1, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/socialize/controller/impl/c;->d:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    .line 3122
    new-instance v0, Lcom/umeng/socialize/controller/impl/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/socialize/controller/impl/d;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/umeng/socialize/controller/impl/c;->g:Landroid/os/Handler;

    .line 3134
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/b;-><init>(Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/controller/impl/c;->l:Z

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->o:Lcom/umeng/socialize/view/ce;

    .line 145
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 1406
    new-instance v0, Landroid/app/ProgressDialog;

    .line 1407
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 1408
    const-string v2, "Theme.UMDialog"

    .line 1407
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 1406
    invoke-direct {v0, p1, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    .line 1410
    if-nez p4, :cond_0

    .line 1413
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_text_waitting_redirect"

    .line 1412
    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1415
    invoke-static {p1, p2}, Lcom/umeng/socialize/common/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1418
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 1419
    const-string v2, "umeng_socialize_text_waitting_message"

    .line 1417
    invoke-static {p1, v0, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1421
    :cond_0
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1422
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 1404
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    .locals 2

    .prologue
    .line 2371
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 2372
    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 2371
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 2375
    new-instance v1, Lcom/umeng/socialize/controller/impl/ab;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/umeng/socialize/controller/impl/ab;-><init>(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 2448
    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/c;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Lcom/umeng/socialize/controller/UMSsoHandler;)V
    .locals 6

    .prologue
    .line 2612
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    .line 2613
    const/16 v1, 0xc

    .line 2612
    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 2614
    new-instance v4, Lcom/umeng/socialize/controller/impl/ae;

    invoke-direct {v4, p0, p3, p1}, Lcom/umeng/socialize/controller/impl/ae;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Landroid/app/Activity;)V

    .line 2673
    new-instance v0, Lcom/umeng/socialize/controller/impl/c$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/controller/impl/c$a;-><init>(Lcom/umeng/socialize/controller/impl/c;Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Lcom/umeng/socialize/controller/UMSsoHandler;)V

    .line 2676
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 2677
    :cond_0
    invoke-static {p1}, Lcom/umeng/socialize/common/SocializeUtils;->getPlatformSecret(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    .line 2678
    invoke-static {p1}, Lcom/umeng/socialize/common/SocializeUtils;->getPlatformKey(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    .line 2680
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2681
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2682
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2683
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2684
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 2685
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2686
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2687
    const/16 v1, 0xc8

    .line 2688
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    .line 2687
    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    .line 2690
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    .line 2694
    :goto_0
    return-void

    .line 2692
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1040
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    invoke-static {p1, p3}, Lcom/umeng/socialize/common/SocializeUtils;->insertImage(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1042
    if-eqz v0, :cond_0

    .line 1043
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1044
    const-string v1, "image/png;message/rfc822"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    sget-object v1, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1052
    const/4 v1, 0x0

    .line 1051
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1053
    const/4 v0, 0x0

    .line 1054
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1064
    if-eqz v1, :cond_4

    .line 1065
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1066
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1065
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :goto_1
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1077
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v0, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 1078
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    const-string v2, "email"

    .line 1077
    invoke-static {p1, v0, p4, v1, v2}, Lcom/umeng/socialize/common/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1083
    :goto_2
    sget-object v0, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/controller/impl/c;->setShareType(Lcom/umeng/socialize/bean/ShareType;)V

    .line 1084
    return-void

    .line 1054
    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1056
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, ".gm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1057
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1058
    const-string v4, "gmail"

    .line 1057
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1058
    if-eqz v3, :cond_1

    :cond_3
    move-object v1, v0

    .line 1059
    goto :goto_0

    .line 1068
    :cond_4
    const-string v0, "com.umeng.socialize"

    .line 1069
    const-string v1, "no found gmail package..."

    .line 1068
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    const-string v1, "com.umeng.socialize"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1079
    :catch_1
    move-exception v0

    .line 1080
    sget-object v1, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1081
    const-string v0, "\u65e0\u6cd5\u901a\u8fc7\u90ae\u4ef6\u5206\u4eab\uff01"

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 6

    .prologue
    .line 572
    .line 574
    new-instance v0, Lcom/umeng/socialize/controller/impl/h;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/controller/impl/h;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 601
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/h;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 603
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 1698
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13a3

    if-eq v0, v1, :cond_0

    .line 1699
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13a4

    if-eq v0, v1, :cond_0

    .line 1700
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1396

    if-eq v0, v1, :cond_0

    .line 1701
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13ad

    if-ne v0, v1, :cond_1

    .line 1702
    :cond_0
    invoke-static {p1, p2}, Lcom/umeng/socialize/db/OauthHelper;->remove(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 1704
    :cond_1
    if-eqz p2, :cond_2

    .line 1705
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "Error Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_2
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/controller/impl/b;)V
    .locals 1

    .prologue
    .line 1660
    new-instance v0, Lcom/umeng/socialize/controller/impl/r;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/socialize/controller/impl/r;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V

    .line 1672
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 774
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/c;->k(Landroid/content/Context;)V

    .line 775
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    .line 776
    const-string v0, ""

    .line 778
    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v0

    sget-object v2, Lcom/umeng/socialize/bean/ShareType;->SHAKE:Lcom/umeng/socialize/bean/ShareType;

    if-ne v0, v2, :cond_0

    .line 779
    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 780
    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v1

    iget-object v4, v1, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    move-object v1, v0

    .line 794
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 795
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 797
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v2

    .line 800
    const-string v0, "\u52a0\u8f7d\u56fe\u7247\u4e2d,\u8bf7\u7a0d\u5019..."

    const/4 v1, 0x1

    .line 799
    invoke-direct {p0, p1, v3, v0, v1}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    .line 801
    new-instance v0, Lcom/umeng/socialize/controller/impl/k;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/controller/impl/k;-><init>(Lcom/umeng/socialize/controller/impl/c;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 822
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/k;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 831
    :goto_1
    return-void

    .line 782
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    .line 783
    instance-of v2, v0, Lcom/umeng/socialize/media/SmsShareContent;

    if-eqz v2, :cond_1

    .line 784
    check-cast v0, Lcom/umeng/socialize/media/SmsShareContent;

    .line 785
    invoke-virtual {v0}, Lcom/umeng/socialize/media/SmsShareContent;->getShareContent()Ljava/lang/String;

    move-result-object v4

    .line 786
    invoke-virtual {v0}, Lcom/umeng/socialize/media/SmsShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    move-object v1, v0

    .line 787
    goto :goto_0

    .line 788
    :cond_1
    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v4

    .line 789
    instance-of v1, v0, Lcom/umeng/socialize/media/UMImage;

    if-eqz v1, :cond_4

    .line 790
    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    move-object v1, v0

    goto :goto_0

    .line 825
    :cond_2
    const-string v0, ""

    .line 826
    if-eqz v1, :cond_3

    .line 827
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v0

    .line 829
    :cond_3
    invoke-direct {p0, p1, v0, v4, p2}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_1

    :cond_4
    move-object v1, v3

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 860
    sget-object v0, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/controller/impl/c;->setShareType(Lcom/umeng/socialize/bean/ShareType;)V

    .line 862
    const-string v0, "com.android.mms"

    invoke-static {v0, p1}, Lcom/umeng/socom/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    .line 864
    invoke-static {p1, p2}, Lcom/umeng/socialize/common/SocializeUtils;->insertImage(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 866
    if-eqz v1, :cond_3

    .line 867
    if-eqz v2, :cond_2

    .line 869
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 870
    if-eqz v1, :cond_0

    .line 873
    :try_start_0
    const-string v1, "com.android.mms.ui.ComposeMessageActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 874
    const-string v1, "com.android.mms"

    .line 875
    const-string v3, "com.android.mms.ui.ComposeMessageActivity"

    .line 874
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    :cond_0
    :goto_0
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 882
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 883
    sget-object v1, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 924
    :cond_1
    :goto_1
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 939
    :goto_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v0, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 940
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    const-string v2, "sms"

    .line 939
    invoke-static {p1, v0, p3, v1, v2}, Lcom/umeng/socialize/common/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 941
    return-void

    .line 876
    :catch_0
    move-exception v1

    .line 877
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 886
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 887
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 891
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_5

    .line 894
    invoke-static {p1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 896
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 897
    if-nez v2, :cond_4

    .line 898
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    :goto_3
    if-eqz v1, :cond_1

    .line 909
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 902
    :cond_4
    const-string v3, "image/*"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 904
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 912
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    .line 913
    const-string v3, "smsto:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 912
    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 914
    if-eqz v2, :cond_1

    .line 916
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 917
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    sget-object v1, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 927
    :catch_1
    move-exception v0

    .line 929
    if-eqz p4, :cond_7

    .line 930
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0x2766

    .line 931
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 930
    invoke-interface {p4, v1, v2, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 936
    :cond_6
    :goto_4
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 932
    :cond_7
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 933
    const-string v1, "\u62b1\u6b49,\u60a8\u7684\u8bbe\u5907\u4e2d\u6ca1\u6709\u77ed\u4fe1\u7a0b\u5e8f..."

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 934
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method

.method private a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMComment;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;)V
    .locals 7

    .prologue
    .line 614
    .line 616
    new-instance v0, Lcom/umeng/socialize/controller/impl/i;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/controller/impl/i;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Lcom/umeng/socialize/bean/UMComment;[Lcom/umeng/socialize/bean/SNSPair;)V

    .line 641
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/i;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 643
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1038
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 1215
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 2548
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 1696
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/controller/impl/b;)V
    .locals 0

    .prologue
    .line 1658
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/controller/impl/b;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 858
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/c;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/impl/c;Z)V
    .locals 0

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/umeng/socialize/controller/impl/c;->l:Z

    return-void
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2148
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2149
    :cond_0
    sget-object v1, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    const-string v2, "### activity == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    :goto_0
    return v0

    .line 2152
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->o:Lcom/umeng/socialize/view/ce;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->o:Lcom/umeng/socialize/view/ce;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/ce;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2153
    const-string v1, "\u5206\u4eab\u9762\u677f\u5df2\u6253\u5f00"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2158
    :cond_2
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lcom/umeng/socialize/bean/SocializeConfig;->getAllPlatforms(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 2159
    sget-object v1, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    const-string v2, "### \u5e73\u53f0\u6570\u91cf\u4e3a0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const-string v1, "\u5e73\u53f0\u6570\u91cf\u4e3a0"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2163
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .prologue
    .line 3211
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 3212
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 3213
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 3214
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG_DYNAMIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 3215
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 3216
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 3217
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 3218
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 3219
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 3220
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p1, v0, :cond_0

    .line 3221
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p1, v0, :cond_1

    .line 3222
    :cond_0
    const/4 v0, 0x0

    .line 3224
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private varargs a(Landroid/content/Context;Ljava/util/Map;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)[Lcom/umeng/socialize/bean/SNSPair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Ljava/lang/Integer;",
            ">;[",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ")[",
            "Lcom/umeng/socialize/bean/SNSPair;"
        }
    .end annotation

    .prologue
    .line 1719
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1720
    if-eqz p3, :cond_0

    .line 1721
    array-length v2, p3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 1731
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/umeng/socialize/bean/SNSPair;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/bean/SNSPair;

    return-object v0

    .line 1721
    :cond_1
    aget-object v3, p3, v0

    .line 1722
    invoke-static {p1, v3}, Lcom/umeng/socialize/db/OauthHelper;->isAuthenticated(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1723
    new-instance v4, Lcom/umeng/socialize/bean/SNSPair;

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3}, Lcom/umeng/socialize/db/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/umeng/socialize/bean/SNSPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1721
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1725
    :cond_3
    if-eqz p2, :cond_2

    .line 1726
    const/16 v4, -0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic b()Lcom/umeng/socialize/bean/SocializeConfig;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    .locals 2

    .prologue
    .line 2462
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 2463
    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 2462
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 2465
    new-instance v1, Lcom/umeng/socialize/controller/impl/ac;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/umeng/socialize/controller/impl/ac;-><init>(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 2538
    return-object v1
.end method

.method private b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 3066
    if-eqz p1, :cond_0

    .line 3068
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const-string v1, "www.umeng.com"

    invoke-virtual {v0, p1, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->supportQQPlatform(Landroid/app/Activity;Ljava/lang/String;)V

    .line 3073
    :goto_0
    return-void

    .line 3070
    :cond_0
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    const-string v1, "addQQPlatform: activity == null is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1219
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1219
    if-eqz v0, :cond_1

    .line 1220
    :cond_0
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6\u5230AppId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :goto_0
    return-void

    .line 1224
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1225
    const-string v1, "100424468"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1226
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getQZoneAddSharePermission()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1228
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 1229
    :cond_3
    const-string v1, "com.tencent.mobileqq"

    invoke-static {v1, p1}, Lcom/umeng/socom/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1232
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    invoke-static {v1, p1, v0, p3}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->invokeQQShare(Lcom/umeng/socialize/bean/SocializeEntity;Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 1235
    :cond_4
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    invoke-static {v1, p1, v0, p3}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->invokeWebViewShare(Lcom/umeng/socialize/bean/SocializeEntity;Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/socialize/controller/impl/c;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/controller/impl/c;)Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/impl/c;->l:Z

    return v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 1680
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1681
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1682
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1686
    const-string v0, "image_uri_cache"

    invoke-static {v1, v0}, Lcom/umeng/socialize/common/SocializeUtils;->saveObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1688
    :cond_0
    return-void

    .line 1682
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1684
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1683
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2

    .prologue
    .line 1255
    .line 1257
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 1258
    invoke-static {p1, v0}, Lcom/umeng/socialize/db/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v1

    .line 1259
    invoke-static {p1, v0}, Lcom/umeng/socialize/db/OauthHelper;->isAuthenticated(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1265
    :goto_0
    return-void

    .line 1262
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/controller/impl/c;->l:Z

    .line 1263
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 3

    .prologue
    .line 2550
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    .line 2551
    const/16 v1, 0x12

    .line 2550
    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 2552
    new-instance v0, Lcom/umeng/socialize/controller/impl/ad;

    invoke-direct {v0, p0, p3, p1}, Lcom/umeng/socialize/controller/impl/ad;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Landroid/content/Context;)V

    .line 2590
    new-instance v1, Lcom/umeng/socialize/view/av;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2, v0}, Lcom/umeng/socialize/view/av;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 2592
    if-eqz v0, :cond_0

    .line 2593
    invoke-interface {v0, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2596
    :cond_0
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/umeng/socialize/common/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;Z)V

    .line 2597
    return-void
.end method

.method static synthetic c(Lcom/umeng/socialize/controller/impl/c;)V
    .locals 0

    .prologue
    .line 1679
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/c;->c()V

    return-void
.end method

.method private c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3235
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3252
    :cond_0
    :goto_0
    return v1

    .line 3238
    :cond_1
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3239
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p2}, Lcom/umeng/socialize/bean/SocializeConfig;->isCustomPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3240
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 3241
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getCustomPlatforms()Ljava/util/List;

    move-result-object v0

    .line 3243
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 3244
    iget-object v0, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 3245
    goto :goto_0

    .line 3250
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/umeng/socialize/bean/SocializeConfig;->containsDeletePlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method static synthetic d(Lcom/umeng/socialize/controller/impl/c;)Lcom/umeng/socialize/view/ce;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->o:Lcom/umeng/socialize/view/ce;

    return-object v0
.end method

.method private d(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 4

    .prologue
    .line 1366
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getCustomPlatforms()Ljava/util/List;

    move-result-object v0

    .line 1367
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1368
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1388
    :cond_1
    :goto_0
    return-void

    .line 1368
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/CustomPlatform;

    .line 1369
    const-string v2, "sms"

    .line 1370
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1369
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1370
    if-eqz v2, :cond_3

    .line 1371
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->closeToast()V

    .line 1372
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/c;->shareSms(Landroid/content/Context;)V

    goto :goto_0

    .line 1374
    :cond_3
    const-string v2, "email"

    .line 1375
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1374
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1375
    if-eqz v2, :cond_4

    .line 1376
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->closeToast()V

    .line 1377
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/c;->shareEmail(Landroid/content/Context;)V

    goto :goto_0

    .line 1380
    :cond_4
    iget-object v2, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mKeyword:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1381
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeConfig;->closeToast()V

    .line 1382
    iget-object v1, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    .line 1383
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 1382
    invoke-interface {v1, v0, v2, p3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;->onClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 6

    .prologue
    .line 3172
    const-string v1, ""

    .line 3173
    const-string v2, "\u4e0d\u652f\u6301\u6388\u6743..."

    .line 3174
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v0, :cond_3

    .line 3175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3187
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3190
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3191
    sget-object v1, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3192
    if-eqz p3, :cond_2

    .line 3193
    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    invoke-direct {v1, v0}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p3, v1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 3195
    :cond_2
    return-void

    .line 3177
    :cond_3
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getCustomPlatforms()Ljava/util/List;

    move-result-object v0

    .line 3178
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/CustomPlatform;

    .line 3179
    iget-object v4, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mKeyword:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3180
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mShowWord:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1478
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/umeng/socialize/view/ShareActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1479
    const-string v1, "dc"

    .line 1480
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 1479
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1481
    const-string v1, "sns"

    .line 1482
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1481
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1484
    invoke-static {p1, p2}, Lcom/umeng/socialize/db/OauthHelper;->isAuthenticated(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1486
    iget-boolean v1, p0, Lcom/umeng/socialize/controller/impl/c;->l:Z

    if-eqz v1, :cond_0

    .line 1487
    invoke-static {p1, p2}, Lcom/umeng/socialize/db/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    .line 1488
    iput-boolean v3, p0, Lcom/umeng/socialize/controller/impl/c;->l:Z

    .line 1489
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1546
    :goto_0
    return-void

    .line 1491
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->contains(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 1492
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 1495
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1498
    :cond_2
    const-string v1, ""

    invoke-direct {p0, p1, p2, v1, v3}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    .line 1500
    new-instance v1, Lcom/umeng/socialize/controller/impl/p;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/umeng/socialize/controller/impl/p;-><init>(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Landroid/content/Intent;)V

    .line 1544
    invoke-virtual {p0, p1, p2, v1}, Lcom/umeng/socialize/controller/impl/c;->doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method

.method private j(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 3077
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-nez v0, :cond_0

    .line 3078
    new-instance v0, Lcom/umeng/socialize/controller/impl/ai;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/controller/impl/ai;-><init>(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/socialize/controller/impl/c;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 3117
    :cond_0
    return-void
.end method

.method private k(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3142
    const-string v0, "image_uri_cache"

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 3143
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3144
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3148
    :cond_0
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 3149
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3150
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3154
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3158
    :cond_1
    :goto_2
    return-void

    .line 3144
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3145
    sget-object v2, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3151
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v2, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 3155
    :cond_4
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 3156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/umeng/socialize/controller/impl/c;->f:Ljava/util/Set;

    goto :goto_2
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 2

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1442
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1441
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1442
    if-eqz v0, :cond_1

    .line 1443
    :cond_0
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6\u5230AppId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :goto_0
    return-void

    .line 1447
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1448
    const-string v1, "100424468"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1449
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getQZoneAddSharePermission()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1451
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->e(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 1452
    :cond_3
    const-string v1, "com.tencent.mobileqq"

    invoke-static {v1, p1}, Lcom/umeng/socom/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1455
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    invoke-static {v1, p1, v0, p3}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->invokeQQShare(Lcom/umeng/socialize/bean/SocializeEntity;Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 1458
    :cond_4
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    invoke-static {v1, p1, v0, p3}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->invokeWebViewShare(Lcom/umeng/socialize/bean/SocializeEntity;Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
    .locals 1

    .prologue
    .line 417
    .line 418
    new-instance v0, Lcom/umeng/socialize/controller/impl/ao;

    invoke-direct {v0, p0, p2, p0, p1}, Lcom/umeng/socialize/controller/impl/ao;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V

    .line 446
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/ao;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 447
    return-void
.end method

.method public deleteOauth(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 6

    .prologue
    .line 1920
    .line 1922
    new-instance v0, Lcom/umeng/socialize/controller/impl/v;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/controller/impl/v;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 1948
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/v;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 1950
    return-void
.end method

.method public directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 3

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    .line 1101
    const/16 v1, 0x8

    .line 1100
    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 1104
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/impl/c;->c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1105
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6ca1\u6709\u5728SDK\u4e2d\u914d\u7f6e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    if-eqz p1, :cond_0

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u5728SDK\u4e2d\u914d\u7f6e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    const/4 v1, 0x0

    .line 1107
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-nez v0, :cond_2

    .line 1113
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/c;->j(Landroid/content/Context;)V

    .line 1115
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    if-ne v0, v1, :cond_4

    .line 1117
    invoke-static {p2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 1123
    :goto_1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/controller/impl/c;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 1139
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p2}, Lcom/umeng/socialize/bean/SocializeConfig;->isCustomPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    .line 1141
    if-nez v0, :cond_3

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v1, :cond_3

    .line 1142
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v1, :cond_5

    .line 1143
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->d(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto :goto_0

    .line 1120
    :cond_4
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_1

    .line 1148
    :cond_5
    if-eqz v0, :cond_6

    .line 1149
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    .line 1151
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 1152
    const-string v2, "umeng_socialize_text_add_custom_platform"

    .line 1150
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1149
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1157
    :cond_6
    invoke-static {p1}, Lcom/umeng/socialize/common/SocializeUtils;->getPlatformSecret(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    .line 1158
    invoke-static {p1}, Lcom/umeng/socialize/common/SocializeUtils;->getPlatformKey(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    .line 1159
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v1, :cond_8

    .line 1161
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1162
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1163
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1164
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1165
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1166
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1167
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    goto/16 :goto_0

    .line 1171
    :cond_7
    new-instance v0, Lcom/umeng/socialize/controller/impl/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/m;-><init>(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1194
    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    goto/16 :goto_0

    .line 1197
    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto/16 :goto_0
.end method

.method public doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2265
    invoke-direct {p0, p2}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2266
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->d(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 2358
    :cond_0
    :goto_0
    return-void

    .line 2270
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    .line 2271
    const/4 v1, 0x3

    .line 2270
    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 2274
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v0

    .line 2278
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v1

    .line 2281
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getSinaSsoHandler()Lcom/umeng/socialize/controller/UMSsoHandler;

    move-result-object v2

    .line 2282
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SocializeConfig;->getQZoneSsoHandler()Lcom/umeng/socialize/controller/UMSsoHandler;

    move-result-object v3

    .line 2283
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/SocializeConfig;->getTencentWBSsoHandler()Lcom/umeng/socialize/controller/UMSsoHandler;

    move-result-object v4

    .line 2284
    sget-object v5, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "######## click sns logo -->  "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    sget-object v5, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v5, :cond_3

    if-eqz v2, :cond_3

    .line 2287
    sget-object v5, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v5}, Lcom/umeng/socialize/bean/SocializeConfig;->isOpenSinaSSO()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2288
    invoke-static {p1}, Lcom/umeng/socialize/bean/SocializeConfig;->isSupportSinaSSO(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2289
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 2290
    check-cast p1, Landroid/app/Activity;

    .line 2291
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Lcom/umeng/socialize/controller/UMSsoHandler;)V

    goto :goto_0

    .line 2294
    :cond_2
    const-string v0, "com.umeng.socialize"

    .line 2295
    const-string v1, "can`t do sso,the context param is not activity."

    .line 2294
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2297
    :cond_3
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v2, :cond_5

    .line 2298
    if-eqz v4, :cond_5

    .line 2299
    sget-object v2, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeConfig;->isOpenTencentWBSSO()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2300
    invoke-static {p1}, Lcom/umeng/socialize/bean/SocializeConfig;->isSupportTencentWBSSO(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2301
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 2302
    check-cast p1, Landroid/app/Activity;

    .line 2303
    invoke-direct {p0, p1, p2, v0, v4}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Lcom/umeng/socialize/controller/UMSsoHandler;)V

    goto/16 :goto_0

    .line 2306
    :cond_4
    const-string v0, "com.umeng.socialize"

    .line 2307
    const-string v1, "can`t do sso,the context param is not activity."

    .line 2306
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2309
    :cond_5
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v2, :cond_7

    .line 2310
    sget-object v2, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeConfig;->isOpenQQZoneSSO()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2311
    invoke-static {p1}, Lcom/umeng/socialize/bean/SocializeConfig;->isSupportQQZoneSSO(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2312
    if-eqz v3, :cond_7

    .line 2313
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 2314
    check-cast p1, Landroid/app/Activity;

    .line 2315
    invoke-direct {p0, p1, p2, v1, v3}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Lcom/umeng/socialize/controller/UMSsoHandler;)V

    goto/16 :goto_0

    .line 2318
    :cond_6
    const-string v0, "com.umeng.socialize"

    .line 2319
    const-string v1, "can`t do sso,the context param is not activity."

    .line 2318
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2321
    :cond_7
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v2, :cond_a

    .line 2322
    const-string v0, "com.tencent.mobileqq"

    invoke-static {v0, p1}, Lcom/umeng/socom/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2324
    const-string v0, "\u8bf7\u5b89\u88c5\u624b\u673aQQ\u5ba2\u6237\u7aef..."

    invoke-static {p1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2325
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2328
    :cond_8
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2330
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 2331
    const/16 v2, 0x161a

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/controller/UMSsoHandler;

    move-result-object v0

    .line 2330
    check-cast v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;

    .line 2332
    if-eqz v0, :cond_9

    .line 2334
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2335
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->login(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto/16 :goto_0

    .line 2337
    :cond_9
    const-string v0, "com.umeng.socialize"

    .line 2338
    const-string v1, "\u8bf7\u6dfb\u52a0\u5bf9QQ\u5e73\u53f0\u7684\u652f\u6301..."

    .line 2337
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2340
    :cond_a
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v1, :cond_c

    .line 2341
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 2342
    const v1, 0xface

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getSsoHandler(I)Lcom/umeng/socialize/controller/UMSsoHandler;

    move-result-object v0

    .line 2344
    if-eqz v0, :cond_b

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_b

    .line 2345
    invoke-virtual {v0, v8}, Lcom/umeng/socialize/controller/UMSsoHandler;->setShareAfterLogin(Z)V

    .line 2346
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1, p3}, Lcom/umeng/socialize/controller/UMSsoHandler;->authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto/16 :goto_0

    .line 2347
    :cond_b
    if-eqz p1, :cond_0

    .line 2350
    const-string v0, "\u6ca1\u6709\u6dfb\u52a0facebook\u5e73\u53f0 \u6216\u8005 doOauthVerify\u7684context\u53c2\u6570\u4e0d\u662factivity\u7c7b\u578b"

    .line 2348
    invoke-static {p1, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2351
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2352
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    .line 2353
    const-string v1, "### \u6ca1\u6709\u6dfb\u52a0facebook\u5e73\u53f0 \u6216\u8005 doOauthVerify\u7684context\u53c2\u6570\u4e0d\u662factivity\u7c7b\u578b"

    .line 2352
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2356
    :cond_c
    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/controller/impl/c;->c(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto/16 :goto_0
.end method

.method public varargs follow(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v2, -0x65

    .line 2890
    .line 2893
    invoke-static {p1, p2}, Lcom/umeng/socialize/db/OauthHelper;->isAuthenticated(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2894
    invoke-static {p1, p2}, Lcom/umeng/socialize/db/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    .line 2895
    new-instance v5, Lcom/umeng/socialize/bean/SNSPair;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Lcom/umeng/socialize/bean/SNSPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    new-instance v0, Lcom/umeng/socialize/controller/impl/ag;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/umeng/socialize/controller/impl/ag;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;[Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2922
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/ag;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 2931
    :cond_0
    :goto_0
    return-void

    .line 2924
    :cond_1
    if-eqz p3, :cond_0

    .line 2925
    invoke-interface {p3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onStart()V

    .line 2926
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    .line 2927
    invoke-direct {v0, v2}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 2928
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 2926
    invoke-interface {p3, v0, v2, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onComplete(Lcom/umeng/socialize/bean/MultiStatus;ILcom/umeng/socialize/bean/SocializeEntity;)V

    goto :goto_0
.end method

.method public getComments(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;J)V
    .locals 7

    .prologue
    .line 374
    .line 375
    new-instance v0, Lcom/umeng/socialize/controller/impl/an;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/controller/impl/an;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;J)V

    .line 407
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/an;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 408
    return-void
.end method

.method public getConfig()Lcom/umeng/socialize/bean/SocializeConfig;
    .locals 1

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getEntityConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2038
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    if-nez v0, :cond_0

    .line 2039
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 2041
    :cond_0
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 2043
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getEntityConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public getFriends(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 7

    .prologue
    .line 1863
    .line 1864
    invoke-static {p1, p3}, Lcom/umeng/socialize/db/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v6

    .line 1865
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1866
    if-eqz p2, :cond_0

    .line 1867
    invoke-interface {p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;->onStart()V

    .line 1869
    :cond_0
    if-eqz p2, :cond_1

    .line 1870
    const/16 v0, -0x65

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;->onComplete(ILjava/util/List;)V

    .line 1873
    :cond_1
    new-instance v0, Lcom/umeng/socialize/controller/impl/u;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/controller/impl/u;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 1907
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/u;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 1909
    return-void
.end method

.method public getPlatformInfo(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
    .locals 6

    .prologue
    .line 2951
    .line 2954
    invoke-static {p1, p2}, Lcom/umeng/socialize/db/OauthHelper;->isAuthenticated(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2955
    invoke-static {p1, p2}, Lcom/umeng/socialize/db/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    .line 2956
    new-instance v5, Lcom/umeng/socialize/bean/SNSPair;

    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Lcom/umeng/socialize/bean/SNSPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2958
    new-instance v0, Lcom/umeng/socialize/controller/impl/ah;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/controller/impl/ah;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;)V

    .line 2985
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/ah;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 2992
    :cond_0
    :goto_0
    return-void

    .line 2987
    :cond_1
    if-eqz p3, :cond_0

    .line 2988
    invoke-interface {p3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onStart()V

    .line 2989
    const/16 v0, -0x65

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    goto :goto_0
.end method

.method public getUserInfo(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;)V
    .locals 1

    .prologue
    .line 665
    .line 667
    new-instance v0, Lcom/umeng/socialize/controller/impl/j;

    invoke-direct {v0, p0, p2, p0, p1}, Lcom/umeng/socialize/controller/impl/j;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V

    .line 766
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/j;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 768
    return-void
.end method

.method public hasShareContent()Z
    .locals 1

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2058
    const/4 v0, 0x1

    .line 2060
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShareImage()Z
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2050
    const/4 v0, 0x1

    .line 2052
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initEntity(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 1

    .prologue
    .line 156
    invoke-static {p1}, Lcom/umeng/socom/DeviceConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socom/util/b;->a(Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/umeng/socialize/controller/impl/o;

    invoke-direct {v0, p0, p2, p0, p1}, Lcom/umeng/socialize/controller/impl/o;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V

    .line 183
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/o;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 184
    return-void
.end method

.method public likeChange(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 1

    .prologue
    .line 194
    .line 195
    new-instance v0, Lcom/umeng/socialize/controller/impl/z;

    invoke-direct {v0, p0, p2, p0, p1}, Lcom/umeng/socialize/controller/impl/z;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V

    .line 219
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/z;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 220
    return-void
.end method

.method public login(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 1

    .prologue
    .line 458
    invoke-static {p1, p2}, Lcom/umeng/socialize/db/OauthHelper;->isAuthenticated(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    .line 483
    :goto_0
    return-void

    .line 461
    :cond_0
    new-instance v0, Lcom/umeng/socialize/controller/impl/e;

    invoke-direct {v0, p0, p1, p3}, Lcom/umeng/socialize/controller/impl/e;-><init>(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/socialize/controller/impl/c;->doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method

.method public login(Landroid/content/Context;Lcom/umeng/socialize/bean/SnsAccount;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 1

    .prologue
    .line 494
    new-instance v0, Lcom/umeng/socialize/controller/impl/f;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/umeng/socialize/controller/impl/f;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Landroid/content/Context;Lcom/umeng/socialize/bean/SnsAccount;)V

    .line 521
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/f;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 522
    return-void
.end method

.method public loginout(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 1

    .prologue
    .line 532
    .line 534
    new-instance v0, Lcom/umeng/socialize/controller/impl/g;

    invoke-direct {v0, p0, p2, p0, p1}, Lcom/umeng/socialize/controller/impl/g;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V

    .line 561
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/g;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 562
    return-void
.end method

.method public openComment(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 2173
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/umeng/socialize/view/CommentActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2174
    const-string v1, "dc"

    .line 2175
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 2174
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2176
    if-eqz p2, :cond_0

    .line 2177
    new-instance v1, Lcom/umeng/socialize/controller/impl/y;

    invoke-direct {v1, p0, p1, v0}, Lcom/umeng/socialize/controller/impl/y;-><init>(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0, p1, v1}, Lcom/umeng/socialize/controller/impl/c;->showLoginDialog(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V

    .line 2195
    :goto_0
    return-void

    .line 2193
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public openShare(Landroid/app/Activity;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 2078
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2138
    :goto_0
    return-void

    .line 2081
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, p1, v1, v5}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 2083
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->o:Lcom/umeng/socialize/view/ce;

    .line 2084
    new-instance v0, Lcom/umeng/socialize/view/abs/am;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/view/abs/am;-><init>(Landroid/content/Context;)V

    .line 2085
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 2086
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2085
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/am;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2088
    new-instance v1, Lcom/umeng/socialize/view/ce;

    .line 2089
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 2090
    sget-object v3, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    .line 2089
    invoke-static {v2, v3}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/umeng/socialize/view/ce;-><init>(Landroid/content/Context;Lcom/umeng/socialize/view/abs/am;Lcom/umeng/socialize/controller/UMSocialService;)V

    .line 2088
    iput-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->o:Lcom/umeng/socialize/view/ce;

    .line 2091
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->o:Lcom/umeng/socialize/view/ce;

    invoke-virtual {v1, v5}, Lcom/umeng/socialize/view/ce;->setFocusable(Z)V

    .line 2092
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->o:Lcom/umeng/socialize/view/ce;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/view/ce;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2094
    new-instance v1, Lcom/umeng/socialize/controller/impl/w;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/controller/impl/w;-><init>(Lcom/umeng/socialize/controller/impl/c;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/am;->a(Landroid/view/View$OnClickListener;)V

    .line 2102
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->getTencent()Lcom/tencent/tauth/Tencent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2103
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    .line 2104
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2105
    :cond_1
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/c;->b(Landroid/app/Activity;)V

    .line 2108
    :cond_2
    if-eqz p2, :cond_3

    .line 2109
    new-instance v0, Lcom/umeng/socialize/controller/impl/x;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/controller/impl/x;-><init>(Lcom/umeng/socialize/controller/impl/c;Landroid/app/Activity;)V

    .line 2133
    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/c;->showLoginDialog(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V

    goto :goto_0

    .line 2135
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->o:Lcom/umeng/socialize/view/ce;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 2136
    const/16 v2, 0x50

    .line 2135
    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/umeng/socialize/view/ce;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public varargs openUserCenter(Landroid/content/Context;[I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2204
    .line 2205
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 2206
    aget v0, p2, v0

    .line 2209
    :cond_0
    new-instance v1, Lcom/umeng/socialize/view/ck;

    .line 2210
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 2209
    invoke-direct {v1, p1, v2, v0}, Lcom/umeng/socialize/view/ck;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2211
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    and-int/lit8 v3, v0, 0xf

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(I)V

    .line 2212
    const/4 v2, 0x1

    and-int/lit8 v0, v0, 0xf

    if-ne v2, v0, :cond_1

    .line 2213
    new-instance v0, Lcom/umeng/socialize/controller/impl/aa;

    invoke-direct {v0, p0, v1, p1}, Lcom/umeng/socialize/controller/impl/aa;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/view/ck;Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/c;->showLoginDialog(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V

    .line 2232
    :goto_0
    return-void

    .line 2229
    :cond_1
    invoke-virtual {v1}, Lcom/umeng/socialize/view/ck;->show()V

    goto :goto_0
.end method

.method public varargs postComment(Landroid/content/Context;Lcom/umeng/socialize/bean/UMComment;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 651
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 652
    invoke-direct {p0, p1, v0, p4}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Ljava/util/Map;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)[Lcom/umeng/socialize/bean/SNSPair;

    move-result-object v0

    .line 654
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMComment;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;)V

    .line 655
    return-void
.end method

.method public postLike(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 1

    .prologue
    .line 233
    .line 234
    new-instance v0, Lcom/umeng/socialize/controller/impl/aj;

    invoke-direct {v0, p0, p2, p0, p1}, Lcom/umeng/socialize/controller/impl/aj;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V

    .line 259
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/aj;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 260
    return-void
.end method

.method public postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 3

    .prologue
    .line 1276
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    .line 1277
    const/4 v1, 0x2

    .line 1276
    invoke-virtual {v0, p1, p2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 1279
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-nez v0, :cond_0

    .line 1280
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/c;->j(Landroid/content/Context;)V

    .line 1283
    :cond_0
    invoke-static {p2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 1286
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/controller/impl/c;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 1288
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p2}, Lcom/umeng/socialize/bean/SocializeConfig;->isCustomPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    .line 1290
    if-nez v0, :cond_1

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p2, v1, :cond_1

    .line 1291
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v1, :cond_3

    .line 1292
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->d(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1352
    :cond_2
    :goto_0
    return-void

    .line 1297
    :cond_3
    if-eqz v0, :cond_4

    .line 1298
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    .line 1300
    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 1301
    const-string v2, "umeng_socialize_text_add_custom_platform"

    .line 1299
    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1298
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1307
    :cond_4
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1308
    invoke-static {p1}, Lcom/umeng/socialize/common/SocializeUtils;->getPlatformSecret(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    .line 1309
    invoke-static {p1}, Lcom/umeng/socialize/common/SocializeUtils;->getPlatformKey(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    .line 1310
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne p2, v1, :cond_6

    .line 1311
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1312
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1313
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1314
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1315
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1316
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1317
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1320
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/impl/c;->l:Z

    if-nez v0, :cond_2

    .line 1321
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    goto :goto_0

    .line 1324
    :cond_5
    new-instance v0, Lcom/umeng/socialize/controller/impl/n;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/n;-><init>(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1347
    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    goto/16 :goto_0

    .line 1350
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/c;->e(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto/16 :goto_0
.end method

.method public postShare(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 6

    .prologue
    .line 1559
    .line 1560
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1561
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v4

    .line 1562
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareMsg(Lcom/umeng/socialize/bean/UMShareMsg;)V

    .line 1568
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setFireCallback(Z)V

    .line 1569
    invoke-virtual {p3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/socialize/controller/impl/c;->postShareByCustomPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 1572
    return-void

    .line 1564
    :cond_0
    new-instance v4, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v4}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 1565
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 1566
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/umeng/socialize/bean/UMShareMsg;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    goto :goto_0
.end method

.method public postShareByCustomPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 9

    .prologue
    .line 1588
    invoke-static {p3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v8

    .line 1594
    new-instance v0, Lcom/umeng/socialize/controller/impl/q;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p3

    move-object v4, p2

    move-object v5, p0

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/umeng/socialize/controller/impl/q;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 1649
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/q;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 1650
    return-void
.end method

.method public postShareByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 8

    .prologue
    .line 1820
    .line 1822
    new-instance v0, Lcom/umeng/socialize/controller/impl/t;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/umeng/socialize/controller/impl/t;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V

    .line 1851
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/t;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 1852
    return-void
.end method

.method public varargs postShareMulti(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 8

    .prologue
    .line 1746
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1747
    invoke-direct {p0, p1, v7, p3}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Ljava/util/Map;[Lcom/umeng/socialize/bean/SHARE_MEDIA;)[Lcom/umeng/socialize/bean/SNSPair;

    move-result-object v5

    .line 1749
    new-instance v6, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v6}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 1750
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 1751
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/umeng/socialize/bean/UMShareMsg;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 1752
    if-eqz v5, :cond_1

    array-length v0, v5

    if-lez v0, :cond_1

    .line 1756
    new-instance v0, Lcom/umeng/socialize/controller/impl/s;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/umeng/socialize/controller/impl/s;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;Ljava/util/Map;)V

    .line 1788
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/s;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 1800
    :cond_0
    :goto_0
    return-void

    .line 1791
    :cond_1
    if-eqz p2, :cond_0

    .line 1792
    invoke-interface {p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onStart()V

    .line 1793
    const/16 v0, -0x69

    .line 1794
    new-instance v1, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v1, v0}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 1795
    invoke-virtual {v1, v7}, Lcom/umeng/socialize/bean/MultiStatus;->setPlatformCode(Ljava/util/Map;)V

    .line 1796
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {p2, v1, v0, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onComplete(Lcom/umeng/socialize/bean/MultiStatus;ILcom/umeng/socialize/bean/SocializeEntity;)V

    goto :goto_0
.end method

.method public postUnLike(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 1

    .prologue
    .line 337
    .line 338
    new-instance v0, Lcom/umeng/socialize/controller/impl/am;

    invoke-direct {v0, p0, p2, p0, p1}, Lcom/umeng/socialize/controller/impl/am;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V

    .line 362
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/am;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 363
    return-void
.end method

.method public registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 3003
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 2997
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/umeng/socialize/bean/SocializeConfig;->registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;I)Z

    move-result v0

    return v0
.end method

.method public setAppWebSite(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3257
    invoke-static {p1, p2}, Lcom/umeng/socialize/bean/SocializeEntity;->setAppWebSite(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 3258
    return-void
.end method

.method public setAppWebSite(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3262
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {p0, v0, p1}, Lcom/umeng/socialize/controller/impl/c;->setAppWebSite(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 3263
    return-void
.end method

.method public setConfig(Lcom/umeng/socialize/bean/SocializeConfig;)V
    .locals 1

    .prologue
    .line 2011
    if-nez p1, :cond_0

    .line 2015
    :goto_0
    return-void

    .line 2014
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/SocializeEntity;->setConfig(Lcom/umeng/socialize/bean/SocializeConfig;)V

    goto :goto_0
.end method

.method public setCustomId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2019
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iput-object p1, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mCustomID:Ljava/lang/String;

    .line 2020
    return-void
.end method

.method public setEntityName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/SocializeEntity;->setNickName(Ljava/lang/String;)V

    .line 2940
    return-void
.end method

.method public setGlobalConfig(Lcom/umeng/socialize/bean/SocializeConfig;)V
    .locals 0

    .prologue
    .line 2029
    if-nez p1, :cond_0

    .line 2033
    :goto_0
    return-void

    .line 2032
    :cond_0
    sput-object p1, Lcom/umeng/socialize/controller/impl/c;->i:Lcom/umeng/socialize/bean/SocializeConfig;

    goto :goto_0
.end method

.method public setShareContent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareContent(Ljava/lang/String;)V

    .line 1973
    return-void
.end method

.method public setShareImage(Lcom/umeng/socialize/media/UMImage;)V
    .locals 1

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/SocializeEntity;->setMedia(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 1983
    return-void
.end method

.method public setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1992
    if-nez p1, :cond_0

    .line 1993
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->setMedia(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 2000
    :goto_0
    return v0

    .line 1995
    :cond_0
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->isMultiMedia()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1996
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1, p1}, Lcom/umeng/socialize/bean/SocializeEntity;->setMedia(Lcom/umeng/socialize/media/UMediaObject;)V

    goto :goto_0

    .line 1999
    :cond_1
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->h:Ljava/lang/String;

    const-string v1, "unable set share media.type is no support."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShareType(Lcom/umeng/socialize/bean/ShareType;)V
    .locals 1

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareType(Lcom/umeng/socialize/bean/ShareType;)V

    .line 1963
    return-void
.end method

.method public shareEmail(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 949
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/c;->k(Landroid/content/Context;)V

    .line 950
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v3

    .line 951
    const-string v6, "Share"

    .line 953
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getMailSubject()Ljava/lang/String;

    move-result-object v2

    .line 954
    const-string v0, ""

    .line 957
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v3, v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    .line 960
    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v0

    sget-object v4, Lcom/umeng/socialize/bean/ShareType;->SHAKE:Lcom/umeng/socialize/bean/ShareType;

    if-ne v0, v4, :cond_1

    .line 961
    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    iget-object v5, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 962
    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    move-object v1, v2

    .line 975
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 976
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v4, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 977
    const-string v2, "message/rfc822"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 978
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 981
    const-string v1, "android.intent.extra.TEXT"

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 984
    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 985
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 987
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v2

    .line 991
    const/4 v0, 0x0

    .line 992
    const-string v1, "\u52a0\u8f7d\u56fe\u7247\u4e2d,\u8bf7\u7a0d\u5019..."

    const/4 v3, 0x1

    .line 991
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    .line 993
    new-instance v0, Lcom/umeng/socialize/controller/impl/l;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/controller/impl/l;-><init>(Lcom/umeng/socialize/controller/impl/c;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/l;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 1023
    :goto_1
    return-void

    .line 964
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    const-class v4, Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0, v4}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia(Ljava/lang/Class;)Lcom/umeng/socialize/media/BaseMediaObject;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 965
    if-eqz v1, :cond_2

    instance-of v4, v1, Lcom/umeng/socialize/media/MailShareContent;

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 966
    check-cast v0, Lcom/umeng/socialize/media/MailShareContent;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/MailShareContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    .line 967
    check-cast v0, Lcom/umeng/socialize/media/MailShareContent;

    .line 968
    invoke-virtual {v0}, Lcom/umeng/socialize/media/MailShareContent;->getShareContent()Ljava/lang/String;

    move-result-object v5

    .line 969
    check-cast v1, Lcom/umeng/socialize/media/MailShareContent;

    invoke-virtual {v1}, Lcom/umeng/socialize/media/MailShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    move-object v1, v2

    .line 970
    goto :goto_0

    .line 971
    :cond_2
    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v5

    move-object v1, v2

    goto :goto_0

    .line 1017
    :cond_3
    const-string v1, ""

    .line 1018
    if-eqz v0, :cond_4

    .line 1019
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v0

    .line 1021
    :goto_2
    invoke-direct {p0, p1, v4, v0, v5}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public shareSms(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 840
    return-void
.end method

.method public shareTo(Landroid/app/Activity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;[B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3026
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3027
    invoke-virtual {p0, p3}, Lcom/umeng/socialize/controller/impl/c;->setShareContent(Ljava/lang/String;)V

    .line 3029
    :cond_0
    if-eqz p4, :cond_1

    .line 3030
    new-instance v0, Lcom/umeng/socialize/media/UMImage;

    invoke-direct {v0, p1, p4}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;[B)V

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/controller/impl/c;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 3035
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/umeng/socialize/controller/impl/c;->postShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 3036
    return-void

    .line 3032
    :cond_1
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/controller/impl/c;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    goto :goto_0
.end method

.method public shareTo(Landroid/app/Activity;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 3049
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3050
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/controller/impl/c;->setShareContent(Ljava/lang/String;)V

    .line 3052
    :cond_0
    if-eqz p3, :cond_1

    .line 3053
    new-instance v0, Lcom/umeng/socialize/media/UMImage;

    invoke-direct {v0, p1, p3}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;[B)V

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/controller/impl/c;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    .line 3057
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/c;->openShare(Landroid/app/Activity;Z)V

    .line 3058
    return-void

    .line 3055
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/controller/impl/c;->setShareMedia(Lcom/umeng/socialize/media/UMediaObject;)Z

    goto :goto_0
.end method

.method public showLoginDialog(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V
    .locals 2

    .prologue
    .line 2241
    new-instance v0, Lcom/umeng/socialize/view/ak;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v1, v1, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p2}, Lcom/umeng/socialize/view/ak;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V

    .line 2242
    invoke-virtual {v0}, Lcom/umeng/socialize/view/ak;->a()V

    .line 2243
    return-void
.end method

.method public showPostComment(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2251
    new-instance v0, Lcom/umeng/socialize/view/q;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v0, p1, v1}, Lcom/umeng/socialize/view/q;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;)V

    invoke-virtual {v0}, Lcom/umeng/socialize/view/q;->show()V

    .line 2252
    return-void
.end method

.method public unregisterListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z
    .locals 1

    .prologue
    .line 3008
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/SocializeConfig;->unregisterListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    move-result v0

    return v0
.end method

.method public uploadToken(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 2

    .prologue
    .line 276
    new-instance v0, Lcom/umeng/socialize/controller/impl/ak;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/umeng/socialize/controller/impl/ak;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/bean/UMToken;Landroid/content/Context;)V

    .line 305
    new-instance v1, Lcom/umeng/socialize/controller/impl/al;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/umeng/socialize/controller/impl/al;-><init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)V

    .line 326
    invoke-virtual {v1}, Lcom/umeng/socialize/controller/impl/al;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 327
    return-void
.end method
