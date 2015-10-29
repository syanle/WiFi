.class public Lcom/umeng/socialize/controller/UMInfoAgent;
.super Ljava/lang/Object;
.source "UMInfoAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLogin(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/umeng/socialize/db/c;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isOauthed(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 1

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/umeng/socialize/db/OauthHelper;->isAuthenticated(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v0

    return v0
.end method

.method public static removeOauth(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/umeng/socialize/db/OauthHelper;->remove(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 50
    return-void
.end method
