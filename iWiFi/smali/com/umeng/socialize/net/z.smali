.class public Lcom/umeng/socialize/net/z;
.super Lcom/umeng/socialize/net/a/e;
.source "UploadImageResponse.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/a/e;-><init>(Lorg/json/JSONObject;)V

    .line 13
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/umeng/socialize/net/a/e;->a()V

    .line 18
    iget-object v0, p0, Lcom/umeng/socialize/net/z;->l:Lorg/json/JSONObject;

    .line 19
    if-eqz v0, :cond_0

    .line 20
    const-string v1, "large_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/net/z;->a:Ljava/lang/String;

    .line 21
    const-string v1, "small_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/z;->b:Ljava/lang/String;

    .line 23
    :cond_0
    return-void
.end method
