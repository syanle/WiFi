.class public Lcn/sharesdk/yixin/utils/YXMessage$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/yixin/utils/YXMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a(Lcn/sharesdk/yixin/utils/YXMessage;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_yixinmessage_version"

    iget v2, p0, Lcn/sharesdk/yixin/utils/YXMessage;->version:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "_yixinmessage_title"

    iget-object v2, p0, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_yixinmessage_description"

    iget-object v2, p0, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_yixinmessage_thumbdata"

    iget-object v2, p0, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "im.yixin.sdk.api."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_yixinmessage_dataClass"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    invoke-interface {v1, v0}, Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;->write(Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcn/sharesdk/yixin/utils/YXMessage;
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    const-string v0, "_yixinmessage_version"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->version:I

    const-string v0, "_yixinmessage_title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28

    invoke-static {v0, v2, v3}, Lcn/sharesdk/yixin/utils/YXMessage$a;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    const-string v0, "_yixinmessage_description"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x48

    invoke-static {v0, v2, v3}, Lcn/sharesdk/yixin/utils/YXMessage$a;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    const-string v0, "_yixinmessage_thumbdata"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    const-string v0, "_yixinmessage_dataClass"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v2, "im.yixin.sdk.api"

    const-string v3, "cn.sharesdk.yixin.utils"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    iget-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    invoke-interface {v0, p0}, Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;->read(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\\n"

    const-string v2, " "

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    move v0, v1

    move v2, v1

    :goto_1
    array-length v4, v6

    if-ge v0, v4, :cond_1

    aget-char v4, v6, v0

    const/16 v7, 0x7f

    if-gt v4, v7, :cond_3

    move v4, v3

    :goto_2
    if-eqz v4, :cond_4

    move v4, v3

    :goto_3
    add-int/2addr v2, v4

    if-le v2, p1, :cond_5

    move v1, v3

    :cond_1
    if-eqz p2, :cond_2

    if-eqz v1, :cond_2

    const-string v0, "..."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    const/4 v4, 0x2

    goto :goto_3

    :cond_5
    aget-char v4, v6, v0

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
