.class public Lorg/xbill/DNS/SIG0;
.super Ljava/lang/Object;
.source "SIG0.java"


# static fields
.field private static final VALIDITY:S = 0x12cs


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Lorg/xbill/DNS/SIGRecord;)V
    .locals 10
    .param p0, "message"    # Lorg/xbill/DNS/Message;
    .param p1, "key"    # Lorg/xbill/DNS/KEYRecord;
    .param p2, "privkey"    # Ljava/security/PrivateKey;
    .param p3, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 39
    const-string v0, "sig0validity"

    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v9

    .line 40
    .local v9, "validity":I
    if-gez v9, :cond_0

    .line 41
    const/16 v9, 0x12c

    .line 43
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 44
    .local v6, "now":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 45
    .local v4, "timeSigned":Ljava/util/Date;
    new-instance v5, Ljava/util/Date;

    mul-int/lit16 v0, v9, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v6

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .local v5, "timeExpires":Ljava/util/Date;
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    .line 47
    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/DNSSEC;->signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/SIGRecord;

    move-result-object v8

    .line 50
    .local v8, "sig":Lorg/xbill/DNS/SIGRecord;
    const/4 v0, 0x3

    invoke-virtual {p0, v8, v0}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 51
    return-void
.end method

.method public static verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/KEYRecord;Lorg/xbill/DNS/SIGRecord;)V
    .locals 5
    .param p0, "message"    # Lorg/xbill/DNS/Message;
    .param p1, "b"    # [B
    .param p2, "key"    # Lorg/xbill/DNS/KEYRecord;
    .param p3, "previous"    # Lorg/xbill/DNS/SIGRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "sig":Lorg/xbill/DNS/SIGRecord;
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/Message;->getSectionArray(I)[Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 69
    .local v0, "additional":[Lorg/xbill/DNS/Record;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 77
    :goto_1
    invoke-static {p0, p1, v2, p3, p2}, Lorg/xbill/DNS/DNSSEC;->verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;)V

    .line 78
    return-void

    .line 70
    :cond_0
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    const/16 v4, 0x18

    if-eq v3, v4, :cond_2

    .line 69
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_2
    aget-object v3, v0, v1

    check-cast v3, Lorg/xbill/DNS/SIGRecord;

    invoke-virtual {v3}, Lorg/xbill/DNS/SIGRecord;->getTypeCovered()I

    move-result v3

    if-nez v3, :cond_1

    .line 74
    aget-object v2, v0, v1

    .end local v2    # "sig":Lorg/xbill/DNS/SIGRecord;
    check-cast v2, Lorg/xbill/DNS/SIGRecord;

    .line 75
    .restart local v2    # "sig":Lorg/xbill/DNS/SIGRecord;
    goto :goto_1
.end method
