.class Lcom/umeng/socialize/view/bf;
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
    iput-object p1, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/bf;)Lcom/umeng/socialize/view/ShareActivity;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 639
    new-instance v1, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v1}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 640
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->g(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 641
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ShareActivity;->getImageBytes()[B

    move-result-object v0

    .line 642
    if-eqz v0, :cond_1

    .line 643
    new-instance v2, Lcom/umeng/socialize/media/UMRichMedia;

    sget-object v4, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    invoke-direct {v2, v0, v4}, Lcom/umeng/socialize/media/UMRichMedia;-><init>([BLcom/umeng/socialize/media/UMediaObject$MediaType;)V

    .line 646
    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/UMShareMsg;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 647
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->t(Lcom/umeng/socialize/view/ShareActivity;)Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/bean/UMLocation;->build(Landroid/location/Location;)Lcom/umeng/socialize/bean/UMLocation;

    move-result-object v0

    iput-object v0, v1, Lcom/umeng/socialize/bean/UMShareMsg;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    .line 648
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareMsg(Lcom/umeng/socialize/bean/UMShareMsg;)V

    .line 649
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/ShareActivity;->q(Lcom/umeng/socialize/view/ShareActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v2}, Lcom/umeng/socialize/view/ShareActivity;->d(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 650
    iget-object v4, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v4}, Lcom/umeng/socialize/view/ShareActivity;->u(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v4

    .line 649
    invoke-interface {v0, v1, v2, v4}, Lcom/umeng/socialize/controller/UMSocialService;->directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 686
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->v(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->w(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 689
    iget-object v1, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/ShareActivity;->d(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getFollowFids(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/util/Set;

    move-result-object v0

    .line 691
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 692
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 693
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 694
    const/4 v0, 0x0

    move v1, v0

    .line 695
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    .line 700
    :goto_2
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/ShareActivity;->i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v2}, Lcom/umeng/socialize/view/ShareActivity;->q(Lcom/umeng/socialize/view/ShareActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v4}, Lcom/umeng/socialize/view/ShareActivity;->d(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v4

    invoke-interface {v1, v2, v4, v3, v0}, Lcom/umeng/socialize/controller/UMSocialService;->follow(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;[Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->x(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 706
    :cond_0
    return-void

    .line 654
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->l(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    instance-of v0, v0, Lcom/umeng/socialize/media/BaseShareContent;

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->l(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/BaseShareContent;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    .line 656
    if-eqz v0, :cond_5

    instance-of v2, v0, Lcom/umeng/socialize/media/BaseMediaObject;

    if-eqz v2, :cond_5

    .line 657
    check-cast v0, Lcom/umeng/socialize/media/BaseMediaObject;

    .line 663
    :goto_3
    new-instance v2, Lcom/umeng/socialize/view/bg;

    invoke-direct {v2, p0, v1}, Lcom/umeng/socialize/view/bg;-><init>(Lcom/umeng/socialize/view/bf;Lcom/umeng/socialize/bean/UMShareMsg;)V

    invoke-static {v0, v2}, Lcom/umeng/socialize/media/UMRichMedia;->toUMRichMedia(Lcom/umeng/socialize/media/UMediaObject;Lcom/umeng/socialize/media/UMRichMedia$OnRichMediaDataListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    invoke-static {}, Lcom/umeng/socialize/view/ShareActivity;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "can`t set media."

    invoke-static {v1, v2, v0}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 659
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->l(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    instance-of v0, v0, Lcom/umeng/socialize/media/BaseMediaObject;

    if-eqz v0, :cond_5

    .line 660
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->l(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/BaseMediaObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 696
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 697
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move-object v0, v3

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_3
.end method

.method private b()V
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->o(Lcom/umeng/socialize/view/ShareActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "\u8f7d\u5165\u4e2d,\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->o(Lcom/umeng/socialize/view/ShareActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 716
    invoke-static {}, Lcom/umeng/socialize/controller/UMServiceFactory;->getUMQQHandler()Lcom/umeng/socialize/controller/UMQQSsoHandler;

    move-result-object v0

    .line 717
    if-eqz v0, :cond_0

    .line 718
    iget-object v1, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/ShareActivity;->g(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 719
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->shareToQQ(Ljava/lang/String;)V

    .line 724
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-static {}, Lcom/umeng/socialize/view/ShareActivity;->c()Ljava/lang/String;

    move-result-object v0

    .line 722
    const-string v1, "\u8bf7\u5148\u8c03\u7528mController.getConfig().supportQQPlatform(getActivity(), \"\u4f60\u7684app id\");\u652f\u6301QQ\u5e73\u53f0"

    .line 721
    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 585
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    .line 586
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 585
    invoke-static {v0, v1}, Lcom/umeng/socom/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 586
    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socom/DeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    .line 590
    iget-object v1, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    .line 591
    invoke-virtual {v1}, Lcom/umeng/socialize/view/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 595
    iget-object v2, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    .line 596
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 597
    const-string v4, "umeng_socialize_network_break_alert"

    .line 594
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    .line 592
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 598
    const/4 v2, 0x1

    .line 588
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 633
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->g(Lcom/umeng/socialize/view/ShareActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v1}, Lcom/umeng/socialize/view/ShareActivity;->l(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 605
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    const-string v1, "\u8f93\u5165\u5185\u5bb9\u4e3a\u7a7a..."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 606
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 610
    :cond_1
    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->countContentLength(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8c

    if-le v0, v1, :cond_2

    .line 611
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    const-string v1, "\u8f93\u5165\u5185\u5bb9\u8d85\u8fc7140\u4e2a\u5b57."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 612
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->r(Lcom/umeng/socialize/view/ShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->q(Lcom/umeng/socialize/view/ShareActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8d85\u51fa\u6700\u5927\u5b57\u6570\u9650\u5236...."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 623
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->s(Lcom/umeng/socialize/view/ShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 624
    invoke-direct {p0}, Lcom/umeng/socialize/view/bf;->b()V

    .line 632
    :goto_1
    iget-object v0, p0, Lcom/umeng/socialize/view/bf;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/ShareActivity;->finish()V

    goto :goto_0

    .line 630
    :cond_4
    invoke-direct {p0}, Lcom/umeng/socialize/view/bf;->a()V

    goto :goto_1
.end method
