.class public Lcom/umeng/socialize/net/c;
.super Lcom/umeng/socialize/net/a/b;
.source "CommentsPostRequest.java"


# static fields
.field private static final a:Ljava/lang/String; = "/comment/add/"

.field private static final j:I = 0x5


# instance fields
.field private k:Lcom/umeng/socialize/bean/UMComment;

.field private l:Lcom/umeng/socialize/bean/SocializeEntity;

.field private m:[Lcom/umeng/socialize/bean/SNSPair;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/UMComment;[Lcom/umeng/socialize/bean/SNSPair;)V
    .locals 7

    .prologue
    .line 69
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/a/e;

    const/4 v5, 0x5

    sget-object v6, Lcom/umeng/socialize/net/a/b$b;->b:Lcom/umeng/socialize/net/a/b$b;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/net/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Lcom/umeng/socialize/bean/SocializeEntity;ILcom/umeng/socialize/net/a/b$b;)V

    .line 70
    iput-object p1, p0, Lcom/umeng/socialize/net/c;->e:Landroid/content/Context;

    .line 71
    iput-object p3, p0, Lcom/umeng/socialize/net/c;->k:Lcom/umeng/socialize/bean/UMComment;

    .line 72
    iput-object p2, p0, Lcom/umeng/socialize/net/c;->l:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 73
    iput-object p4, p0, Lcom/umeng/socialize/net/c;->m:[Lcom/umeng/socialize/bean/SNSPair;

    .line 74
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/comment/add/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/socialize/net/c;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/common/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/c;->l:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v1, v1, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
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
    .line 108
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 110
    :try_start_0
    sget-object v0, Lcom/umeng/socialize/net/utils/a;->s:Ljava/lang/String;

    .line 111
    iget-object v2, p0, Lcom/umeng/socialize/net/c;->k:Lcom/umeng/socialize/bean/UMComment;

    iget-object v2, v2, Lcom/umeng/socialize/bean/UMComment;->mText:Ljava/lang/String;

    .line 110
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    iget-object v0, p0, Lcom/umeng/socialize/net/c;->k:Lcom/umeng/socialize/bean/UMComment;

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMComment;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/umeng/socialize/net/utils/a;->t:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/umeng/socialize/net/c;->k:Lcom/umeng/socialize/bean/UMComment;

    iget-object v2, v2, Lcom/umeng/socialize/bean/UMComment;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/UMLocation;->toString()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/net/c;->k:Lcom/umeng/socialize/bean/UMComment;

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMComment;->mSignature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    sget-object v0, Lcom/umeng/socialize/net/utils/a;->x:Ljava/lang/String;

    .line 120
    iget-object v2, p0, Lcom/umeng/socialize/net/c;->k:Lcom/umeng/socialize/bean/UMComment;

    iget-object v2, v2, Lcom/umeng/socialize/bean/UMComment;->mSignature:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/net/c;->m:[Lcom/umeng/socialize/bean/SNSPair;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/socialize/net/c;->m:[Lcom/umeng/socialize/bean/SNSPair;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 124
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :try_start_1
    iget-object v3, p0, Lcom/umeng/socialize/net/c;->m:[Lcom/umeng/socialize/bean/SNSPair;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_4

    .line 131
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_2

    .line 133
    const-string v0, "sns"

    .line 134
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    :cond_2
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/umeng/socialize/net/c;->a(Lorg/json/JSONObject;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/umeng/socialize/net/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/umeng/socialize/net/c;->k:Lcom/umeng/socialize/bean/UMComment;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/UMComment;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_3

    .line 153
    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/c;->a(Lcom/umeng/socialize/media/UMediaObject;Ljava/util/Map;)V

    .line 156
    :cond_3
    return-object v0

    .line 126
    :cond_4
    :try_start_2
    aget-object v5, v3, v0

    .line 127
    if-eqz v5, :cond_5

    .line 128
    iget-object v6, v5, Lcom/umeng/socialize/bean/SNSPair;->mPaltform:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lcom/umeng/socialize/bean/SNSPair;->mUsid:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    sget-object v2, Lcom/umeng/socialize/net/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6570\u636e\u6253\u5305\u5931\u8d25 :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    :catch_1
    move-exception v0

    goto :goto_1
.end method
