.class Lcom/umeng/socialize/controller/b;
.super Ljava/lang/Object;
.source "AppPlatformFactory.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/umeng/socialize/controller/b;->b:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 99
    .line 101
    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    .line 106
    :goto_0
    sget-object v2, Lcom/umeng/socialize/controller/impl/c;->g:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 108
    iget-object v2, p0, Lcom/umeng/socialize/controller/b;->a:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/umeng/socialize/controller/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Landroid/content/Intent;

    move-result-object v2

    .line 109
    iget-object v3, p0, Lcom/umeng/socialize/controller/b;->a:Landroid/content/Context;

    sget-object v4, Lcom/umeng/socialize/bean/APP_PLATFORM;->GOOGLE:Lcom/umeng/socialize/bean/APP_PLATFORM;

    invoke-static {v3, v4, v2}, Lcom/umeng/socialize/controller/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/APP_PLATFORM;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_0

    .line 111
    iget-object v3, p0, Lcom/umeng/socialize/controller/b;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    iget-object v2, p0, Lcom/umeng/socialize/controller/b;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/socialize/controller/b;->b:Ljava/lang/String;

    const-string v4, "googleplus"

    invoke-static {v2, v3, v1, v0, v4}, Lcom/umeng/socialize/common/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 116
    :goto_1
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/b;->a:Landroid/content/Context;

    const-string v1, "sorry, you haven\'t installed Google+ yet."

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
