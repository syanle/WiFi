.class public Lcom/umeng/socialize/net/q;
.super Lcom/umeng/socialize/net/a/e;
.source "ShareFriendsResponse.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMFriend;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/a/e;-><init>(Lorg/json/JSONObject;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/net/q;->b:Z

    .line 47
    return-void
.end method

.method public static a(C)C
    .locals 1

    .prologue
    .line 101
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    .line 102
    add-int/lit8 v0, p0, -0x20

    int-to-char p0, v0

    .line 104
    :cond_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 51
    iget-object v0, p0, Lcom/umeng/socialize/net/q;->l:Lorg/json/JSONObject;

    .line 52
    if-nez v0, :cond_1

    .line 53
    sget-object v0, Lcom/umeng/socialize/net/a/e;->k:Ljava/lang/String;

    const-string v1, "data json is null...."

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    return-void

    .line 55
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/umeng/socialize/net/q;->a:Ljava/util/List;

    .line 58
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 59
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    iget-object v0, p0, Lcom/umeng/socialize/net/q;->l:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 63
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    const-string v1, "name"

    .line 67
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 71
    new-instance v4, Lcom/umeng/socialize/bean/UMFriend;

    invoke-direct {v4}, Lcom/umeng/socialize/bean/UMFriend;-><init>()V

    .line 72
    invoke-virtual {v4, v2}, Lcom/umeng/socialize/bean/UMFriend;->setFid(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4, v1}, Lcom/umeng/socialize/bean/UMFriend;->setName(Ljava/lang/String;)V

    .line 75
    const-string v2, "link_name"

    const-string v5, ""

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_1
    invoke-virtual {v4, v1}, Lcom/umeng/socialize/bean/UMFriend;->setLinkName(Ljava/lang/String;)V

    .line 78
    const-string v1, "pinyin"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 80
    new-instance v2, Lcom/umeng/socialize/bean/UMFriend$a;

    invoke-direct {v2}, Lcom/umeng/socialize/bean/UMFriend$a;-><init>()V

    .line 81
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/umeng/socialize/net/q;->a(C)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/umeng/socialize/bean/UMFriend$a;->b:Ljava/lang/String;

    .line 82
    iput-object v1, v2, Lcom/umeng/socialize/bean/UMFriend$a;->a:Ljava/lang/String;

    .line 83
    invoke-virtual {v4, v2}, Lcom/umeng/socialize/bean/UMFriend;->setPinyin(Lcom/umeng/socialize/bean/UMFriend$a;)V

    .line 86
    :cond_3
    const-string v1, "profile_image_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    const-string v1, "profile_image_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/umeng/socialize/bean/UMFriend;->setIcon(Ljava/lang/String;)V

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/net/q;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    sget-object v1, Lcom/umeng/socialize/net/q;->k:Ljava/lang/String;

    const-string v2, "Parse friend data error"

    invoke-static {v1, v2, v0}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_5
    move-object v1, v2

    .line 76
    goto :goto_1
.end method
