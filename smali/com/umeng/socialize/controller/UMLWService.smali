.class public Lcom/umeng/socialize/controller/UMLWService;
.super Ljava/lang/Object;
.source "UMLWService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static supportLWDynamicPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/controller/UMLWHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "contentUrl"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Lcom/umeng/socialize/controller/UMLWHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/umeng/socialize/controller/UMLWHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v0, "lwDynamicHandler":Lcom/umeng/socialize/controller/UMLWHandler;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/UMLWHandler;->setToCircle(Z)V

    .line 62
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/UMLWHandler;->addToSocialSDK()V

    .line 63
    return-object v0
.end method

.method public static supportLWPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/controller/UMLWHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "contentUrl"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v0, Lcom/umeng/socialize/controller/UMLWHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/umeng/socialize/controller/UMLWHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v0, "lwHandler":Lcom/umeng/socialize/controller/UMLWHandler;
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/UMLWHandler;->addToSocialSDK()V

    .line 43
    return-object v0
.end method
