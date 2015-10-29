.class public Lcom/umeng/socialize/bean/SocializeConfig;
.super Lcom/umeng/socialize/bean/CallbackConfig;
.source "SocializeConfig.java"


# static fields
.field private static h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/socialize/controller/UMSsoHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private static j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private static k:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private static l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Lcom/umeng/socialize/bean/SocializeConfig;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/CustomPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/umeng/socialize/bean/CustomPlatform;

.field private v:Lcom/umeng/socialize/bean/CustomPlatform;

.field private w:Z

.field private x:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    .line 57
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->i:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 59
    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->k:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->l:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-direct {v0}, Lcom/umeng/socialize/bean/SocializeConfig;-><init>()V

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->m:Lcom/umeng/socialize/bean/SocializeConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 95
    invoke-direct {p0}, Lcom/umeng/socialize/bean/CallbackConfig;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->b:Ljava/util/List;

    .line 46
    iput-boolean v2, p0, Lcom/umeng/socialize/bean/SocializeConfig;->c:Z

    .line 47
    iput-boolean v2, p0, Lcom/umeng/socialize/bean/SocializeConfig;->d:Z

    .line 49
    iput-boolean v2, p0, Lcom/umeng/socialize/bean/SocializeConfig;->e:Z

    .line 50
    iput-boolean v2, p0, Lcom/umeng/socialize/bean/SocializeConfig;->f:Z

    .line 51
    iput-boolean v2, p0, Lcom/umeng/socialize/bean/SocializeConfig;->g:Z

    .line 71
    iput-boolean v3, p0, Lcom/umeng/socialize/bean/SocializeConfig;->o:Z

    .line 74
    iput-boolean v2, p0, Lcom/umeng/socialize/bean/SocializeConfig;->p:Z

    .line 76
    iput-boolean v2, p0, Lcom/umeng/socialize/bean/SocializeConfig;->q:Z

    .line 78
    iput-boolean v3, p0, Lcom/umeng/socialize/bean/SocializeConfig;->r:Z

    .line 80
    const-string v0, "Sharing Socialize"

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    .line 87
    iput-boolean v2, p0, Lcom/umeng/socialize/bean/SocializeConfig;->w:Z

    .line 97
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->b:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->b:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->b:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->b:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->b:Ljava/util/List;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v0, Lcom/umeng/socialize/bean/CustomPlatform;

    const-string v1, "sms"

    invoke-direct {v0, v1, v4}, Lcom/umeng/socialize/bean/CustomPlatform;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->u:Lcom/umeng/socialize/bean/CustomPlatform;

    .line 104
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->u:Lcom/umeng/socialize/bean/CustomPlatform;

    const-string v1, "com.umeng.socialize.sms"

    iput-object v1, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mTag:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->u:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/bean/SocializeConfig;->addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V

    .line 107
    new-instance v0, Lcom/umeng/socialize/bean/CustomPlatform;

    const-string v1, "email"

    invoke-direct {v0, v1, v4}, Lcom/umeng/socialize/bean/CustomPlatform;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->v:Lcom/umeng/socialize/bean/CustomPlatform;

    .line 108
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->v:Lcom/umeng/socialize/bean/CustomPlatform;

    const-string v1, "com.umeng.socialize.mail"

    iput-object v1, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mTag:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->v:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/bean/SocializeConfig;->addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V

    .line 111
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 112
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v1, v0, v3

    .line 113
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 114
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    .line 111
    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->k:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 116
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 978
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 979
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 980
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :goto_0
    return-object v0

    .line 982
    :catch_0
    move-exception v0

    .line 983
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 512
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 518
    return-void

    .line 513
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 514
    iget-object v2, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 515
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 512
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 842
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->i:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public static getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->m:Lcom/umeng/socialize/bean/SocializeConfig;

    return-object v0
.end method

.method public static isSupportQQZoneSSO(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 934
    const-string v1, "com.tencent.mobileqq"

    .line 935
    invoke-static {v1, p0}, Lcom/umeng/socom/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 942
    :cond_0
    :goto_0
    return v0

    .line 938
    :cond_1
    invoke-static {v1, p0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 939
    if-eqz v1, :cond_0

    .line 942
    const-string v2, "4.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportSinaSSO(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 905
    const-string v1, "com.sina.weibo"

    .line 906
    invoke-static {v1, p0}, Lcom/umeng/socom/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 918
    :cond_0
    :goto_0
    return v0

    .line 910
    :cond_1
    :try_start_0
    const-class v2, Lcom/sina/sso/RemoteSSO;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    invoke-static {v1, p0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 915
    if-eqz v1, :cond_0

    .line 918
    const-string v2, "3.0.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 911
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isSupportTencentWBSSO(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 957
    const-string v1, "com.tencent.WBlog"

    .line 958
    invoke-static {v1, p0}, Lcom/umeng/socom/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 965
    :cond_0
    :goto_0
    return v0

    .line 961
    :cond_1
    invoke-static {v1, p0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 962
    if-eqz v1, :cond_0

    .line 965
    const-string v2, "3.8.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 1

    .prologue
    .line 830
    sput-object p0, Lcom/umeng/socialize/bean/SocializeConfig;->i:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 831
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->i:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-nez v0, :cond_0

    .line 832
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sput-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->i:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 834
    :cond_0
    return-void
.end method


# virtual methods
.method public addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    return-void
.end method

.method public addFollow(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 177
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->n:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->n:Ljava/util/Map;

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 187
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 190
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->n:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addFollow(Lcom/umeng/socialize/bean/SHARE_MEDIA;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 208
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 215
    :cond_0
    return-void

    .line 212
    :cond_1
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 213
    invoke-virtual {p0, p1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->addFollow(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public changeOrder()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 577
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->k:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->k:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 595
    :cond_0
    return-void

    :cond_1
    move v1, v0

    move v2, v0

    .line 581
    :goto_0
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->k:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 582
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 583
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 581
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 584
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 585
    iget-object v4, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    sget-object v5, Lcom/umeng/socialize/bean/SocializeConfig;->k:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 586
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5e73\u53f0 + "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", keyWord "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 587
    sget-object v6, Lcom/umeng/socialize/bean/SocializeConfig;->k:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 586
    invoke-static {v4, v5}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 589
    sget-object v3, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    invoke-interface {v3, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 590
    add-int/lit8 v2, v2, 0x1

    .line 591
    goto :goto_1
.end method

.method public closeQQZoneSso()V
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->f:Z

    .line 795
    return-void
.end method

.method public closeSinaSSo()V
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->e:Z

    .line 809
    return-void
.end method

.method public closeTencentWBSso()V
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->g:Z

    .line 788
    return-void
.end method

.method public closeToast()V
    .locals 1

    .prologue
    .line 870
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/socialize/bean/SocializeConfig;->a:Z

    .line 871
    return-void
.end method

.method public containsDeletePlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;",
            ">;",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "I",
            "Lcom/umeng/socialize/bean/SocializeEntity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1015
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 1016
    if-eqz v0, :cond_0

    .line 1017
    array-length v1, v0

    if-nez v1, :cond_1

    .line 1026
    :cond_0
    return-void

    .line 1021
    :cond_1
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1022
    if-eqz v3, :cond_2

    .line 1023
    invoke-interface {v3, p2, p3, p4}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 1021
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public fireAllListenersOnStart(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 992
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 993
    if-eqz v0, :cond_0

    .line 994
    array-length v1, v0

    if-nez v1, :cond_1

    .line 1003
    :cond_0
    return-void

    .line 998
    :cond_1
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 999
    if-eqz v3, :cond_2

    .line 1000
    invoke-interface {v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 998
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAllPlatforms(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/umeng/socialize/controller/UMSocialService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 529
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 531
    invoke-interface {p2}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 532
    invoke-static {p1, v0}, Lcom/umeng/socialize/common/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeConfig;)Ljava/util/List;

    move-result-object v1

    .line 534
    sget-object v3, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 536
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getCustomPlatforms()Ljava/util/List;

    move-result-object v0

    .line 538
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 540
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 544
    :goto_1
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 550
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 551
    :goto_2
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    .line 554
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 555
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 560
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SocializeConfig;->changeOrder()V

    .line 561
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    return-object v0

    .line 540
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 541
    invoke-interface {p2}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v3

    iget-object v3, v3, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/umeng/socialize/bean/SnsPlatform;->setEntityDescriptor(Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_1
    sget-object v3, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 546
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    invoke-direct {p0, v3, v0}, Lcom/umeng/socialize/bean/SocializeConfig;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 544
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 552
    :cond_2
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    iget-object v3, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 555
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 556
    sget-object v3, Lcom/umeng/socialize/bean/SocializeConfig;->j:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public getCustomPlatforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/CustomPlatform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 635
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    return-object v0
.end method

.method public getFollowFids(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->n:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 235
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMailSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthDialogFollowListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->x:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    return-object v0
.end method

.method public getPlatforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->b:Ljava/util/List;

    return-object v0
.end method

.method public getQQSsoHandler()Lcom/umeng/socialize/controller/UMSsoHandler;
    .locals 2

    .prologue
    .line 709
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    const/16 v1, 0x161a

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/controller/UMSsoHandler;

    return-object v0
.end method

.method public getQZoneAddSharePermission()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->r:Z

    return v0
.end method

.method public getQZoneSsoHandler()Lcom/umeng/socialize/controller/UMSsoHandler;
    .locals 2

    .prologue
    .line 701
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    const/16 v1, 0x1619

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/controller/UMSsoHandler;

    return-object v0
.end method

.method public getSinaSsoHandler()Lcom/umeng/socialize/controller/UMSsoHandler;
    .locals 2

    .prologue
    .line 682
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    const/16 v1, 0x1624

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/controller/UMSsoHandler;

    return-object v0
.end method

.method public getSsoHandler(I)Lcom/umeng/socialize/controller/UMSsoHandler;
    .locals 3

    .prologue
    .line 747
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "## origin requestCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->i:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_0

    .line 755
    const/16 p1, 0x161a

    .line 759
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->i:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v0, v1, :cond_1

    .line 760
    const/16 p1, 0x1619

    .line 762
    :cond_1
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "## get sso Handler, requestCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/controller/UMSsoHandler;

    return-object v0
.end method

.method public getSsoHandlersMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/umeng/socialize/controller/UMSsoHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getTencentWBSsoHandler()Lcom/umeng/socialize/controller/UMSsoHandler;
    .locals 2

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->g:Z

    if-eqz v0, :cond_0

    .line 662
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    const/16 v1, 0x1625

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/controller/UMSsoHandler;

    .line 664
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 645
    if-nez p1, :cond_0

    move v0, v1

    .line 654
    :goto_0
    return v0

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 654
    goto :goto_0

    .line 649
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/CustomPlatform;

    .line 650
    iget-object v0, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDefaultShareComment()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->d:Z

    return v0
.end method

.method public isDefaultShareLocation()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->c:Z

    return v0
.end method

.method public isOpenQQZoneSSO()Z
    .locals 1

    .prologue
    .line 856
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->f:Z

    return v0
.end method

.method public isOpenSinaSSO()Z
    .locals 1

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->e:Z

    return v0
.end method

.method public isOpenTencentWBSSO()Z
    .locals 1

    .prologue
    .line 863
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->g:Z

    return v0
.end method

.method public isSendBlock()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->o:Z

    return v0
.end method

.method public isShareMail()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->q:Z

    return v0
.end method

.method public isShareSms()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->p:Z

    return v0
.end method

.method public isShowToast()Z
    .locals 1

    .prologue
    .line 881
    sget-boolean v0, Lcom/umeng/socialize/bean/SocializeConfig;->a:Z

    return v0
.end method

.method public isSyncUserInfo()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->w:Z

    return v0
.end method

.method public openQQZoneSso()V
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->f:Z

    .line 802
    return-void
.end method

.method public openSinaSso()V
    .locals 1

    .prologue
    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->e:Z

    .line 816
    return-void
.end method

.method public openTencentWBSso()V
    .locals 1

    .prologue
    .line 780
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->g:Z

    .line 781
    return-void
.end method

.method public openToast()V
    .locals 1

    .prologue
    .line 877
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/socialize/bean/SocializeConfig;->a:Z

    .line 878
    return-void
.end method

.method public varargs removePlatform([Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4

    .prologue
    .line 618
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 627
    :cond_0
    return-void

    .line 622
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 623
    sget-object v3, Lcom/umeng/socialize/bean/SocializeConfig;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 624
    sget-object v3, Lcom/umeng/socialize/bean/SocializeConfig;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public varargs setCustomtPlatform([Lcom/umeng/socialize/bean/APP_PLATFORM;)V
    .locals 5

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-lt v1, v0, :cond_1

    .line 143
    :cond_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/CustomPlatform;

    .line 135
    iget-object v3, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    iget-object v2, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v2, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public setDefaultShareComment(Z)V
    .locals 0

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->d:Z

    .line 313
    return-void
.end method

.method public setDefaultShareLocation(Z)V
    .locals 0

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->c:Z

    .line 286
    return-void
.end method

.method public setMailSubject(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->s:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setOauthDialogFollowListener(Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->x:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    .line 229
    return-void
.end method

.method public varargs setPlatformOrder([Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 570
    sput-object p1, Lcom/umeng/socialize/bean/SocializeConfig;->k:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 571
    return-void
.end method

.method public varargs setPlatforms([Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 609
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/bean/SocializeConfig;->setPlatformOrder([Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 610
    return-void
.end method

.method public setQZoneAddSharePermission(Z)V
    .locals 0

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->r:Z

    .line 333
    return-void
.end method

.method public setQZoneSsoHandler(Lcom/umeng/socialize/controller/UMSsoHandler;)V
    .locals 2

    .prologue
    const/16 v1, 0x1619

    .line 718
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 721
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 722
    return-void
.end method

.method public setSendBlock(Z)V
    .locals 0

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->o:Z

    .line 304
    return-void
.end method

.method public setShareMail(Z)V
    .locals 2

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->q:Z

    .line 272
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->v:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->v:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/bean/SocializeConfig;->addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->v:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->v:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setShareSms(Z)V
    .locals 2

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->p:Z

    .line 254
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->u:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->u:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/bean/SocializeConfig;->addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->u:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->u:Lcom/umeng/socialize/bean/CustomPlatform;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSinaSsoHandler(Lcom/umeng/socialize/controller/UMSsoHandler;)V
    .locals 2

    .prologue
    const/16 v1, 0x1624

    .line 691
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 692
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 694
    :cond_0
    return-void
.end method

.method public setSsoHandler(Lcom/umeng/socialize/controller/UMSsoHandler;)V
    .locals 4

    .prologue
    .line 731
    invoke-virtual {p1}, Lcom/umeng/socialize/controller/UMSsoHandler;->getRequstCode()I

    move-result v0

    .line 733
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 734
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 736
    :cond_0
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#### set sso handler, code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    sget-object v1, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 738
    return-void
.end method

.method public setTencentWBSsoHandler(Lcom/umeng/socialize/controller/UMSsoHandler;)V
    .locals 2

    .prologue
    const/16 v1, 0x1625

    .line 671
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 672
    sget-object v0, Lcom/umeng/socialize/bean/SocializeConfig;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 675
    :cond_0
    return-void
.end method

.method public supportAppPlatform(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 354
    if-eqz p4, :cond_1

    .line 356
    invoke-static {p1, p2, p3}, Lcom/umeng/socialize/controller/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lcom/umeng/socialize/bean/CustomPlatform;

    move-result-object v0

    .line 357
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/bean/SocializeConfig;->addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/umeng/socialize/controller/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lcom/umeng/socialize/bean/CustomPlatform;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/umeng/socialize/bean/SocializeConfig;->t:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public supportQQPlatform(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/umeng/socialize/bean/SocializeConfig;->supportQQPlatform(Landroid/app/Activity;ZLjava/lang/String;)V

    .line 437
    return-void
.end method

.method public supportQQPlatform(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->supportQQPlatform(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public supportQQPlatform(Landroid/app/Activity;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 460
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/umeng/socialize/bean/SocializeConfig;->supportQQPlatform(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public supportQQPlatform(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 474
    invoke-static {p1, p3}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMQQHandler(Landroid/app/Activity;Ljava/lang/String;)Lcom/umeng/socialize/controller/UMQQSsoHandler;

    move-result-object v1

    .line 477
    invoke-virtual {v1, p4}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->setTargetUrl(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->getQqShareMsg()Lcom/umeng/socialize/bean/QQShareMsg;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/umeng/socialize/bean/QQShareMsg;->d(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v1, p2}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->canOpenShareActivity(Z)V

    .line 482
    invoke-virtual {v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->build()Lcom/umeng/socialize/bean/CustomPlatform;

    move-result-object v2

    .line 483
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SocializeConfig;->getCustomPlatforms()Ljava/util/List;

    move-result-object v3

    .line 484
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    :goto_0
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V

    .line 495
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->setSsoHandler(Lcom/umeng/socialize/controller/UMSsoHandler;)V

    .line 496
    return-void

    .line 484
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/CustomPlatform;

    .line 485
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/CustomPlatform;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/CustomPlatform;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 486
    const-string v4, "com.umeng.socialize"

    .line 487
    const-string v5, "find the same custom-platform has added,and then remove old one."

    .line 486
    invoke-static {v4, v5}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public supportWXCirclePlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/controller/UMWXHandler;
    .locals 2

    .prologue
    .line 399
    invoke-static {p1, p2}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMWXHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/socialize/controller/UMWXHandler;

    move-result-object v0

    .line 401
    invoke-virtual {v0, p3}, Lcom/umeng/socialize/controller/UMWXHandler;->setContentURL(Ljava/lang/String;)V

    .line 402
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/UMWXHandler;->setToCircle(Z)Lcom/umeng/socialize/controller/UMWXHandler;

    .line 403
    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/bean/SocializeConfig;->supportWXPlatform(Landroid/content/Context;Lcom/umeng/socialize/controller/UMWXHandler;)V

    .line 404
    return-object v0
.end method

.method public supportWXPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/controller/UMWXHandler;
    .locals 1

    .prologue
    .line 380
    invoke-static {p1, p2}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMWXHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/socialize/controller/UMWXHandler;

    move-result-object v0

    .line 382
    invoke-virtual {v0, p3}, Lcom/umeng/socialize/controller/UMWXHandler;->setContentURL(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0, p1, v0}, Lcom/umeng/socialize/bean/SocializeConfig;->supportWXPlatform(Landroid/content/Context;Lcom/umeng/socialize/controller/UMWXHandler;)V

    .line 385
    return-object v0
.end method

.method public supportWXPlatform(Landroid/content/Context;Lcom/umeng/socialize/controller/UMWXHandler;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p2}, Lcom/umeng/socialize/controller/UMWXHandler;->build()Lcom/umeng/socialize/bean/CustomPlatform;

    move-result-object v1

    .line 417
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SocializeConfig;->getCustomPlatforms()Ljava/util/List;

    move-result-object v2

    .line 418
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    :goto_0
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V

    .line 427
    return-void

    .line 418
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/CustomPlatform;

    .line 419
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/CustomPlatform;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/CustomPlatform;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    const-string v3, "com.umeng.socialize"

    .line 421
    const-string v4, "find the same custom-platform has added,and then remove old one."

    .line 420
    invoke-static {v3, v4}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
