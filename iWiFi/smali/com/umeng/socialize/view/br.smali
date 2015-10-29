.class Lcom/umeng/socialize/view/br;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ShareActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/br;->a:Lcom/umeng/socialize/view/ShareActivity;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/umeng/socialize/view/br;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->h(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 344
    iget-object v0, p0, Lcom/umeng/socialize/view/br;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/umeng/socialize/view/br;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 347
    const-class v2, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 346
    invoke-virtual {v0, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 351
    array-length v2, v0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 371
    iget-object v0, p0, Lcom/umeng/socialize/view/br;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->cleanListeners()Z

    .line 372
    iget-object v0, p0, Lcom/umeng/socialize/view/br;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ShareActivity;->b()V

    .line 375
    :cond_0
    return-void

    .line 351
    :cond_1
    aget-object v3, v0, v1

    .line 352
    if-eqz v3, :cond_2

    .line 353
    sget-object v4, Lcom/umeng/socialize/controller/impl/c;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 354
    iget-object v4, p0, Lcom/umeng/socialize/view/br;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v4}, Lcom/umeng/socialize/view/ShareActivity;->d(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v4

    .line 355
    const v5, 0x9c40

    iget-object v6, p0, Lcom/umeng/socialize/view/br;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v6}, Lcom/umeng/socialize/view/ShareActivity;->j(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v6

    .line 354
    invoke-interface {v3, v4, v5, v6}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 351
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
