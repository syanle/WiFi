.class public Lcn/sharesdk/onekeyshare/OnekeyShare;
.super Ljava/lang/Object;
.source "OnekeyShare.java"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_ACTION_CCALLBACK:I = 0x2

.field private static final MSG_CANCEL_NOTIFY:I = 0x3

.field private static final MSG_TOAST:I = 0x1


# instance fields
.field private bgView:Landroid/view/View;

.field private callback:Lcn/sharesdk/framework/PlatformActionListener;

.field private context:Landroid/content/Context;

.field private customers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;"
        }
    .end annotation
.end field

.field private customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

.field private dialogMode:Z

.field private disableSSO:Z

.field private hiddenPlatforms:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

.field private shareParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private silent:Z

.field private theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    .line 61
    iput-object p0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    .line 63
    return-void
.end method

.method private showNotification(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 592
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 593
    return-void
.end method


# virtual methods
.method public addHiddenPlatform(Ljava/lang/String;)V
    .locals 1
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    return-void
.end method

.method public disableSSOWhenAuthorize()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSO:Z

    .line 277
    return-void
.end method

.method public getCallback()Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method public getShareContentCustomizeCallback()Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 503
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 587
    :cond_0
    :goto_0
    return v6

    .line 505
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-static {v4, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 510
    .end local v3    # "text":Ljava/lang/String;
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 513
    :pswitch_2
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "share_completed"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 514
    .local v2, "resId":I
    if-lez v2, :cond_0

    .line 515
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 521
    .end local v2    # "resId":I
    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "expName":Ljava/lang/String;
    const-string v4, "WechatClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 523
    const-string v4, "WechatTimelineNotSupportedException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 524
    const-string v4, "WechatFavoriteNotSupportedException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 525
    :cond_1
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "wechat_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 526
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 527
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 529
    .end local v2    # "resId":I
    :cond_2
    const-string v4, "GooglePlusClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 530
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "google_plus_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 531
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 532
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 534
    .end local v2    # "resId":I
    :cond_3
    const-string v4, "QQClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 535
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "qq_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 536
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 537
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 539
    .end local v2    # "resId":I
    :cond_4
    const-string v4, "YixinClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 540
    const-string v4, "YixinTimelineNotSupportedException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 541
    :cond_5
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "yixin_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 542
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 543
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 545
    .end local v2    # "resId":I
    :cond_6
    const-string v4, "KakaoTalkClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 546
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "kakaotalk_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 547
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 548
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    .end local v2    # "resId":I
    :cond_7
    const-string v4, "KakaoStoryClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 551
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "kakaostory_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 552
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 553
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 555
    .end local v2    # "resId":I
    :cond_8
    const-string v4, "WhatsAppClientNotExistException"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 556
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "whatsapp_client_inavailable"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 557
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 558
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    .end local v2    # "resId":I
    :cond_9
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "share_failed"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 562
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 563
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 570
    .end local v0    # "expName":Ljava/lang/String;
    .end local v2    # "resId":I
    :pswitch_4
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    const-string v5, "share_canceled"

    invoke-static {v4, v5}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 571
    .restart local v2    # "resId":I
    if-lez v2, :cond_0

    .line 572
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 580
    .end local v2    # "resId":I
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/NotificationManager;

    .line 581
    .local v1, "nm":Landroid/app/NotificationManager;
    if-eqz v1, :cond_0

    .line 582
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 510
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I

    .prologue
    .line 494
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 495
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 496
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 497
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 498
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 500
    return-void
.end method

.method public onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p3, "res":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 472
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 473
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 474
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 475
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 476
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 477
    return-void
.end method

.method public onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "action"    # I
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x2

    .line 480
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 482
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 483
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 484
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 485
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 486
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 487
    invoke-static {v0, p0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    .line 490
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 491
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method

.method public setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0
    .param p1, "callback"    # Lcn/sharesdk/framework/PlatformActionListener;

    .prologue
    .line 246
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    .line 247
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "comment"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method

.method public setCustomerLogo(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "enableLogo"    # Landroid/graphics/Bitmap;
    .param p2, "disableLogo"    # Landroid/graphics/Bitmap;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "ocListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 266
    new-instance v0, Lcn/sharesdk/onekeyshare/CustomerLogo;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/CustomerLogo;-><init>()V

    .line 267
    .local v0, "cl":Lcn/sharesdk/onekeyshare/CustomerLogo;
    iput-object p3, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    .line 268
    iput-object p1, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->enableLogo:Landroid/graphics/Bitmap;

    .line 269
    iput-object p2, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->disableLogo:Landroid/graphics/Bitmap;

    .line 270
    iput-object p4, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;->listener:Landroid/view/View$OnClickListener;

    .line 271
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method public setDialogMode()V
    .locals 3

    .prologue
    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    .line 282
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "dialogMode"

    iget-boolean v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method public setEditPageBackground(Landroid/view/View;)V
    .locals 0
    .param p1, "bgView"    # Landroid/view/View;

    .prologue
    .line 306
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->bgView:Landroid/view/View;

    .line 307
    return-void
.end method

.method public setExecuteUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "executeurl"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "executeurl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public setImageArray([Ljava/lang/String;)V
    .locals 2
    .param p1, "imageArray"    # [Ljava/lang/String;

    .prologue
    .line 302
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imageArray"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 2
    .param p1, "imagePath"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imagePath"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_0
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "imageUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    return-void
.end method

.method public setInstallUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "installurl"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "installurl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    return-void
.end method

.method public setLatitude(F)V
    .locals 3
    .param p1, "latitude"    # F

    .prologue
    .line 211
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "latitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public setLongitude(F)V
    .locals 3
    .param p1, "longitude"    # F

    .prologue
    .line 216
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "longitude"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public setMusicUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "musicUrl"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "musicUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public setOnShareButtonClickListener(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;)V
    .locals 0
    .param p1, "onShareButtonClickListener"    # Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    .prologue
    .line 310
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    .line 311
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 2
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "platform"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V
    .locals 0
    .param p1, "callback"    # Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    .prologue
    .line 256
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    .line 257
    return-void
.end method

.method public setShareFromQQAuthSupport(Z)V
    .locals 3
    .param p1, "shareFromQQLogin"    # Z

    .prologue
    .line 598
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "isShareTencentWeibo"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    return-void
.end method

.method public setSilent(Z)V
    .locals 0
    .param p1, "silent"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    .line 222
    return-void
.end method

.method public setSite(Ljava/lang/String;)V
    .locals 2
    .param p1, "site"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "site"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public setSiteUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "siteUrl"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "siteUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public setTheme(Lcn/sharesdk/onekeyshare/OnekeyShareTheme;)V
    .locals 0
    .param p1, "theme"    # Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    .prologue
    .line 131
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    .line 132
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public setTitleUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "titleUrl"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "titleUrl"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method public setVenueDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "venueDescription"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "venueDescription"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public setVenueName(Ljava/lang/String;)V
    .locals 2
    .param p1, "venueName"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v1, "venueName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public setViewToShare(Landroid/view/View;)V
    .locals 4
    .param p1, "viewToShare"    # Landroid/view/View;

    .prologue
    .line 293
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/mob/tools/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 294
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v3, "viewToShare"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public share(Ljava/util/HashMap;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcn/sharesdk/framework/Platform;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "shareData":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v20, 0x0

    .line 316
    .local v20, "started":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_0

    .line 467
    return-void

    .line 316
    :cond_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 317
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcn/sharesdk/framework/Platform;

    .line 318
    .local v16, "plat":Lcn/sharesdk/framework/Platform;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSO:Z

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->SSOSetting(Z)V

    .line 319
    invoke-virtual/range {v16 .. v16}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v15

    .line 331
    .local v15, "name":Ljava/lang/String;
    const-string v23, "KakaoTalk"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 332
    .local v7, "isKakaoTalk":Z
    if-eqz v7, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_1

    .line 333
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 334
    .local v14, "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v14, Landroid/os/Message;->what:I

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "kakaotalk_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 336
    .local v17, "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 341
    .end local v14    # "msg":Landroid/os/Message;
    .end local v17    # "resId":I
    :cond_1
    const-string v23, "KakaoStory"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 342
    .local v6, "isKakaoStory":Z
    if-eqz v6, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_2

    .line 343
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 344
    .restart local v14    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v14, Landroid/os/Message;->what:I

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "kakaostory_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 346
    .restart local v17    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 347
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 351
    .end local v14    # "msg":Landroid/os/Message;
    .end local v17    # "resId":I
    :cond_2
    const-string v23, "Line"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 352
    .local v10, "isLine":Z
    if-eqz v10, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_3

    .line 353
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 354
    .restart local v14    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v14, Landroid/os/Message;->what:I

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "line_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 356
    .restart local v17    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 357
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 361
    .end local v14    # "msg":Landroid/os/Message;
    .end local v17    # "resId":I
    :cond_3
    const-string v23, "WhatsApp"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 362
    .local v12, "isWhatsApp":Z
    if-eqz v12, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_4

    .line 363
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 364
    .restart local v14    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v14, Landroid/os/Message;->what:I

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "whatsapp_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 366
    .restart local v17    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 367
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 371
    .end local v14    # "msg":Landroid/os/Message;
    .end local v17    # "resId":I
    :cond_4
    const-string v23, "Pinterest"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 372
    .local v11, "isPinterest":Z
    if-eqz v11, :cond_5

    invoke-virtual/range {v16 .. v16}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_5

    .line 373
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 374
    .restart local v14    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v14, Landroid/os/Message;->what:I

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "pinterest_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 376
    .restart local v17    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 377
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 381
    .end local v14    # "msg":Landroid/os/Message;
    .end local v17    # "resId":I
    :cond_5
    const-string v23, "Instagram"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_6

    .line 382
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 383
    .restart local v14    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v14, Landroid/os/Message;->what:I

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "instagram_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 385
    .restart local v17    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 386
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 390
    .end local v14    # "msg":Landroid/os/Message;
    .end local v17    # "resId":I
    :cond_6
    const-string v23, "Laiwang"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 391
    .local v8, "isLaiwang":Z
    const-string v23, "LaiwangMoments"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 392
    .local v9, "isLaiwangMoments":Z
    if-nez v8, :cond_7

    if-eqz v9, :cond_8

    .line 393
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_8

    .line 394
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 395
    .restart local v14    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v14, Landroid/os/Message;->what:I

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "laiwang_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 397
    .restart local v17    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 398
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 403
    .end local v14    # "msg":Landroid/os/Message;
    .end local v17    # "resId":I
    :cond_8
    const-string v23, "YixinMoments"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_9

    const-string v23, "Yixin"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_9

    const/4 v13, 0x0

    .line 404
    .local v13, "isYixin":Z
    :goto_1
    if-eqz v13, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcn/sharesdk/framework/Platform;->isClientValid()Z

    move-result v23

    if-nez v23, :cond_a

    .line 405
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 406
    .restart local v14    # "msg":Landroid/os/Message;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v14, Landroid/os/Message;->what:I

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "yixin_client_inavailable"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 408
    .restart local v17    # "resId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/mob/tools/utils/UIHandler;->sendMessage(Landroid/os/Message;Landroid/os/Handler$Callback;)Z

    goto/16 :goto_0

    .line 403
    .end local v13    # "isYixin":Z
    .end local v14    # "msg":Landroid/os/Message;
    .end local v17    # "resId":I
    :cond_9
    const/4 v13, 0x1

    goto :goto_1

    .line 413
    .restart local v13    # "isYixin":Z
    :cond_a
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 414
    .local v2, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v19, 0x1

    .line 415
    .local v19, "shareType":I
    const-string v23, "imagePath"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, "imagePath":Ljava/lang/String;
    if-eqz v4, :cond_e

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 417
    const/16 v19, 0x2

    .line 418
    const-string v23, ".gif"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 419
    const/16 v19, 0x9

    .line 451
    :cond_b
    :goto_2
    const-string v23, "shareType"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    if-nez v20, :cond_c

    .line 454
    const/16 v20, 0x1

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "sharing"

    invoke-static/range {v23 .. v24}, Lcom/mob/tools/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v17

    .line 457
    .restart local v17    # "resId":I
    if-lez v17, :cond_c

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->showNotification(Ljava/lang/String;)V

    .line 462
    .end local v17    # "resId":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->callback:Lcn/sharesdk/framework/PlatformActionListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 463
    new-instance v18, Lcn/sharesdk/onekeyshare/ShareCore;

    invoke-direct/range {v18 .. v18}, Lcn/sharesdk/onekeyshare/ShareCore;-><init>()V

    .line 464
    .local v18, "shareCore":Lcn/sharesdk/onekeyshare/ShareCore;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customizeCallback:Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/ShareCore;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 465
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/onekeyshare/ShareCore;->share(Lcn/sharesdk/framework/Platform;Ljava/util/HashMap;)Z

    goto/16 :goto_0

    .line 420
    .end local v18    # "shareCore":Lcn/sharesdk/onekeyshare/ShareCore;
    :cond_d
    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 421
    const/16 v19, 0x4

    .line 422
    const-string v23, "musicUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "musicUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 423
    const/16 v19, 0x5

    .line 426
    goto/16 :goto_2

    .line 427
    :cond_e
    const-string v23, "viewToShare"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/Bitmap;

    .line 428
    .local v21, "viewToShare":Landroid/graphics/Bitmap;
    if-eqz v21, :cond_f

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v23

    if-nez v23, :cond_f

    .line 429
    const/16 v19, 0x2

    .line 430
    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 431
    const/16 v19, 0x4

    .line 432
    const-string v23, "musicUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "musicUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 433
    const/16 v19, 0x5

    .line 436
    goto/16 :goto_2

    .line 437
    :cond_f
    const-string v23, "imageUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 438
    .local v5, "imageUrl":Ljava/lang/Object;
    if-eqz v5, :cond_b

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 439
    const/16 v19, 0x2

    .line 440
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const-string v24, ".gif"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 441
    const/16 v19, 0x9

    .line 442
    goto/16 :goto_2

    :cond_10
    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 443
    const/16 v19, 0x4

    .line 444
    const-string v23, "musicUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "musicUrl"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_b

    .line 445
    const/16 v19, 0x5

    goto/16 :goto_2
.end method

.method public show(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 66
    invoke-static {p1}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 67
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->context:Landroid/content/Context;

    .line 70
    const/4 v5, 0x1

    invoke-static {v5, v7}, Lcn/sharesdk/framework/ShareSDK;->logDemoEvent(ILcn/sharesdk/framework/Platform;)V

    .line 79
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 83
    .local v2, "platform":Lcn/sharesdk/framework/Platform;
    iget-boolean v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    if-nez v5, :cond_0

    .line 84
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/ShareCore;->isUseClientToShare(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 85
    instance-of v5, v2, Lcn/sharesdk/framework/CustomPlatform;

    if-eqz v5, :cond_1

    .line 88
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v4, "shareData":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v5

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->share(Ljava/util/HashMap;)V

    .line 128
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "platform":Lcn/sharesdk/framework/Platform;
    .end local v4    # "shareData":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcn/sharesdk/framework/Platform;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    return-void

    .line 97
    :cond_1
    :try_start_0
    sget-object v5, Lcn/sharesdk/onekeyshare/OnekeyShareTheme;->SKYBLUE:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->theme:Lcn/sharesdk/onekeyshare/OnekeyShareTheme;

    if-ne v5, v6, :cond_2

    .line 98
    const-string v5, "cn.sharesdk.onekeyshare.theme.skyblue.PlatformListPage"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .local v3, "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :goto_1
    iget-boolean v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->dialogMode:Z

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setDialogMode(Z)V

    .line 108
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setShareParamsMap(Ljava/util/HashMap;)V

    .line 109
    iget-boolean v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->silent:Z

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setSilent(Z)V

    .line 110
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->customers:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setCustomerLogos(Ljava/util/ArrayList;)V

    .line 111
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->bgView:Landroid/view/View;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setBackgroundView(Landroid/view/View;)V

    .line 112
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->hiddenPlatforms:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setHiddenPlatforms(Ljava/util/HashMap;)V

    .line 113
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->onShareButtonClickListener:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setOnShareButtonClickListener(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$OnShareButtonClickListener;)V

    .line 114
    new-instance v5, Lcn/sharesdk/onekeyshare/OnekeyShare$1;

    invoke-direct {v5, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare$1;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShare;)V

    invoke-virtual {v3, v5}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->setThemeShareCallback(Lcn/sharesdk/onekeyshare/ThemeShareCallback;)V

    .line 121
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/OnekeyShare;->shareParamsMap:Ljava/util/HashMap;

    const-string v6, "platform"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .restart local v1    # "name":Ljava/lang/String;
    invoke-static {v1}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 124
    .restart local v2    # "platform":Lcn/sharesdk/framework/Platform;
    invoke-virtual {v3, p1, v2}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->showEditPage(Landroid/content/Context;Lcn/sharesdk/framework/Platform;)V

    goto :goto_0

    .line 100
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "platform":Lcn/sharesdk/framework/Platform;
    .end local v3    # "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :cond_2
    :try_start_1
    const-string v5, "cn.sharesdk.onekeyshare.theme.classic.PlatformListPage"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    goto :goto_1

    .line 102
    .end local v3    # "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "platformListFakeActivity":Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;
    :cond_3
    invoke-virtual {v3, p1, v7}, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->show(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
