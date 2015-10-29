.class public Lcom/laiwang/sdk/openapi/LWAPIFactory;
.super Ljava/lang/Object;
.source "LWAPIFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createComMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/sdk/message/IILWMessage;
    .locals 1
    .param p0, "msgTitle"    # Ljava/lang/String;
    .param p1, "msgContent"    # Ljava/lang/String;
    .param p2, "msgChat"    # Ljava/lang/String;
    .param p3, "msgLinkUrl"    # Ljava/lang/String;
    .param p4, "thumbBMP"    # Landroid/graphics/Bitmap;
    .param p5, "msgImageThumbURL"    # Ljava/lang/String;
    .param p6, "msgImageURL"    # Ljava/lang/String;
    .param p7, "msgSource"    # Ljava/lang/String;
    .param p8, "msgShareType"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Lcom/laiwang/sdk/message/LWMessage;

    invoke-direct {v0}, Lcom/laiwang/sdk/message/LWMessage;-><init>()V

    .line 71
    .local v0, "iMessageComponent":Lcom/laiwang/sdk/message/LWMessage;
    invoke-virtual {v0}, Lcom/laiwang/sdk/message/LWMessage;->isMessageComponent()V

    .line 72
    invoke-virtual {v0, p0}, Lcom/laiwang/sdk/message/LWMessage;->setMessageTitle(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p1}, Lcom/laiwang/sdk/message/LWMessage;->setMessageText(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, p3}, Lcom/laiwang/sdk/message/LWMessage;->setMessageLinkUrl(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p5}, Lcom/laiwang/sdk/message/LWMessage;->setMessageImageThumbPath(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, p6}, Lcom/laiwang/sdk/message/LWMessage;->setMessageImageURL(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p2}, Lcom/laiwang/sdk/message/LWMessage;->setMessageChat(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, p4}, Lcom/laiwang/sdk/message/LWMessage;->setMessageImageThumbBMP(Landroid/graphics/Bitmap;)V

    .line 79
    invoke-virtual {v0, p7}, Lcom/laiwang/sdk/message/LWMessage;->setMesssageSource(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0, p8}, Lcom/laiwang/sdk/message/LWMessage;->setShareType(Ljava/lang/String;)V

    .line 81
    return-object v0
.end method

.method public static createLWAPI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/laiwang/sdk/openapi/ILWAPI;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appToken"    # Ljava/lang/String;
    .param p2, "secretID"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appName"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static/range {p0 .. p5}, Lcom/laiwang/sdk/openapi/LWAPI;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/laiwang/sdk/openapi/LWAPI;

    move-result-object v0

    return-object v0
.end method

.method public static createMediaMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Lcom/laiwang/sdk/message/IILWMessage;
    .locals 3
    .param p0, "msgTitle"    # Ljava/lang/String;
    .param p1, "msgContent"    # Ljava/lang/String;
    .param p2, "msgChat"    # Ljava/lang/String;
    .param p3, "msgType"    # I
    .param p4, "msgPicture"    # Ljava/lang/String;
    .param p5, "msgDescription"    # Ljava/lang/String;
    .param p6, "msgThumbnail"    # Ljava/lang/String;
    .param p7, "msgExtra"    # Ljava/lang/String;
    .param p8, "msgPlaylink"    # Ljava/lang/String;
    .param p9, "msgLink"    # Ljava/lang/String;
    .param p10, "msgSource"    # Ljava/lang/String;
    .param p11, "msgDuration"    # D
    .param p13, "msgFlag"    # Ljava/lang/String;
    .param p14, "shareType"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v1, Lcom/laiwang/sdk/message/LWMessageMedia;

    invoke-direct {v1}, Lcom/laiwang/sdk/message/LWMessageMedia;-><init>()V

    .line 110
    .local v1, "lwMessageMedia":Lcom/laiwang/sdk/message/LWMessageMedia;
    invoke-virtual {v1, p0}, Lcom/laiwang/sdk/message/LWMessageMedia;->setMessageTitle(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, p1}, Lcom/laiwang/sdk/message/LWMessageMedia;->setMessageText(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, p4}, Lcom/laiwang/sdk/message/LWMessageMedia;->setPicture(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1, p5}, Lcom/laiwang/sdk/message/LWMessageMedia;->setDescription(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, p7}, Lcom/laiwang/sdk/message/LWMessageMedia;->setExtra(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, p8}, Lcom/laiwang/sdk/message/LWMessageMedia;->setPlayLink(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, p8}, Lcom/laiwang/sdk/message/LWMessageMedia;->setMessageLinkUrl(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1, p6}, Lcom/laiwang/sdk/message/LWMessageMedia;->setMessageImageURL(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, p10}, Lcom/laiwang/sdk/message/LWMessageMedia;->setMesssageSource(Ljava/lang/String;)V

    .line 119
    invoke-static {p11, p12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/laiwang/sdk/message/LWMessageMedia;->setDuration(Ljava/lang/Double;)V

    .line 120
    move-object/from16 v0, p14

    invoke-virtual {v1, v0}, Lcom/laiwang/sdk/message/LWMessageMedia;->setShareType(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, p3}, Lcom/laiwang/sdk/message/LWMessageMedia;->setMessageType(I)V

    .line 122
    move-object/from16 v0, p13

    invoke-virtual {v1, v0}, Lcom/laiwang/sdk/message/LWMessageMedia;->setFlag(Ljava/lang/String;)V

    .line 124
    return-object v1
.end method

.method public static createTextMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/sdk/message/IILWMessage;
    .locals 1
    .param p0, "msgContent"    # Ljava/lang/String;
    .param p1, "shareType"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lcom/laiwang/sdk/message/LWMessageText;

    invoke-direct {v0}, Lcom/laiwang/sdk/message/LWMessageText;-><init>()V

    .line 36
    .local v0, "lwMessageText":Lcom/laiwang/sdk/message/LWMessageText;
    invoke-virtual {v0, p0}, Lcom/laiwang/sdk/message/LWMessageText;->setMessageText(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, p1}, Lcom/laiwang/sdk/message/LWMessageText;->setShareType(Ljava/lang/String;)V

    .line 39
    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lcom/laiwang/sdk/message/IILWMessage;
    .locals 3
    .param p0, "fromBundle"    # Landroid/os/Bundle;

    .prologue
    .line 129
    if-nez p0, :cond_1

    .line 130
    const/4 v0, 0x0

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 132
    :cond_1
    const/4 v0, 0x0

    .line 133
    .local v0, "iLWMessage":Lcom/laiwang/sdk/message/IILWMessage;
    const/4 v1, -0x1

    .line 134
    .local v1, "shareType":I
    const-string v2, "reqeustTYPE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 135
    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 136
    new-instance v0, Lcom/laiwang/sdk/message/LWMessage;

    .end local v0    # "iLWMessage":Lcom/laiwang/sdk/message/IILWMessage;
    invoke-direct {v0}, Lcom/laiwang/sdk/message/LWMessage;-><init>()V

    .line 143
    .restart local v0    # "iLWMessage":Lcom/laiwang/sdk/message/IILWMessage;
    :goto_1
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0, p0}, Lcom/laiwang/sdk/message/IILWMessage;->fromBundle(Landroid/os/Bundle;)Lcom/laiwang/sdk/message/IILWMessage;

    goto :goto_0

    .line 137
    :cond_2
    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 138
    :cond_3
    new-instance v0, Lcom/laiwang/sdk/message/LWMessageMedia;

    .end local v0    # "iLWMessage":Lcom/laiwang/sdk/message/IILWMessage;
    invoke-direct {v0}, Lcom/laiwang/sdk/message/LWMessageMedia;-><init>()V

    .line 139
    .restart local v0    # "iLWMessage":Lcom/laiwang/sdk/message/IILWMessage;
    goto :goto_1

    .line 140
    :cond_4
    new-instance v0, Lcom/laiwang/sdk/message/LWMessage;

    .end local v0    # "iLWMessage":Lcom/laiwang/sdk/message/IILWMessage;
    invoke-direct {v0}, Lcom/laiwang/sdk/message/LWMessage;-><init>()V

    .restart local v0    # "iLWMessage":Lcom/laiwang/sdk/message/IILWMessage;
    goto :goto_1
.end method
