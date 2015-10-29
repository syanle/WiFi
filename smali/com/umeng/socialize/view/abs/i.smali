.class Lcom/umeng/socialize/view/abs/i;
.super Ljava/lang/Object;
.source "EntityView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/abs/g;

.field private final synthetic b:Landroid/os/Handler;

.field private final synthetic c:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/abs/g;Landroid/os/Handler;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/i;->a:Lcom/umeng/socialize/view/abs/g;

    iput-object p2, p0, Lcom/umeng/socialize/view/abs/i;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/umeng/socialize/view/abs/i;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/i;)Lcom/umeng/socialize/view/abs/g;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/i;->a:Lcom/umeng/socialize/view/abs/g;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 115
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/i;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lcom/umeng/socom/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/i;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socom/DeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/i;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/umeng/socialize/view/abs/i;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-virtual {v1}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/umeng/socialize/view/abs/i;->a:Lcom/umeng/socialize/view/abs/g;

    invoke-virtual {v2}, Lcom/umeng/socialize/view/abs/g;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 120
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 121
    const-string v4, "umeng_socialize_network_break_alert"

    .line 119
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    const/4 v2, 0x1

    .line 117
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/i;->b:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/socialize/view/abs/j;

    iget-object v2, p0, Lcom/umeng/socialize/view/abs/i;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-direct {v1, p0, v2}, Lcom/umeng/socialize/view/abs/j;-><init>(Lcom/umeng/socialize/view/abs/i;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
