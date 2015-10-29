.class public abstract Lcom/umeng/socialize/view/abs/s;
.super Landroid/app/Activity;
.source "ReceiveActivity.java"


# static fields
.field protected static final i:I = 0xff00f01

.field protected static final j:I = 0xff00f02


# instance fields
.field private a:[B

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/abs/s;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/umeng/socialize/view/abs/s;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    const-string v1, "\u662f\u5426\u5220\u9664\u4e0a\u4f20\u7684\u56fe\u7247\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    const-string v1, "\u662f"

    new-instance v2, Lcom/umeng/socialize/view/abs/u;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/abs/u;-><init>(Lcom/umeng/socialize/view/abs/s;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 62
    const-string v1, "\u5426"

    new-instance v2, Lcom/umeng/socialize/view/abs/v;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/abs/v;-><init>(Lcom/umeng/socialize/view/abs/s;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 69
    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/view/abs/s;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/umeng/socialize/view/abs/s;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "\u76f8\u518c\u56fe\u7247"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u76f8\u673a\u62cd\u6444"

    aput-object v2, v0, v1

    .line 73
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v2, Lcom/umeng/socialize/view/abs/w;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/view/abs/w;-><init>(Lcom/umeng/socialize/view/abs/s;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 96
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Landroid/graphics/Bitmap;)V
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/abs/s;->setImageBytes([B)V

    .line 130
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/s;->getPreviewImg()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/s;->getPreviewImg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/s;->a()V

    .line 134
    return-void
.end method

.method public getImageBytes()[B
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/s;->a:[B

    return-object v0
.end method

.method public getPreviewImg()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/s;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getReceiveImageClick()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/s;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 99
    const v0, 0xff00f01

    if-ne v0, p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 101
    invoke-static {p0, v0}, Lcom/umeng/socialize/common/SocializeUtils;->getImageBytesFromUri(Landroid/app/Activity;Landroid/net/Uri;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/abs/s;->setImageBytes([B)V

    .line 102
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/s;->getImageBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/s;->getImageBytes()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 103
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 104
    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 105
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/s;->getImageBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/s;->getImageBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/abs/s;->setPreviewImg(Landroid/graphics/Bitmap;)V

    .line 125
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/s;->getPreviewImg()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/abs/s;->a(Landroid/graphics/Bitmap;)V

    .line 126
    return-void

    .line 107
    :cond_1
    const v0, 0xff00f02

    if-ne v0, p1, :cond_0

    if-eqz p3, :cond_0

    .line 108
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v2, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/abs/s;->setPreviewImg(Landroid/graphics/Bitmap;)V

    .line 112
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/s;->getPreviewImg()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 114
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/abs/s;->setImageBytes([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    if-eqz v1, :cond_0

    .line 118
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 116
    :goto_1
    if-eqz v1, :cond_2

    .line 118
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 122
    :cond_2
    :goto_2
    throw v0

    .line 119
    :catch_1
    move-exception v1

    goto :goto_2

    .line 115
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Lcom/umeng/socialize/view/abs/t;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/abs/t;-><init>(Lcom/umeng/socialize/view/abs/s;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/s;->c:Landroid/view/View$OnClickListener;

    .line 50
    return-void
.end method

.method public setImageBytes([B)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/s;->a:[B

    .line 145
    return-void
.end method

.method public setPreviewImg(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/s;->b:Landroid/graphics/Bitmap;

    .line 153
    return-void
.end method
