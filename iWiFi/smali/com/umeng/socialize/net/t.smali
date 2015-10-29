.class public Lcom/umeng/socialize/net/t;
.super Lcom/umeng/socialize/net/a/b;
.source "ShareMultiReqeust.java"


# static fields
.field public static a:Z = false

.field private static final j:Ljava/lang/String; = "/share/multi_add/"

.field private static final k:I = 0x11


# instance fields
.field private l:Lcom/umeng/socialize/bean/SocializeEntity;

.field private m:[Lcom/umeng/socialize/bean/SNSPair;

.field private n:Lcom/umeng/socialize/bean/UMShareMsg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/socialize/net/t;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)V
    .locals 7

    .prologue
    .line 67
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/u;

    const/16 v5, 0x11

    sget-object v6, Lcom/umeng/socialize/net/a/b$b;->b:Lcom/umeng/socialize/net/a/b$b;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/net/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Lcom/umeng/socialize/bean/SocializeEntity;ILcom/umeng/socialize/net/a/b$b;)V

    .line 68
    iput-object p1, p0, Lcom/umeng/socialize/net/t;->e:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/umeng/socialize/net/t;->l:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 70
    iput-object p4, p0, Lcom/umeng/socialize/net/t;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    .line 71
    iput-object p3, p0, Lcom/umeng/socialize/net/t;->m:[Lcom/umeng/socialize/bean/SNSPair;

    .line 72
    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .locals 5

    .prologue
    .line 179
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 181
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 180
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 182
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 184
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 187
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 191
    :goto_1
    return-object v0

    .line 185
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/share/multi_add/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/umeng/socialize/net/t;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/common/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/umeng/socialize/net/t;->l:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v1, v1, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method protected a(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
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
    .line 77
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/umeng/socialize/net/t;->m:[Lcom/umeng/socialize/bean/SNSPair;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/net/t;->m:[Lcom/umeng/socialize/bean/SNSPair;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/umeng/socialize/net/t;->m:[Lcom/umeng/socialize/bean/SNSPair;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 92
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 94
    :try_start_0
    const-string v1, "sns"

    .line 95
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    iget-object v1, p0, Lcom/umeng/socialize/net/t;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    iget-object v1, v1, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    sget-object v1, Lcom/umeng/socialize/net/utils/a;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/net/t;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    iget-object v2, v2, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :cond_1
    const-string v1, "ak"

    .line 100
    iget-object v2, p0, Lcom/umeng/socialize/net/t;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/socialize/common/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    iget-object v1, p0, Lcom/umeng/socialize/net/t;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    iget-object v1, v1, Lcom/umeng/socialize/bean/UMShareMsg;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    if-eqz v1, :cond_2

    .line 103
    sget-object v1, Lcom/umeng/socialize/net/utils/a;->t:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/umeng/socialize/net/t;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    iget-object v2, v2, Lcom/umeng/socialize/bean/UMShareMsg;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/UMLocation;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :cond_2
    const-string v1, "type"

    .line 109
    iget-object v2, p0, Lcom/umeng/socialize/net/t;->l:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v2

    .line 108
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    sget-object v1, Lcom/umeng/socialize/net/t;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "##### share type : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/umeng/socialize/net/t;->l:Lcom/umeng/socialize/bean/SocializeEntity;

    sget-object v2, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareType(Lcom/umeng/socialize/bean/ShareType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/umeng/socialize/net/t;->a(Lorg/json/JSONObject;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/umeng/socialize/net/t;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/umeng/socialize/net/t;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/t;->a(Lcom/umeng/socialize/media/UMediaObject;Ljava/util/Map;)V

    .line 127
    return-object v0

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/umeng/socialize/net/t;->m:[Lcom/umeng/socialize/bean/SNSPair;

    aget-object v1, v1, v0

    .line 82
    iget-object v3, v1, Lcom/umeng/socialize/bean/SNSPair;->mPaltform:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 84
    :try_start_1
    iget-object v3, v1, Lcom/umeng/socialize/bean/SNSPair;->mPaltform:Ljava/lang/String;

    iget-object v4, v1, Lcom/umeng/socialize/bean/SNSPair;->mUsid:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 85
    :cond_5
    iget-object v1, v1, Lcom/umeng/socialize/bean/SNSPair;->mUsid:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 113
    :catch_0
    move-exception v1

    goto :goto_1

    .line 86
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public a(Lcom/umeng/socialize/media/UMediaObject;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/socialize/media/UMediaObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 196
    const-string v3, ""

    .line 197
    const-string v2, ""

    .line 198
    const-string v4, ""

    .line 200
    iget-object v0, p0, Lcom/umeng/socialize/net/t;->m:[Lcom/umeng/socialize/bean/SNSPair;

    if-eqz v0, :cond_a

    .line 201
    iget-object v0, p0, Lcom/umeng/socialize/net/t;->m:[Lcom/umeng/socialize/bean/SNSPair;

    array-length v0, v0

    if-ne v0, v5, :cond_5

    .line 202
    iget-object v0, p0, Lcom/umeng/socialize/net/t;->m:[Lcom/umeng/socialize/bean/SNSPair;

    const/4 v5, 0x0

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/umeng/socialize/bean/SNSPair;->mPaltform:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 208
    :goto_0
    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getAppWebSite(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v5

    .line 209
    if-eqz p1, :cond_9

    .line 210
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 211
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->toUrlExtraParams()Ljava/util/Map;

    move-result-object v0

    .line 212
    invoke-interface {p2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 220
    :cond_0
    :goto_1
    instance-of v0, p1, Lcom/umeng/socialize/media/BaseMediaObject;

    if-eqz v0, :cond_9

    .line 221
    check-cast p1, Lcom/umeng/socialize/media/BaseMediaObject;

    .line 222
    invoke-virtual {p1}, Lcom/umeng/socialize/media/BaseMediaObject;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p1}, Lcom/umeng/socialize/media/BaseMediaObject;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_2
    sget-object v2, Lcom/umeng/socialize/bean/SocializeEntity;->mAppName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/umeng/socialize/net/t;->e:Landroid/content/Context;

    if-eqz v2, :cond_7

    .line 227
    iget-object v2, p0, Lcom/umeng/socialize/net/t;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 228
    iget-object v3, p0, Lcom/umeng/socialize/net/t;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 229
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 230
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    sput-object v2, Lcom/umeng/socialize/bean/SocializeEntity;->mAppName:Ljava/lang/String;

    .line 238
    :goto_3
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 239
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 240
    const-string v4, "app_name"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u672a\u77e5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 243
    sget-object v2, Lcom/umeng/socialize/net/utils/a;->A:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 246
    sget-object v1, Lcom/umeng/socialize/net/utils/a;->B:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 249
    const-string v0, "app_website"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    :cond_4
    const-string v0, "ext"

    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_4
    return-void

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/umeng/socialize/net/t;->m:[Lcom/umeng/socialize/bean/SNSPair;

    array-length v0, v0

    if-le v0, v5, :cond_a

    .line 205
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto/16 :goto_0

    .line 214
    :cond_6
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->toByte()[B

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    .line 216
    sget-object v6, Lcom/umeng/socialize/net/a/b$a;->a:Lcom/umeng/socialize/net/a/b$a;

    invoke-virtual {p0, v0, v6, v1}, Lcom/umeng/socialize/net/t;->a([BLcom/umeng/socialize/net/a/b$a;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 234
    :cond_7
    sget-object v2, Lcom/umeng/socialize/bean/SocializeEntity;->mAppName:Ljava/lang/String;

    goto :goto_3

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :cond_8
    move-object v2, v4

    goto :goto_3

    :cond_9
    move-object v0, v2

    move-object v1, v3

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
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
    .line 142
    iget-object v0, p0, Lcom/umeng/socialize/net/t;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/net/t;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/net/t;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    invoke-super {p0}, Lcom/umeng/socialize/net/a/b;->b()Ljava/util/Map;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 145
    :cond_1
    invoke-super {p0}, Lcom/umeng/socialize/net/a/b;->b()Ljava/util/Map;

    move-result-object v1

    .line 146
    iget-object v0, p0, Lcom/umeng/socialize/net/t;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    instance-of v0, v0, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_4

    .line 147
    iget-object v0, p0, Lcom/umeng/socialize/net/t;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 148
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-direct {p0, v0}, Lcom/umeng/socialize/net/t;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 150
    invoke-static {v2}, Lcom/umeng/socialize/common/a;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    const-string v0, "png"

    .line 154
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
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

    .line 156
    sget-object v0, Lcom/umeng/socialize/net/utils/a;->v:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    move-object v0, v1

    .line 168
    goto :goto_0

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/net/t;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    instance-of v0, v0, Lcom/umeng/socialize/media/UMRichMedia;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/umeng/socialize/net/t;->n:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/media/UMRichMedia;

    .line 159
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMRichMedia;->toByte()[B

    move-result-object v2

    .line 160
    invoke-static {v2}, Lcom/umeng/socialize/common/a;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 162
    const-string v0, "png"

    .line 164
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
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

    .line 166
    sget-object v0, Lcom/umeng/socialize/net/utils/a;->v:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
