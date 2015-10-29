.class Lcom/umeng/socialize/controller/UMWXHandler$1;
.super Ljava/lang/Object;
.source "UMWXHandler.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/openapi/BaseResp;)V
    .locals 6

    .prologue
    const/16 v1, 0xc8

    .line 118
    const/4 v0, 0x0

    .line 120
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 121
    iget v3, p1, Lcom/tencent/mm/sdk/openapi/BaseResp;->errCode:I

    packed-switch v3, :pswitch_data_0

    .line 147
    const-string v3, "UMWXHandler"

    const-string v4, "### \u5fae\u4fe1\u53d1\u9001 -- \u672a\u77e5\u9519\u8bef."

    invoke-static {v3, v4}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_0
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->a()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 152
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->a()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v3

    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->b()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v4

    invoke-interface {v3, v2, v0, v4}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 155
    :cond_0
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->c()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v3

    const-class v4, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 156
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->b()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v5

    .line 155
    invoke-virtual {v3, v4, v2, v0, v5}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 158
    if-ne v0, v1, :cond_1

    .line 159
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->b()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    iget-object v2, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->e()Ljava/lang/String;

    move-result-object v3

    .line 160
    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->f()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v4

    invoke-static {}, Lcom/umeng/socialize/controller/UMWXHandler;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "wxtimeline"

    .line 159
    :goto_1
    invoke-static {v1, v2, v3, v4, v0}, Lcom/umeng/socialize/common/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Landroid/content/Context;)V

    .line 165
    :cond_1
    return-void

    .line 124
    :pswitch_0
    const-string v0, "UMWXHandler"

    const-string v3, "### \u5fae\u4fe1\u5206\u4eab\u6210\u529f."

    invoke-static {v0, v3}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 126
    goto :goto_0

    .line 129
    :pswitch_1
    const/4 v0, -0x1

    .line 130
    goto :goto_0

    .line 134
    :pswitch_2
    const v0, 0x9c40

    .line 135
    const-string v3, "UMWXHandler"

    const-string v4, "### \u5fae\u4fe1\u5206\u4eab\u53d6\u6d88"

    invoke-static {v3, v4}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :pswitch_3
    const/4 v0, -0x3

    .line 140
    goto :goto_0

    .line 143
    :pswitch_4
    const/4 v0, -0x4

    .line 144
    const-string v3, "UMWXHandler"

    const-string v4, "### \u5fae\u4fe1\u53d1\u9001\u88ab\u62d2\u7edd"

    invoke-static {v3, v4}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_2
    const-string v0, "wxsession"

    goto :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
