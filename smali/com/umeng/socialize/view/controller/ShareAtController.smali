.class public Lcom/umeng/socialize/view/controller/ShareAtController;
.super Ljava/lang/Object;
.source "ShareAtController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;,
        Lcom/umeng/socialize/view/controller/ShareAtController$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x5

.field private static final b:Ljava/lang/String;

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private j:Lcom/umeng/socialize/controller/UMSocialService;

.field private k:Lcom/umeng/socialize/db/b;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/os/Handler;

.field private o:Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/umeng/socialize/view/controller/ShareAtController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/view/controller/ShareAtController;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p3, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->g:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->h:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->i:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 78
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->h:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/umeng/socialize/db/OauthHelper;->getUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->f:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/umeng/socialize/view/controller/a;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/controller/a;-><init>(Lcom/umeng/socialize/view/controller/ShareAtController;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->n:Landroid/os/Handler;

    .line 113
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->g:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->j:Lcom/umeng/socialize/controller/UMSocialService;

    .line 114
    new-instance v0, Lcom/umeng/socialize/db/b;

    iget-object v1, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/socialize/db/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->k:Lcom/umeng/socialize/db/b;

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/controller/ShareAtController;)Ljava/util/List;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/controller/ShareAtController;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->k:Lcom/umeng/socialize/db/b;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/db/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    :try_start_0
    const-string v1, "java.util.Arrays.useLegacyMergeSort"

    const-string v2, "true"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    new-instance v1, Lcom/umeng/socialize/view/controller/ShareAtController$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/umeng/socialize/view/controller/ShareAtController$a;-><init>(Lcom/umeng/socialize/view/controller/ShareAtController;Lcom/umeng/socialize/view/controller/ShareAtController$a;)V

    .line 148
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    sget-object v1, Lcom/umeng/socialize/view/controller/ShareAtController;->b:Ljava/lang/String;

    const-string v2, "unsort friends."

    invoke-static {v1, v2, v0}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/view/controller/ShareAtController;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->l:Ljava/util/List;

    return-void
.end method

.method private a(C)Z
    .locals 1

    .prologue
    .line 249
    const/16 v0, 0x40

    if-ge v0, p1, :cond_0

    const/16 v0, 0x5b

    if-ge p1, v0, :cond_0

    .line 250
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/socialize/view/controller/ShareAtController;)Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->o:Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->k:Lcom/umeng/socialize/db/b;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/umeng/socialize/db/b;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/umeng/socialize/view/controller/ShareAtController;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/socialize/view/controller/ShareAtController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/socialize/view/controller/ShareAtController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/socialize/view/controller/ShareAtController;)Lcom/umeng/socialize/db/b;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->k:Lcom/umeng/socialize/db/b;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/socialize/view/controller/ShareAtController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->h:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->m:Ljava/util/List;

    .line 123
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->o:Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->o:Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    iget-object v1, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;->b(Ljava/util/List;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->l:Ljava/util/List;

    .line 128
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 129
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->l:Ljava/util/List;

    .line 130
    invoke-virtual {p0}, Lcom/umeng/socialize/view/controller/ShareAtController;->b()V

    .line 134
    :cond_2
    :goto_0
    return-void

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->o:Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->o:Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    iget-object v1, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->l:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;->c(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Lcom/umeng/socialize/bean/UMFriend;)V
    .locals 1

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->k:Lcom/umeng/socialize/db/b;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/db/b;->a(Lcom/umeng/socialize/bean/UMFriend;)V

    .line 140
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->o:Lcom/umeng/socialize/view/controller/ShareAtController$ASyncLifeListener;

    .line 119
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 164
    new-instance v0, Lcom/umeng/socialize/view/controller/b;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/controller/b;-><init>(Lcom/umeng/socialize/view/controller/ShareAtController;)V

    .line 210
    iget-object v1, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->j:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v2, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->h:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/socialize/view/controller/ShareAtController;->i:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v2, v0, v3}, Lcom/umeng/socialize/controller/UMSocialService;->getFriends(Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 211
    return-void
.end method
