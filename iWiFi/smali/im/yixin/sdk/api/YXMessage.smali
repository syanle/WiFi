.class public final Lim/yixin/sdk/api/YXMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/yixin/sdk/api/YXMessage$Converter;,
        Lim/yixin/sdk/api/YXMessage$YXMessageData;,
        Lim/yixin/sdk/api/YXMessage$MessageType;
    }
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

.field public thumbData:[B

.field public title:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lim/yixin/sdk/api/YXMessage$YXMessageData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    return-void
.end method


# virtual methods
.method final verifyData()Z
    .locals 6

    const/16 v3, 0xc8

    const/4 v1, 0x0

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    if-nez v0, :cond_0

    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v0

    const-class v2, Lim/yixin/sdk/api/YXMessage;

    const-string v3, "messageData is null"

    invoke-virtual {v0, v2, v3}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    array-length v0, v0

    const/high16 v2, 0x10000

    if-le v0, v2, :cond_1

    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v0

    const-class v2, Lim/yixin/sdk/api/YXMessage;

    iget-object v3, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thumbData.length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">65536"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    invoke-static {v0}, Lim/yixin/sdk/util/BitmapUtil;->byteArrayToBmp([B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v0

    const-class v2, Lim/yixin/sdk/api/YXMessage;

    iget-object v3, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "thumbData is not an image"

    invoke-virtual {v0, v2, v3, v4}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x200

    if-le v0, v2, :cond_3

    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v0

    const-class v2, Lim/yixin/sdk/api/YXMessage;

    iget-object v3, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title.length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">512"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_4

    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v0

    const-class v2, Lim/yixin/sdk/api/YXMessage;

    iget-object v3, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "description.length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">1024"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    instance-of v0, v0, Lim/yixin/sdk/api/YXImageMessageData;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    check-cast v0, Lim/yixin/sdk/api/YXImageMessageData;

    iget-object v0, v0, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Lim/yixin/sdk/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    invoke-static {v0}, Lim/yixin/sdk/util/BitmapUtil;->byteArrayToBmp([B)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v3, :cond_6

    :cond_5
    invoke-static {}, Lim/yixin/sdk/util/SDKHttpUtils;->getInstance()Lim/yixin/sdk/util/SDKHttpUtils;

    move-result-object v0

    const-class v2, Lim/yixin/sdk/api/YXMessage;

    iget-object v3, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "YXImageMessageData thumbData width/height must greater than 200px when dataType is url"

    invoke-virtual {v0, v2, v3, v4}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move v0, v1

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    invoke-interface {v0}, Lim/yixin/sdk/api/YXMessage$YXMessageData;->verifyData()Z

    move-result v0

    goto/16 :goto_0
.end method
