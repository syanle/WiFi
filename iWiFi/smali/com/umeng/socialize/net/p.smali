.class public Lcom/umeng/socialize/net/p;
.super Lcom/umeng/socialize/net/a/b;
.source "ShareFriendsRequest.java"


# static fields
.field private static final a:Ljava/lang/String; = "/share/friends/"

.field private static final j:I = 0xe


# instance fields
.field private k:Lcom/umeng/socialize/bean/SocializeEntity;

.field private l:Ljava/lang/String;

.field private m:Lcom/umeng/socialize/bean/SHARE_MEDIA;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 56
    const-string v2, ""

    const-class v3, Lcom/umeng/socialize/net/q;

    const/16 v5, 0xe

    sget-object v6, Lcom/umeng/socialize/net/a/b$b;->a:Lcom/umeng/socialize/net/a/b$b;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/umeng/socialize/net/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Lcom/umeng/socialize/bean/SocializeEntity;ILcom/umeng/socialize/net/a/b$b;)V

    .line 57
    iput-object p1, p0, Lcom/umeng/socialize/net/p;->e:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/umeng/socialize/net/p;->k:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 59
    iput-object p4, p0, Lcom/umeng/socialize/net/p;->l:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/umeng/socialize/net/p;->m:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 61
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/share/friends/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/socialize/net/p;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/socialize/common/SocializeUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/net/p;->l:Ljava/lang/String;

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
    .locals 2
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
    .line 65
    const-string v0, "to"

    iget-object v1, p0, Lcom/umeng/socialize/net/p;->m:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object p1
.end method
