.class public Lorg/xbill/DNS/InvalidDClassException;
.super Ljava/lang/IllegalArgumentException;
.source "InvalidDClassException.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "dclass"    # I

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid DNS class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
