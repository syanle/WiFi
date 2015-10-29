.class public Lorg/xbill/DNS/InvalidTTLException;
.super Ljava/lang/IllegalArgumentException;
.source "InvalidTTLException.java"


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "ttl"    # J

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid DNS TTL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
