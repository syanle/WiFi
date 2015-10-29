.class public final Lcn/sharesdk/yixin/utils/YXMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/yixin/utils/YXMessage$MessageType;,
        Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;,
        Lcn/sharesdk/yixin/utils/YXMessage$a;
    }
.end annotation


# static fields
.field public static final THUMB_SIZE:I = 0x10000


# instance fields
.field public description:Ljava/lang/String;

.field public messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

.field public thumbData:[B

.field public title:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 6

    const/high16 v3, 0x10000

    const/16 v5, 0xc8

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    if-nez v0, :cond_0

    const-string v0, "messageData is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thumbData.length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">65536"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thumbData.length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">65536"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v1, v1

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "thumbData is not an image"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x200

    if-le v0, v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title.length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">512"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x400

    if-le v0, v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    const/16 v4, 0x3fd

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    :cond_5
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    instance-of v0, v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    check-cast v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;

    iget-object v0, v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ge v0, v5, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, v5, :cond_6

    const-string v0, "YXImageMessageData thumbData width/height must greater than 200px when dataType is url"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    move v0, v2

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    invoke-interface {v0}, Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;->verifyData()Z

    move-result v0

    goto/16 :goto_0

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method
