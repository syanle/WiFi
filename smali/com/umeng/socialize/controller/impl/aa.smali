.class Lcom/umeng/socialize/controller/impl/aa;
.super Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;
.source "SocialServiceImpl.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Lcom/umeng/socialize/view/ck;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/view/ck;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/aa;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/aa;->b:Lcom/umeng/socialize/view/ck;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/aa;->c:Landroid/content/Context;

    .line 2213
    invoke-direct {p0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$LoginListener;-><init>()V

    return-void
.end method


# virtual methods
.method public loginFailed(I)V
    .locals 4

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/aa;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2223
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/aa;->c:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 2224
    const-string v3, "umeng_socialize_tip_loginfailed"

    .line 2223
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 2222
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2225
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/aa;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2226
    return-void
.end method

.method public loginSuccessed(Lcom/umeng/socialize/bean/SHARE_MEDIA;Z)V
    .locals 1

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/aa;->b:Lcom/umeng/socialize/view/ck;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ck;->show()V

    .line 2218
    return-void
.end method
