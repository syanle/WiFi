.class public Lcom/umeng/socom/util/a;
.super Ljava/lang/Object;
.source "AESStringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;
    .locals 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/umeng/socom/util/a;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    if-nez p0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    invoke-static {p1, v0}, Lcom/umeng/socom/util/a;->a(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 46
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/umeng/socom/util/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 136
    if-nez p0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-static {p1, v0}, Lcom/umeng/socom/util/a;->a(Ljava/lang/String;Ljava/io/UnsupportedEncodingException;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lcom/umeng/socom/util/a;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 60
    const-string v0, "US-ASCII"

    invoke-static {p0, v0}, Lcom/umeng/socom/util/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static c([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "UTF-16"

    invoke-static {p0, v0}, Lcom/umeng/socom/util/a;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 74
    const-string v0, "UTF-16"

    invoke-static {p0, v0}, Lcom/umeng/socom/util/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static d([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const-string v0, "UTF-16BE"

    invoke-static {p0, v0}, Lcom/umeng/socom/util/a;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 88
    const-string v0, "UTF-16BE"

    invoke-static {p0, v0}, Lcom/umeng/socom/util/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static e([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const-string v0, "UTF-16LE"

    invoke-static {p0, v0}, Lcom/umeng/socom/util/a;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 102
    const-string v0, "UTF-16LE"

    invoke-static {p0, v0}, Lcom/umeng/socom/util/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static f([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/umeng/socom/util/a;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 116
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/umeng/socom/util/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
