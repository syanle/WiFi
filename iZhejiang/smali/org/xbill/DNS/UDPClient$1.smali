.class Lorg/xbill/DNS/UDPClient$1;
.super Ljava/lang/Object;
.source "UDPClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/UDPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    # getter for: Lorg/xbill/DNS/UDPClient;->prng:Ljava/security/SecureRandom;
    invoke-static {}, Lorg/xbill/DNS/UDPClient;->access$0()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    .line 39
    .local v0, "n":I
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/xbill/DNS/UDPClient;->access$1(Z)V

    .line 40
    return-void
.end method
