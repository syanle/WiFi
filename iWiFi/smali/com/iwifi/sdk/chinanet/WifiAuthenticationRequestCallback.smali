.class public abstract Lcom/iwifi/sdk/chinanet/WifiAuthenticationRequestCallback;
.super Ljava/lang/Object;
.source "WifiAuthenticationRequestCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAuthenticationRequestFailure(Ljava/lang/String;)V
.end method

.method public abstract onAuthenticationRequestSuccess(Ljava/lang/String;)V
.end method
