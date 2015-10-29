.class public Lcom/laiwang/sdk/message/LWMessage;
.super Ljava/lang/Object;
.source "LWMessage.java"

# interfaces
.implements Lcom/laiwang/sdk/message/IILWMessage;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/laiwang/sdk/message/LWMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected appUrl:Ljava/lang/String;

.field protected msgActivity:Ljava/lang/String;

.field protected msgAppKey:Ljava/lang/String;

.field protected msgChat:Ljava/lang/String;

.field protected msgContent:Ljava/lang/String;

.field protected msgImageThumbBMP:Landroid/graphics/Bitmap;

.field protected msgImageThumbPATH:Ljava/lang/String;

.field protected msgImageURL:Ljava/lang/String;

.field protected msgLinkUrl:Ljava/lang/String;

.field protected msgSecret:Ljava/lang/String;

.field protected msgShareType:Ljava/lang/String;

.field protected msgSource:Ljava/lang/String;

.field protected msgTitle:Ljava/lang/String;

.field protected msgType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/laiwang/sdk/message/LWMessage$1;

    invoke-direct {v0}, Lcom/laiwang/sdk/message/LWMessage$1;-><init>()V

    sput-object v0, Lcom/laiwang/sdk/message/LWMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p1}, Lcom/laiwang/sdk/message/LWMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/laiwang/sdk/message/LWMessage;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/laiwang/sdk/message/LWMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)Lcom/laiwang/sdk/message/IILWMessage;
    .locals 12
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 268
    const-string v11, "title"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 269
    .local v10, "title":Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/laiwang/sdk/message/LWMessage;->setMessageTitle(Ljava/lang/String;)V

    .line 270
    const-string v11, "content"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 271
    .local v9, "text":Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/laiwang/sdk/message/LWMessage;->setMessageText(Ljava/lang/String;)V

    .line 272
    const-string v11, "chat"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "chat":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/laiwang/sdk/message/LWMessage;->setMessageChat(Ljava/lang/String;)V

    .line 274
    const-string v11, "content"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "description":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/laiwang/sdk/message/LWMessage;->setMessageText(Ljava/lang/String;)V

    .line 276
    const-string v11, "picUrl"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, "picUrl":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/laiwang/sdk/message/LWMessage;->setMessageImageURL(Ljava/lang/String;)V

    .line 278
    const-string v11, "source"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, "source":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/laiwang/sdk/message/LWMessage;->setMesssageSource(Ljava/lang/String;)V

    .line 280
    const-string v11, "link"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "link":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/laiwang/sdk/message/LWMessage;->setMessageLinkUrl(Ljava/lang/String;)V

    .line 282
    const-string v11, "clientId"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "clientId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/laiwang/sdk/message/LWMessage;->setAppkey(Ljava/lang/String;)V

    .line 284
    const-string v11, "clientSecret"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "clientSecret":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/laiwang/sdk/message/LWMessage;->setSecret(Ljava/lang/String;)V

    .line 286
    const-string v11, "contentUrl"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "contentUrl":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/laiwang/sdk/message/LWMessage;->setMessageLinkUrl(Ljava/lang/String;)V

    .line 288
    const-string v11, "shareType"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, "shareType":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/laiwang/sdk/message/LWMessage;->setShareType(Ljava/lang/String;)V

    .line 290
    const-string v11, "reqeustTYPE"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 291
    iget v11, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    if-nez v11, :cond_0

    .line 292
    const/4 v11, 0x6

    iput v11, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 295
    :cond_0
    return-object p0
.end method

.method public getAppUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->appUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageChat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgChat:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageImageThumbBMP()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageThumbBMP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMessageImageThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageThumbPATH:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSource:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageThumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageURL()Ljava/lang/String;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageThumbPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    return v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getShareType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgShareType:Ljava/lang/String;

    return-object v0
.end method

.method public isIMessageMusic()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x3

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 224
    return-void
.end method

.method public isMessageComponent()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x6

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 139
    return-void
.end method

.method public isMessageImage()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x2

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 130
    return-void
.end method

.method public isMessageLink()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x5

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 143
    return-void
.end method

.method public isMessageText()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 126
    return-void
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "prev"    # Landroid/os/Parcel;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgShareType:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgAppKey:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSecret:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgContent:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSource:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageURL:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageThumbPATH:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgTitle:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgChat:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgActivity:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setAppUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "appUrl"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->appUrl:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgAppKey:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setMessageActiviy(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgActivity"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgActivity:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setMessageChat(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgChat"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgChat:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setMessageImageThumbBMP(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumbBMP"    # Landroid/graphics/Bitmap;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageThumbBMP:Landroid/graphics/Bitmap;

    .line 211
    return-void
.end method

.method public setMessageImageThumbPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageImageThumbUrl"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageThumbPATH:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setMessageImageURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageImageUrl"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageURL:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setMessageLinkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgContent"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgContent:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setMessageTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgTitle:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setMessageType(I)V
    .locals 0
    .param p1, "msgType"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 220
    return-void
.end method

.method public setMesssageSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgSource"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSource:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgSecret"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSecret:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setShareType(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgShareType"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgShareType:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v0, "toBundle":Landroid/os/Bundle;
    const-string v1, "reqeustTYPE"

    iget v2, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string v1, "title"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "content"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "chat"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageChat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    const-string v1, "picUrl"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_0
    const-string v1, "source"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "link"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "clientId"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v1, "clientSecret"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v1, "contentUrl"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v1, "DYNAMIC"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getShareType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const-string v1, "DYNAMIC2"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getShareType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    :cond_0
    const-string v1, "shareType"

    const-string v2, "DYNAMIC"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_1
    return-object v0

    .line 248
    :cond_1
    const-string v1, "picUrl"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageThumbPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_2
    const-string v1, "shareType"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getShareType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 76
    iget v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgShareType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgAppKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageThumbPATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgChat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    return-void
.end method
