.class public abstract Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;
.super Ljava/lang/Object;
.source "ILWAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/sdk/openapi/ILWAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IILaiwangApiCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplay(Ljava/lang/String;)I
    .locals 1
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public onResponceAnswer(I)I
    .locals 1
    .param p1, "ret"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
