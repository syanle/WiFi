.class public Lcom/umeng/socialize/net/e;
.super Lcom/umeng/socialize/net/a/e;
.source "CommentsResponse.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/UMComment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/a/e;-><init>(Lorg/json/JSONObject;)V

    .line 40
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 44
    iget-object v2, p0, Lcom/umeng/socialize/net/e;->l:Lorg/json/JSONObject;

    .line 45
    if-nez v2, :cond_1

    .line 46
    sget-object v0, Lcom/umeng/socialize/net/a/e;->k:Ljava/lang/String;

    const-string v1, "data json is null...."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/net/e;->a:Ljava/util/List;

    .line 50
    const-string v0, "cms"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 51
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 52
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 53
    invoke-static {v0}, Lcom/umeng/socialize/bean/UMComment;->parseJson(Lorg/json/JSONObject;)Lcom/umeng/socialize/bean/UMComment;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    iget-object v4, p0, Lcom/umeng/socialize/net/e;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-object v1, Lcom/umeng/socialize/net/e;->k:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parse json error[ "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
