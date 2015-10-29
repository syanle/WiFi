.class public interface abstract Lcom/umeng/socialize/controller/listener/SocializeListeners$UMSsoListener;
.super Ljava/lang/Object;
.source "SocializeListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/controller/listener/SocializeListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UMSsoListener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onComplete(Lorg/json/JSONObject;)V
.end method

.method public abstract onError(Lcom/tencent/tauth/UiError;)V
.end method
