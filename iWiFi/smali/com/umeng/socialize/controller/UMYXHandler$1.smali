.class Lcom/umeng/socialize/controller/UMYXHandler$1;
.super Ljava/lang/Object;
.source "UMYXHandler.java"

# interfaces
.implements Lim/yixin/sdk/api/IYXAPICallbackEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/controller/UMYXHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReq(Lim/yixin/sdk/api/BaseReq;)V
    .locals 2
    .param p1, "req"    # Lim/yixin/sdk/api/BaseReq;

    .prologue
    .line 76
    const-string v0, ""

    const-string v1, "### \u6613\u4fe1\u8bf7\u6c42"

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onResp(Lim/yixin/sdk/api/BaseResp;)V
    .locals 9
    .param p1, "resp"    # Lim/yixin/sdk/api/BaseResp;

    .prologue
    .line 88
    invoke-virtual {p1}, Lim/yixin/sdk/api/BaseResp;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v2, p1

    .line 91
    check-cast v2, Lim/yixin/sdk/api/SendMessageToYX$Resp;

    .line 93
    .local v2, "response":Lim/yixin/sdk/api/SendMessageToYX$Resp;
    const/4 v3, 0x0

    .line 94
    .local v3, "statusCode":I
    const/4 v4, 0x1

    sput-boolean v4, Lcom/umeng/socom/Log;->LOG:Z

    .line 96
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    .line 97
    .local v1, "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    iget v4, v2, Lim/yixin/sdk/api/SendMessageToYX$Resp;->errCode:I

    packed-switch v4, :pswitch_data_1

    .line 124
    # getter for: Lcom/umeng/socialize/controller/UMYXHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMYXHandler;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "### \u5fae\u4fe1\u53d1\u9001 -- \u672a\u77e5\u9519\u8bef."

    invoke-static {v4, v5}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_1
    sget-object v4, Lcom/umeng/socialize/controller/UMYXHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v4, :cond_1

    .line 129
    sget-object v4, Lcom/umeng/socialize/controller/UMYXHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v5, Lcom/umeng/socialize/controller/UMYXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v4, v1, v3, v5}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 132
    :cond_1
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 135
    .local v0, "config":Lcom/umeng/socialize/bean/SocializeConfig;
    const-class v4, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 136
    sget-object v5, Lcom/umeng/socialize/controller/UMYXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 134
    invoke-virtual {v0, v4, v1, v3, v5}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 139
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 140
    # getter for: Lcom/umeng/socialize/controller/UMYXHandler;->tmpContext:Landroid/content/Context;
    invoke-static {}, Lcom/umeng/socialize/controller/UMYXHandler;->access$1()Landroid/content/Context;

    move-result-object v5

    sget-object v4, Lcom/umeng/socialize/controller/UMYXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v6, v4, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    # getter for: Lcom/umeng/socialize/controller/UMYXHandler;->tmpDesc:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMYXHandler;->access$2()Ljava/lang/String;

    move-result-object v7

    .line 141
    # getter for: Lcom/umeng/socialize/controller/UMYXHandler;->tmpMediaObject:Lcom/umeng/socialize/media/UMediaObject;
    invoke-static {}, Lcom/umeng/socialize/controller/UMYXHandler;->access$3()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v8

    # getter for: Lcom/umeng/socialize/controller/UMYXHandler;->tmpIsToCircle:Z
    invoke-static {}, Lcom/umeng/socialize/controller/UMYXHandler;->access$4()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "yxtimeline"

    .line 140
    :goto_2
    invoke-static {v5, v6, v7, v8, v4}, Lcom/umeng/socialize/common/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 143
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/umeng/socialize/controller/UMYXHandler;->access$5(Landroid/content/Context;)V

    goto :goto_0

    .line 99
    .end local v0    # "config":Lcom/umeng/socialize/bean/SocializeConfig;
    :pswitch_1
    const/16 v3, 0xc8

    .line 100
    # getter for: Lcom/umeng/socialize/controller/UMYXHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMYXHandler;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "### \u6613\u4fe1\u5206\u4eab\u6210\u529f."

    invoke-static {v4, v5}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :pswitch_2
    const/4 v3, -0x1

    .line 107
    goto :goto_1

    .line 111
    :pswitch_3
    const/4 v3, -0x2

    .line 112
    # getter for: Lcom/umeng/socialize/controller/UMYXHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMYXHandler;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "### \u6613\u4fe1\u5206\u4eab\u53d6\u6d88"

    invoke-static {v4, v5}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :pswitch_4
    const/4 v3, -0x3

    .line 117
    goto :goto_1

    .line 120
    :pswitch_5
    const/4 v3, -0x4

    .line 121
    # getter for: Lcom/umeng/socialize/controller/UMYXHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMYXHandler;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "### \u6613\u4fe1\u53d1\u9001\u88ab\u62d2\u7edd"

    invoke-static {v4, v5}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 142
    .restart local v0    # "config":Lcom/umeng/socialize/bean/SocializeConfig;
    :cond_2
    const-string v4, "yxsession"

    goto :goto_2

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 97
    :pswitch_data_1
    .packed-switch -0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
