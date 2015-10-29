.class public Lcom/umeng/socialize/net/v;
.super Lcom/umeng/socialize/net/a/b;
.source "SharePostRequest.java"


# static fields
.field private static final a:Ljava/lang/String; = "/share/add/"

.field private static final j:I = 0x9


# instance fields
.field private k:Lcom/umeng/socialize/bean/SocializeEntity;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/umeng/socialize/bean/UMShareMsg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;)V
    .locals 7

    .prologue
    .line 57
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/a/e;

    const/16 v5, 0x9

    sget-object v6, Lcom/umeng/socialize/net/a/b$b;->b:Lcom/umeng/socialize/net/a/b$b;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/net/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Lcom/umeng/socialize/bean/SocializeEntity;ILcom/umeng/socialize/net/a/b$b;)V

    .line 58
    iput-object p1, p0, Lcom/umeng/socialize/net/v;->e:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/umeng/socialize/net/v;->k:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 60
    iput-object p3, p0, Lcom/umeng/socialize/net/v;->l:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/umeng/socialize/net/v;->m:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    .line 63
    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 198
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 200
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 199
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 201
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 203
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 206
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 210
    :goto_1
    return-object v0

    .line 204
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/share/add/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/socialize/net/v;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/common/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/v;->k:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v1, v1, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method protected a(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 120
    :try_start_0
    const-string v0, "to"

    iget-object v2, p0, Lcom/umeng/socialize/net/v;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    iget-object v0, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/umeng/socialize/net/utils/a;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    iget-object v2, v2, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    :cond_0
    const-string v0, "usid"

    iget-object v2, p0, Lcom/umeng/socialize/net/v;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    const-string v0, "ak"

    .line 126
    iget-object v2, p0, Lcom/umeng/socialize/net/v;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/socialize/common/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    iget-object v0, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mWeiBoId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    const-string v0, "wid"

    iget-object v2, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    iget-object v2, v2, Lcom/umeng/socialize/bean/UMShareMsg;->mWeiBoId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    if-eqz v0, :cond_2

    .line 132
    sget-object v0, Lcom/umeng/socialize/net/utils/a;->t:Ljava/lang/String;

    .line 133
    iget-object v2, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    iget-object v2, v2, Lcom/umeng/socialize/bean/UMShareMsg;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/UMLocation;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_2
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/umeng/socialize/net/v;->a(Lorg/json/JSONObject;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 144
    sget-object v1, Lcom/umeng/socialize/net/v;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    invoke-interface {v1}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/v;->a(Lcom/umeng/socialize/media/UMediaObject;Ljava/util/Map;)V

    .line 150
    :cond_3
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socom/net/s$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    invoke-super {p0}, Lcom/umeng/socialize/net/a/b;->b()Ljava/util/Map;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 164
    :cond_1
    invoke-super {p0}, Lcom/umeng/socialize/net/a/b;->b()Ljava/util/Map;

    move-result-object v1

    .line 165
    iget-object v0, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    instance-of v0, v0, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_4

    .line 166
    iget-object v0, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 167
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-direct {p0, v0}, Lcom/umeng/socialize/net/v;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 169
    invoke-static {v2}, Lcom/umeng/socialize/common/a;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    const-string v0, "png"

    .line 173
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    new-instance v4, Lcom/umeng/socom/net/s$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v2}, Lcom/umeng/socom/net/s$a;-><init>(Ljava/lang/String;[B)V

    .line 175
    sget-object v0, Lcom/umeng/socialize/net/utils/a;->v:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    move-object v0, v1

    .line 187
    goto :goto_0

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    instance-of v0, v0, Lcom/umeng/socialize/media/UMRichMedia;

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/umeng/socialize/net/v;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMRichMedia;

    .line 178
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMRichMedia;->toByte()[B

    move-result-object v2

    .line 179
    invoke-static {v2}, Lcom/umeng/socialize/common/a;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 181
    const-string v0, "png"

    .line 183
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    new-instance v4, Lcom/umeng/socom/net/s$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v2}, Lcom/umeng/socom/net/s$a;-><init>(Ljava/lang/String;[B)V

    .line 185
    sget-object v0, Lcom/umeng/socialize/net/utils/a;->v:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
