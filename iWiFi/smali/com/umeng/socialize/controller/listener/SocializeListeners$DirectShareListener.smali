.class public interface abstract Lcom/umeng/socialize/controller/listener/SocializeListeners$DirectShareListener;
.super Ljava/lang/Object;
.source "SocializeListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/controller/listener/SocializeListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DirectShareListener"
.end annotation


# virtual methods
.method public abstract onAuthenticated(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
.end method

.method public abstract onOauthComplete(Ljava/lang/String;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
.end method
