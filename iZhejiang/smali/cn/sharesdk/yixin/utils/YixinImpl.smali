.class public Lcn/sharesdk/yixin/utils/YixinImpl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/yixin/utils/YixinImpl$ShareParams;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Lcn/sharesdk/yixin/utils/YixinImpl;


# instance fields
.field private c:Lcn/sharesdk/yixin/utils/c;

.field private d:Lcn/sharesdk/yixin/utils/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/sharesdk/yixin/utils/YixinImpl;->a:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/sharesdk/yixin/utils/c;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/c;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/yixin/utils/YixinImpl;->c:Lcn/sharesdk/yixin/utils/c;

    return-void
.end method

.method public static a()Lcn/sharesdk/yixin/utils/YixinImpl;
    .locals 1

    sget-object v0, Lcn/sharesdk/yixin/utils/YixinImpl;->b:Lcn/sharesdk/yixin/utils/YixinImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcn/sharesdk/yixin/utils/YixinImpl;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YixinImpl;-><init>()V

    sput-object v0, Lcn/sharesdk/yixin/utils/YixinImpl;->b:Lcn/sharesdk/yixin/utils/YixinImpl;

    :cond_0
    sget-object v0, Lcn/sharesdk/yixin/utils/YixinImpl;->b:Lcn/sharesdk/yixin/utils/YixinImpl;

    return-object v0
.end method

.method private a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V
    .locals 4

    invoke-virtual {p4}, Lcn/sharesdk/yixin/utils/d;->a()Lcn/sharesdk/framework/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mob/tools/utils/DeviceHelper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".yxapi.YXEntryActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const-class v2, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not extend from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcn/sharesdk/yixin/utils/YixinHandlerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcn/sharesdk/yixin/utils/YixinImpl;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-instance v0, Lcn/sharesdk/yixin/utils/a;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/a;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/yixin/utils/a;->c:Ljava/lang/String;

    iput-object p1, v0, Lcn/sharesdk/yixin/utils/a;->a:Lcn/sharesdk/yixin/utils/YXMessage;

    iput p3, v0, Lcn/sharesdk/yixin/utils/a;->b:I

    iput-object p4, p0, Lcn/sharesdk/yixin/utils/YixinImpl;->d:Lcn/sharesdk/yixin/utils/d;

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YixinImpl;->c:Lcn/sharesdk/yixin/utils/c;

    invoke-virtual {v1, v0}, Lcn/sharesdk/yixin/utils/c;->a(Lcn/sharesdk/yixin/utils/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V
    .locals 2

    new-instance v0, Lcn/sharesdk/yixin/utils/YXTextMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXTextMessageData;-><init>()V

    iput-object p2, v0, Lcn/sharesdk/yixin/utils/YXTextMessageData;->text:Ljava/lang/String;

    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    const-string v0, "text"

    invoke-direct {p0, v1, v0, p3, p4}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V
    .locals 4

    new-instance v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXImageMessageData;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p3, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    iget-object v0, v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    invoke-direct {p0, v0}, Lcn/sharesdk/yixin/utils/YixinImpl;->a([B)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    const-string v0, "img"

    invoke-direct {p0, v1, v0, p4, p5}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V
    .locals 2

    new-instance v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXImageMessageData;-><init>()V

    const-string v1, "/data/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p3}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imageData:[B

    :goto_0
    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcn/sharesdk/yixin/utils/YixinImpl;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    const-string v0, "img"

    invoke-direct {p0, v1, v0, p4, p5}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    return-void

    :cond_0
    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXImageMessageData;->imagePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V
    .locals 4

    new-instance v0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXVideoMessageData;-><init>()V

    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p4, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/yixin/utils/YixinImpl;->a([B)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    const-string v0, "video"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V
    .locals 2

    new-instance v0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXVideoMessageData;-><init>()V

    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    invoke-direct {p0, p4}, Lcn/sharesdk/yixin/utils/YixinImpl;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    const-string v0, "video"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V
    .locals 4

    new-instance v0, Lcn/sharesdk/yixin/utils/YXMusicMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXMusicMessageData;-><init>()V

    iput-object p4, v0, Lcn/sharesdk/yixin/utils/YXMusicMessageData;->musicUrl:Ljava/lang/String;

    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXMusicMessageData;->musicDataUrl:Ljava/lang/String;

    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p5, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/yixin/utils/YixinImpl;->a([B)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    const-string v0, "music"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V
    .locals 2

    new-instance v0, Lcn/sharesdk/yixin/utils/YXMusicMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXMusicMessageData;-><init>()V

    iput-object p4, v0, Lcn/sharesdk/yixin/utils/YXMusicMessageData;->musicUrl:Ljava/lang/String;

    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXMusicMessageData;->musicDataUrl:Ljava/lang/String;

    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    invoke-direct {p0, p5}, Lcn/sharesdk/yixin/utils/YixinImpl;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    const-string v0, "music"

    invoke-direct {p0, v1, v0, p6, p7}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;)[B
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v3, v0, [B

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a([B)[B
    .locals 10

    const/4 v9, 0x1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    array-length v0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x40f0000000000000L    # 65536.0

    div-double/2addr v0, v2

    sub-double v1, v0, v7

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v3, :cond_1

    const-string v4, "png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_1
    add-double/2addr v1, v7

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x64

    invoke-virtual {v4, v0, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v4, v3

    const/high16 v5, 0x10000

    if-gt v4, v5, :cond_1

    :cond_5
    return-object v3
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V
    .locals 5

    const/high16 v4, 0x10000

    new-instance v0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;-><init>()V

    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p4, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/sharesdk/yixin/utils/YixinImpl;->a([B)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    iget-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v4, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkArgs fail, thumbData is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "webpage"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V
    .locals 5

    const/high16 v4, 0x10000

    new-instance v0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;

    invoke-direct {v0}, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;-><init>()V

    iput-object p3, v0, Lcn/sharesdk/yixin/utils/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    new-instance v1, Lcn/sharesdk/yixin/utils/YXMessage;

    invoke-direct {v1}, Lcn/sharesdk/yixin/utils/YXMessage;-><init>()V

    iput-object p1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->title:Ljava/lang/String;

    iput-object p2, v1, Lcn/sharesdk/yixin/utils/YXMessage;->description:Ljava/lang/String;

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->messageData:Lcn/sharesdk/yixin/utils/YXMessage$YXMessageData;

    if-eqz p4, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p4}, Lcn/sharesdk/yixin/utils/YixinImpl;->b(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    iget-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v0, v0

    if-le v0, v4, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkArgs fail, thumbData is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcn/sharesdk/yixin/utils/YXMessage;->thumbData:[B

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "webpage"

    invoke-direct {p0, v1, v0, p5, p6}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Lcn/sharesdk/yixin/utils/YXMessage;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .locals 8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, p1}, Lcn/sharesdk/yixin/utils/YixinImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v3, 0x40f0000000000000L    # 65536.0

    div-double/2addr v1, v3

    sub-double/2addr v1, v6

    :cond_3
    add-double/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {p1, v3}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "checkArgs fail, thumbData is recycled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x64

    invoke-virtual {v3, v0, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    if-eqz v3, :cond_7

    array-length v4, v3

    const/high16 v5, 0x10000

    if-gt v4, v5, :cond_3

    :cond_7
    return-object v3
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jepg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "image/jpeg"

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "image/png"

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "image/gif"

    goto :goto_0

    :cond_5
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_6
    const-string v0, "application/octet-stream"

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcn/sharesdk/yixin/utils/d;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/yixin/utils/d;->a()Lcn/sharesdk/framework/Platform;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/yixin/utils/d;->b()Lcn/sharesdk/framework/Platform$ShareParams;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcn/sharesdk/yixin/utils/d;->c()Lcn/sharesdk/framework/PlatformActionListener;

    move-result-object v8

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getShareType()I

    move-result v9

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getScence()I

    move-result v6

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getMusicUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v7

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    if-eqz v8, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shareType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x9

    invoke-interface {v8, v2, v4, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v4, v6, v1}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto :goto_0

    :pswitch_2
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto :goto_0

    :cond_1
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v2, p0

    move-object v5, v12

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V

    goto :goto_0

    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto :goto_0

    :cond_3
    const-string v5, ""

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto :goto_0

    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v10, v8, v9

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v11, v7, v8

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v12, v5

    move v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v7 .. v14}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_0

    :cond_4
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v7 .. v14}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v7 .. v14}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_0

    :cond_6
    const-string v12, ""

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v13, v6

    move-object/from16 v14, p1

    invoke-direct/range {v7 .. v14}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v11, v5

    move v12, v6

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_8

    move-object/from16 v13, p0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move/from16 v18, v6

    move-object/from16 v19, p1

    invoke-direct/range {v13 .. v19}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_0

    :cond_9
    const-string v11, ""

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/yixin/utils/YixinImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v11, v5

    move v12, v6

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/yixin/utils/YixinImpl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_0

    :cond_a
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_b

    move-object/from16 v13, p0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move/from16 v18, v6

    move-object/from16 v19, p1

    invoke-direct/range {v13 .. v19}, Lcn/sharesdk/yixin/utils/YixinImpl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/yixin/utils/YixinImpl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_0

    :cond_c
    const-string v11, ""

    move-object/from16 v7, p0

    move-object v8, v3

    move-object v9, v4

    move v12, v6

    move-object/from16 v13, p1

    invoke-direct/range {v7 .. v13}, Lcn/sharesdk/yixin/utils/YixinImpl;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/yixin/utils/d;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lcn/sharesdk/yixin/utils/d;Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcn/sharesdk/yixin/utils/d;->a()Lcn/sharesdk/framework/Platform;

    move-result-object v5

    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "images"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/R;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v9}, Lcn/sharesdk/framework/Platform;->getShortLintk(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    :cond_2
    const-string v0, "image/*"

    :cond_3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    :goto_1
    const-string v0, "scene"

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p2, v0, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    const-string v0, "im.yixin.activity.share.ShareToSnsActivity"

    :goto_2
    const-string v2, "im.yixin"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v2

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ShareParams"

    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/mob/tools/utils/DeviceHelper;->getTopTaskPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p3, :cond_5

    if-eqz p3, :cond_5

    const/16 v0, 0x9

    invoke-interface {p3, v5, v0, v6}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    if-eqz v1, :cond_1

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/mob/tools/utils/BitmapHelper;->downloadBitmap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_8
    const-string v0, "im.yixin.activity.share.ShareToSessionActivity"

    goto :goto_2

    :cond_9
    const-wide/16 v7, 0x7d0

    new-instance v0, Lcn/sharesdk/yixin/utils/e;

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcn/sharesdk/yixin/utils/e;-><init>(Lcn/sharesdk/yixin/utils/YixinImpl;Lcom/mob/tools/utils/DeviceHelper;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;Ljava/util/HashMap;)V

    invoke-static {v9, v7, v8, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    goto :goto_3
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YixinImpl;->c:Lcn/sharesdk/yixin/utils/c;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/yixin/utils/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Lcn/sharesdk/yixin/utils/YixinHandlerActivity;)Z
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YixinImpl;->c:Lcn/sharesdk/yixin/utils/c;

    iget-object v1, p0, Lcn/sharesdk/yixin/utils/YixinImpl;->d:Lcn/sharesdk/yixin/utils/d;

    invoke-virtual {v0, p1, v1}, Lcn/sharesdk/yixin/utils/c;->a(Lcn/sharesdk/yixin/utils/YixinHandlerActivity;Lcn/sharesdk/yixin/utils/d;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YixinImpl;->c:Lcn/sharesdk/yixin/utils/c;

    invoke-virtual {v0}, Lcn/sharesdk/yixin/utils/c;->a()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/yixin/utils/YixinImpl;->c:Lcn/sharesdk/yixin/utils/c;

    invoke-virtual {v0}, Lcn/sharesdk/yixin/utils/c;->b()Z

    move-result v0

    return v0
.end method
