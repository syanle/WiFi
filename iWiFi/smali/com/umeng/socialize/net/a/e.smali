.class public Lcom/umeng/socialize/net/a/e;
.super Lcom/umeng/socom/net/t;
.source "SocializeReseponse.java"


# static fields
.field protected static final k:Ljava/lang/String;


# instance fields
.field protected l:Lorg/json/JSONObject;

.field public m:Ljava/lang/String;

.field public n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/umeng/socialize/net/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/net/a/e;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/umeng/socom/net/t;-><init>(Lorg/json/JSONObject;)V

    .line 26
    const/16 v0, -0x67

    iput v0, p0, Lcom/umeng/socialize/net/a/e;->n:I

    .line 30
    invoke-direct {p0, p1}, Lcom/umeng/socialize/net/a/e;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/net/a/e;->l:Lorg/json/JSONObject;

    .line 31
    invoke-virtual {p0}, Lcom/umeng/socialize/net/a/e;->a()V

    .line 32
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    sget-object v1, Lcom/umeng/socialize/net/a/e;->k:Ljava/lang/String;

    const-string v2, "failed requesting"

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    :try_start_0
    const-string v1, "st"

    .line 42
    const/16 v2, 0x7ce

    .line 41
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/umeng/socialize/net/a/e;->n:I

    .line 43
    iget v1, p0, Lcom/umeng/socialize/net/a/e;->n:I

    if-nez v1, :cond_2

    .line 44
    sget-object v1, Lcom/umeng/socialize/net/a/e;->k:Ljava/lang/String;

    const-string v2, "no status code in response."

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 56
    sget-object v1, Lcom/umeng/socialize/net/a/e;->k:Ljava/lang/String;

    const-string v2, "Data body can`t convert to json "

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    :try_start_1
    const-string v1, "msg"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/socialize/net/a/e;->m:Ljava/lang/String;

    .line 48
    const-string v1, "data"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
