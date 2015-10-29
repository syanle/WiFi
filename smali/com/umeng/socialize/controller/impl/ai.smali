.class Lcom/umeng/socialize/controller/impl/ai;
.super Ljava/lang/Object;
.source "SocialServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/ai;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/ai;->b:Landroid/content/Context;

    .line 3078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3

    .prologue
    .line 3099
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    .line 3100
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ai;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3101
    sget-boolean v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->isShowToast:Z

    if-eqz v0, :cond_1

    .line 3102
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ai;->b:Landroid/content/Context;

    const-string v1, "\u53d1\u9001\u6210\u529f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3103
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3113
    :cond_0
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->isShowToast:Z

    .line 3114
    return-void

    .line 3104
    :cond_1
    const/16 v0, 0x13a3

    if-eq p2, v0, :cond_2

    .line 3105
    const/16 v0, 0x13a4

    if-ne p2, v0, :cond_3

    .line 3106
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ai;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3107
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ai;->b:Landroid/content/Context;

    .line 3108
    const-string v1, "\u6388\u6743\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u6388\u6743..."

    .line 3107
    invoke-static {v0, p2, v1}, Lcom/umeng/socialize/bean/StatusCode;->showErrMsg(Landroid/content/Context;ILjava/lang/String;)I

    goto :goto_0

    .line 3110
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ai;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3111
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ai;->b:Landroid/content/Context;

    const-string v1, "\u53d1\u9001\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5..."

    invoke-static {v0, p2, v1}, Lcom/umeng/socialize/bean/StatusCode;->showErrMsg(Landroid/content/Context;ILjava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 3082
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ai;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3083
    sget-boolean v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->isShowToast:Z

    if-eqz v0, :cond_0

    .line 3085
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ai;->b:Landroid/content/Context;

    .line 3086
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ai;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3089
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/ai;->b:Landroid/content/Context;

    .line 3090
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 3091
    const-string v4, "umeng_socialize_text_waitting_share"

    .line 3089
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    .line 3087
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3092
    const/4 v2, 0x0

    .line 3084
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3092
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3094
    :cond_0
    return-void
.end method
