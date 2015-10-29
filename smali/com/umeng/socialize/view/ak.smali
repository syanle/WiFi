.class public Lcom/umeng/socialize/view/ak;
.super Ljava/lang/Object;
.source "LoginAgent.java"


# static fields
.field private static final g:I = 0x1f40

.field private static final h:I = 0x1


# instance fields
.field private a:Lcom/umeng/socialize/view/abs/SocialPopupDialog;

.field private b:Landroid/content/Context;

.field private c:Lcom/umeng/socialize/controller/UMSocialService;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/umeng/socialize/view/al;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/al;-><init>(Lcom/umeng/socialize/view/ak;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/ak;->i:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/umeng/socialize/view/ak;->b:Landroid/content/Context;

    .line 63
    iput-object p3, p0, Lcom/umeng/socialize/view/ak;->f:Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    .line 65
    sget-object v0, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    invoke-static {p2, v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ak;->c:Lcom/umeng/socialize/controller/UMSocialService;

    .line 69
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->c:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/socialize/common/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeConfig;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ak;->d:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/ak;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ak;->e:Ljava/util/Map;

    .line 71
    new-instance v1, Lcom/umeng/socialize/view/am;

    invoke-direct {v1, p0, p1, p1}, Lcom/umeng/socialize/view/am;-><init>(Lcom/umeng/socialize/view/ak;Landroid/content/Context;Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 100
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->a(I)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_text_choose_account"

    invoke-static {p1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->a(Ljava/lang/String;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;

    .line 108
    invoke-virtual {v1, v5}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->b(I)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;

    .line 109
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->b(Ljava/lang/String;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;

    .line 110
    new-instance v0, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;

    invoke-direct {v0, p1}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;-><init>(Landroid/content/Context;)V

    .line 112
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 113
    const-string v3, "umeng_socialize_default_avatar"

    .line 111
    invoke-static {p1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a(I)Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v4, "umeng_socialize_text_visitor"

    invoke-static {p1, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a(Ljava/lang/String;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;

    .line 115
    new-instance v2, Lcom/umeng/socialize/view/ao;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/ao;-><init>(Lcom/umeng/socialize/view/ak;)V

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a(Landroid/view/View$OnClickListener;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;

    .line 121
    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;

    .line 123
    invoke-static {p1}, Lcom/umeng/socialize/common/SocializeUtils;->isFloatWindowStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-static {p1}, Lcom/umeng/socialize/common/SocializeUtils;->getFloatWindowSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 125
    aget v2, v0, v5

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->a(II)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;

    .line 128
    :cond_2
    invoke-virtual {v1}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->a()Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/ak;->a:Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    .line 129
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->a:Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    new-instance v1, Lcom/umeng/socialize/view/ap;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/view/ap;-><init>(Lcom/umeng/socialize/view/ak;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/abs/SocialPopupDialog;->a(Lcom/umeng/socialize/view/abs/SocialPopupDialog$SwitchListener;)V

    .line 142
    return-void

    .line 102
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 103
    iget-object v3, p0, Lcom/umeng/socialize/view/ak;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v6}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$a;

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/view/abs/SocialPopupDialog;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->a:Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ak;->c()Ljava/util/Map;

    move-result-object v1

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    return-object v1

    .line 161
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 162
    new-instance v3, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;

    iget-object v4, p0, Lcom/umeng/socialize/view/ak;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;-><init>(Landroid/content/Context;)V

    .line 164
    iget-object v4, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    const-string v5, "qzone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    iget-object v4, p0, Lcom/umeng/socialize/view/ak;->b:Landroid/content/Context;

    .line 166
    sget-object v5, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 167
    const-string v6, "umeng_socialize_qzone_on"

    .line 165
    invoke-static {v4, v5, v6}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a(I)Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;

    .line 168
    iget-object v4, p0, Lcom/umeng/socialize/view/ak;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/umeng/socialize/view/ak;->b:Landroid/content/Context;

    sget-object v6, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v7, "umeng_socialize_login_qq"

    invoke-static {v5, v6, v7}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a(Ljava/lang/String;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;

    .line 173
    :goto_1
    new-instance v4, Lcom/umeng/socialize/view/aq;

    invoke-direct {v4, p0, v0}, Lcom/umeng/socialize/view/aq;-><init>(Lcom/umeng/socialize/view/ak;Lcom/umeng/socialize/bean/SnsPlatform;)V

    invoke-virtual {v3, v4}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a(Landroid/view/View$OnClickListener;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;

    .line 210
    invoke-virtual {v3}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a()Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 170
    :cond_1
    iget v4, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    invoke-virtual {v3, v4}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a(I)Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;

    .line 171
    iget-object v4, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;->a(Ljava/lang/String;)Lcom/umeng/socialize/view/abs/SocialPopupDialog$b;

    goto :goto_1
.end method

.method private a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 3

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->c:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/ak;->b:Landroid/content/Context;

    new-instance v2, Lcom/umeng/socialize/view/as;

    invoke-direct {v2, p0, p1}, Lcom/umeng/socialize/view/as;-><init>(Lcom/umeng/socialize/view/ak;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->login(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    .line 265
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->c:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/umeng/socialize/view/ak;->b:Landroid/content/Context;

    new-instance v2, Lcom/umeng/socialize/view/at;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/at;-><init>(Lcom/umeng/socialize/view/ak;)V

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->loginout(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/ak;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/ak;->a(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->f:Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/ak;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/ak;)Lcom/umeng/socialize/controller/UMSocialService;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->c:Lcom/umeng/socialize/controller/UMSocialService;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/db/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/db/c;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->f:Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->f:Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;

    iget-object v1, p0, Lcom/umeng/socialize/view/ak;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/db/c;->b(Landroid/content/Context;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;->loginSuccessed(Lcom/umeng/socialize/bean/SHARE_MEDIA;Z)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->a:Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/common/SocializeUtils;->safeShowDialog(Landroid/app/Dialog;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/umeng/socialize/view/ak;->a:Lcom/umeng/socialize/view/abs/SocialPopupDialog;

    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->safeDismissDialog(Landroid/app/Dialog;)V

    .line 157
    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Lcom/umeng/socialize/view/au;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/au;-><init>(Lcom/umeng/socialize/view/ak;)V

    .line 275
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v1
.end method
