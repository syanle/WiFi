.class public Lcom/umeng/socialize/net/ac;
.super Lcom/umeng/socialize/net/a/b;
.source "UserUpdateRequest.java"


# static fields
.field private static final a:Ljava/lang/String; = "/user/custom_account/"

.field private static final j:I = 0x13


# instance fields
.field private k:Lcom/umeng/socialize/bean/SnsAccount;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SnsAccount;)V
    .locals 7

    .prologue
    .line 34
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/a/e;

    const/16 v5, 0x13

    sget-object v6, Lcom/umeng/socialize/net/a/b$b;->b:Lcom/umeng/socialize/net/a/b$b;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/net/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Lcom/umeng/socialize/bean/SocializeEntity;ILcom/umeng/socialize/net/a/b$b;)V

    .line 35
    iput-object p3, p0, Lcom/umeng/socialize/net/ac;->k:Lcom/umeng/socialize/bean/SnsAccount;

    .line 36
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/user/custom_account/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/socialize/net/ac;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/common/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/common/SocializeConstants;->UID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
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
    .line 76
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/net/ac;->k:Lcom/umeng/socialize/bean/SnsAccount;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getUsid()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    const-string v2, "usid"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/net/ac;->k:Lcom/umeng/socialize/bean/SnsAccount;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getGender()Lcom/umeng/socialize/bean/Gender;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/umeng/socialize/net/ac;->k:Lcom/umeng/socialize/bean/SnsAccount;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getGender()Lcom/umeng/socialize/bean/Gender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/Gender;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    const-string v2, "gender"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/net/ac;->k:Lcom/umeng/socialize/bean/SnsAccount;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    const-string v2, "username"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/net/ac;->k:Lcom/umeng/socialize/bean/SnsAccount;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getBirthday()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 95
    const-string v2, "birthday"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/net/ac;->k:Lcom/umeng/socialize/bean/SnsAccount;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getProfileUrl()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 100
    const-string v2, "profile_url"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/net/ac;->k:Lcom/umeng/socialize/bean/SnsAccount;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getAccountIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 105
    const-string v2, "icon"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/umeng/socialize/net/ac;->k:Lcom/umeng/socialize/bean/SnsAccount;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getExtendArgs()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 110
    const-string v2, "extend"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_6
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/umeng/socialize/net/ac;->a(Lorg/json/JSONObject;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 118
    sget-object v1, Lcom/umeng/socialize/net/ac;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 119
    return-object v0

    .line 83
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
