.class Lcom/umeng/socialize/media/UMImage$2;
.super Ljava/lang/Thread;
.source "UMImage.java"


# instance fields
.field final synthetic a:Lcom/umeng/socialize/media/UMImage;

.field private final synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/media/UMImage;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/media/UMImage$2;->a:Lcom/umeng/socialize/media/UMImage;

    iput-object p2, p0, Lcom/umeng/socialize/media/UMImage$2;->b:Ljava/io/InputStream;

    .line 199
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 202
    .line 203
    const/4 v2, 0x0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$2;->a:Lcom/umeng/socialize/media/UMImage;

    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage$2;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socom/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/media/UMImage;->a(Lcom/umeng/socialize/media/UMImage;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    const/16 v2, 0x1000

    :try_start_1
    new-array v2, v2, [B

    .line 209
    :goto_0
    iget-object v3, p0, Lcom/umeng/socialize/media/UMImage$2;->b:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 212
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 213
    if-eqz v0, :cond_0

    .line 214
    iget-object v2, p0, Lcom/umeng/socialize/media/UMImage$2;->a:Lcom/umeng/socialize/media/UMImage;

    invoke-static {v2, v0}, Lcom/umeng/socialize/media/UMImage;->a(Lcom/umeng/socialize/media/UMImage;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$2;->a:Lcom/umeng/socialize/media/UMImage;

    invoke-static {v0}, Lcom/umeng/socialize/media/UMImage;->a(Lcom/umeng/socialize/media/UMImage;)V

    .line 221
    :try_start_2
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$2;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$2;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 224
    :cond_1
    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 231
    :cond_2
    :goto_1
    return-void

    .line 210
    :cond_3
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 219
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$2;->a:Lcom/umeng/socialize/media/UMImage;

    invoke-static {v0}, Lcom/umeng/socialize/media/UMImage;->a(Lcom/umeng/socialize/media/UMImage;)V

    .line 221
    :try_start_5
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$2;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage$2;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 224
    :cond_4
    if-eqz v1, :cond_2

    .line 225
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 227
    :catch_1
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 218
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 219
    :goto_3
    iget-object v2, p0, Lcom/umeng/socialize/media/UMImage$2;->a:Lcom/umeng/socialize/media/UMImage;

    invoke-static {v2}, Lcom/umeng/socialize/media/UMImage;->a(Lcom/umeng/socialize/media/UMImage;)V

    .line 221
    :try_start_6
    iget-object v2, p0, Lcom/umeng/socialize/media/UMImage$2;->b:Ljava/io/InputStream;

    if-eqz v2, :cond_5

    .line 222
    iget-object v2, p0, Lcom/umeng/socialize/media/UMImage$2;->b:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 224
    :cond_5
    if-eqz v1, :cond_6

    .line 225
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 230
    :cond_6
    :goto_4
    throw v0

    .line 227
    :catch_2
    move-exception v1

    .line 228
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 227
    :catch_3
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 218
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 216
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
