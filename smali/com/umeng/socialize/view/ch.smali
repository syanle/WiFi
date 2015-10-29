.class Lcom/umeng/socialize/view/ch;
.super Ljava/lang/Object;
.source "ShareBoard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/cf;

.field private final synthetic b:Lcom/umeng/socialize/bean/SnsPlatform;

.field private final synthetic c:Lcom/umeng/socialize/view/controller/c;

.field private final synthetic d:Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/cf;Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/view/controller/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/ch;->a:Lcom/umeng/socialize/view/cf;

    iput-object p2, p0, Lcom/umeng/socialize/view/ch;->b:Lcom/umeng/socialize/bean/SnsPlatform;

    iput-object p3, p0, Lcom/umeng/socialize/view/ch;->c:Lcom/umeng/socialize/view/controller/c;

    iput-object p4, p0, Lcom/umeng/socialize/view/ch;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/umeng/socialize/view/ch;->a:Lcom/umeng/socialize/view/cf;

    invoke-static {v0}, Lcom/umeng/socialize/view/cf;->a(Lcom/umeng/socialize/view/cf;)Lcom/umeng/socialize/view/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ce;->dismiss()V

    .line 154
    iget-object v0, p0, Lcom/umeng/socialize/view/ch;->b:Lcom/umeng/socialize/bean/SnsPlatform;

    iget-object v0, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/umeng/socialize/view/ch;->a:Lcom/umeng/socialize/view/cf;

    invoke-static {v1}, Lcom/umeng/socialize/view/cf;->a(Lcom/umeng/socialize/view/cf;)Lcom/umeng/socialize/view/ce;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/view/ce;->a(Lcom/umeng/socialize/view/ce;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socom/DeviceConfig;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/umeng/socialize/view/ch;->a:Lcom/umeng/socialize/view/cf;

    invoke-static {v0}, Lcom/umeng/socialize/view/cf;->a(Lcom/umeng/socialize/view/cf;)Lcom/umeng/socialize/view/ce;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/ce;->a(Lcom/umeng/socialize/view/ce;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 161
    iget-object v0, p0, Lcom/umeng/socialize/view/ch;->b:Lcom/umeng/socialize/bean/SnsPlatform;

    instance-of v0, v0, Lcom/umeng/socialize/bean/CustomPlatform;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/umeng/socialize/view/ch;->c:Lcom/umeng/socialize/view/controller/c;

    iget-object v1, p0, Lcom/umeng/socialize/view/ch;->b:Lcom/umeng/socialize/bean/SnsPlatform;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/view/controller/c;->a(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;)Z

    goto :goto_0

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/ch;->c:Lcom/umeng/socialize/view/controller/c;

    iget-object v1, p0, Lcom/umeng/socialize/view/ch;->b:Lcom/umeng/socialize/bean/SnsPlatform;

    iget-object v2, p0, Lcom/umeng/socialize/view/ch;->d:Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/view/controller/c;->a(Lcom/umeng/socialize/bean/SnsPlatform;Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;)Z

    goto :goto_0
.end method
