.class public Lcom/umeng/socialize/net/i;
.super Lcom/umeng/socialize/net/a/b;
.source "LoginRequest.java"


# static fields
.field private static final a:Ljava/lang/String; = "/comment/binding/"

.field private static final j:I = 0xd


# instance fields
.field private k:Lcom/umeng/socialize/bean/SocializeEntity;

.field private l:Lcom/umeng/socialize/bean/SHARE_MEDIA;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 7

    .prologue
    .line 45
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/a/e;

    const/16 v5, 0xd

    sget-object v6, Lcom/umeng/socialize/net/a/b$b;->b:Lcom/umeng/socialize/net/a/b$b;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/net/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Lcom/umeng/socialize/bean/SocializeEntity;ILcom/umeng/socialize/net/a/b$b;)V

    .line 46
    iput-object p1, p0, Lcom/umeng/socialize/net/i;->e:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/umeng/socialize/net/i;->k:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 48
    iput-object p3, p0, Lcom/umeng/socialize/net/i;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 49
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/comment/binding/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/socialize/net/i;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/common/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

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
    .line 54
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 56
    :try_start_0
    const-string v0, "sns"

    iget-object v2, p0, Lcom/umeng/socialize/net/i;->l:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/umeng/socialize/net/i;->a(Lorg/json/JSONObject;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/umeng/socialize/net/i;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/umeng/socialize/net/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 66
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
