.class public Lcom/laiwang/sdk/openapi/LWAPIIntent;
.super Ljava/lang/Object;
.source "LWAPIIntent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeIntent(Landroid/content/Intent;Lcom/laiwang/sdk/message/LWMessage;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "lwMessage"    # Lcom/laiwang/sdk/message/LWMessage;

    .prologue
    .line 19
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 67
    :goto_0
    return v1

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 24
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 25
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 66
    :goto_1
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    const/4 v1, 0x1

    goto :goto_0

    .line 29
    :pswitch_1
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :pswitch_2
    const-string v1, "picUrl"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "thumbUrl"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageThumbPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 38
    :pswitch_3
    const-string v1, "reqeustTYPE"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "content"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "chat"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageChat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 43
    const-string v1, "picUrl"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_2
    const-string v1, "source"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "link"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "clientId"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "clientSecret"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "contentUrl"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "DYNAMIC"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getShareType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 55
    const-string v1, "DYNAMIC2"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getShareType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 56
    :cond_3
    const-string v1, "shareType"

    const-string v2, "DYNAMIC"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 45
    :cond_4
    const-string v1, "picUrl"

    invoke-virtual {p1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageThumbPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :cond_5
    const-string v1, "shareType"

    const-string v2, "SMS"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static makeLWMessage(Landroid/content/Intent;)Lcom/laiwang/sdk/message/LWMessage;
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v6, 0x0

    .line 99
    :goto_0
    return-object v6

    .line 75
    :cond_0
    new-instance v6, Lcom/laiwang/sdk/message/LWMessage;

    invoke-direct {v6}, Lcom/laiwang/sdk/message/LWMessage;-><init>()V

    .line 77
    .local v6, "lwMessage":Lcom/laiwang/sdk/message/LWMessage;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "title"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 78
    .local v11, "title":Ljava/lang/String;
    invoke-virtual {v6, v11}, Lcom/laiwang/sdk/message/LWMessage;->setMessageTitle(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "content"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, "text":Ljava/lang/String;
    invoke-virtual {v6, v10}, Lcom/laiwang/sdk/message/LWMessage;->setMessageText(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "chat"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "chat":Ljava/lang/String;
    invoke-virtual {v6, v0}, Lcom/laiwang/sdk/message/LWMessage;->setMessageChat(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "content"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "description":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lcom/laiwang/sdk/message/LWMessage;->setMessageText(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "picUrl"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "picUrl":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lcom/laiwang/sdk/message/LWMessage;->setMessageImageURL(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "source"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "source":Ljava/lang/String;
    invoke-virtual {v6, v9}, Lcom/laiwang/sdk/message/LWMessage;->setMesssageSource(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "link"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "link":Ljava/lang/String;
    invoke-virtual {v6, v5}, Lcom/laiwang/sdk/message/LWMessage;->setMessageLinkUrl(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "clientId"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "clientId":Ljava/lang/String;
    invoke-virtual {v6, v1}, Lcom/laiwang/sdk/message/LWMessage;->setAppkey(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "clientSecret"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "clientSecret":Ljava/lang/String;
    invoke-virtual {v6, v2}, Lcom/laiwang/sdk/message/LWMessage;->setSecret(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "contentUrl"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "contentUrl":Ljava/lang/String;
    invoke-virtual {v6, v3}, Lcom/laiwang/sdk/message/LWMessage;->setMessageLinkUrl(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "shareType"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "shareType":Ljava/lang/String;
    invoke-virtual {v6, v8}, Lcom/laiwang/sdk/message/LWMessage;->setShareType(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
