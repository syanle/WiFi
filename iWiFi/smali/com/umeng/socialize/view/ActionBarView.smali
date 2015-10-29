.class public Lcom/umeng/socialize/view/ActionBarView;
.super Lcom/umeng/socialize/view/abs/g;
.source "ActionBarView.java"


# static fields
.field public static final ACTION_BAR_BUTTON_WIDTH:I = 0x50

.field public static final ACTION_BAR_HEIGHT:I = 0x30


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/view/abs/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/umeng/socialize/view/ActionBarView;->h()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/view/abs/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/umeng/socialize/view/ActionBarView;->h()V

    .line 29
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/umeng/socialize/view/ActionBarView;->b:Lcom/umeng/socialize/controller/UMSocialService;

    if-nez v0, :cond_0

    .line 45
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ActionBarView;->setVisibility(I)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/umeng/socialize/view/abs/g;->onWindowVisibilityChanged(I)V

    .line 82
    return-void
.end method

.method public declared-synchronized resetEntity(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/ActionBarView;->setVisibility(I)V

    .line 89
    sget-object v0, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    .line 88
    invoke-static {p1, v0}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMSocialService(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    .line 90
    invoke-super {p0, v0}, Lcom/umeng/socialize/view/abs/g;->resetUMService(Lcom/umeng/socialize/controller/UMSocialService;)V

    .line 93
    invoke-virtual {p0}, Lcom/umeng/socialize/view/ActionBarView;->onViewLoad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    const-string v0, "com.umeng.view.SocialView"

    const-string v1, "can`t reset entity.the \'descriptor\' is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
