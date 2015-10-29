.class public Lorg/xbill/DNS/TSIG;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/TSIG$StreamVerifier;
    }
.end annotation


# static fields
.field public static final FUDGE:S = 0x12cs

.field public static final HMAC:Lorg/xbill/DNS/Name;

.field public static final HMAC_MD5:Lorg/xbill/DNS/Name;

.field private static final HMAC_MD5_STR:Ljava/lang/String; = "HMAC-MD5.SIG-ALG.REG.INT."

.field public static final HMAC_SHA1:Lorg/xbill/DNS/Name;

.field private static final HMAC_SHA1_STR:Ljava/lang/String; = "hmac-sha1."

.field public static final HMAC_SHA256:Lorg/xbill/DNS/Name;

.field private static final HMAC_SHA256_STR:Ljava/lang/String; = "hmac-sha256."


# instance fields
.field private alg:Lorg/xbill/DNS/Name;

.field private digest:Ljava/lang/String;

.field private key:[B

.field private name:Lorg/xbill/DNS/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "HMAC-MD5.SIG-ALG.REG.INT."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    .line 26
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC:Lorg/xbill/DNS/Name;

    .line 29
    const-string v0, "hmac-sha1."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    .line 32
    const-string v0, "hmac-sha256."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p2, p3}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "hmac-md5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 122
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 123
    return-void

    .line 116
    :cond_0
    const-string v0, "hmac-sha1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 118
    :cond_1
    const-string v0, "hmac-sha256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 121
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "algorithm"    # Lorg/xbill/DNS/Name;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p3}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/TSIG;->key:[B

    .line 91
    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->key:[B

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid TSIG key string"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_0
    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p2, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 100
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid TSIG key name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V
    .locals 0
    .param p1, "algorithm"    # Lorg/xbill/DNS/Name;
    .param p2, "name"    # Lorg/xbill/DNS/Name;
    .param p3, "key"    # [B

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    .line 65
    iput-object p1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 66
    iput-object p3, p0, Lorg/xbill/DNS/TSIG;->key:[B

    .line 67
    invoke-direct {p0}, Lorg/xbill/DNS/TSIG;->getDigest()V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;[B)V
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "key"    # [B

    .prologue
    .line 78
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;[B)V

    .line 79
    return-void
.end method

.method static synthetic access$0(Lorg/xbill/DNS/TSIG;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lorg/xbill/DNS/TSIG;)[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    return-object v0
.end method

.method static synthetic access$2(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method static synthetic access$3(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/TSIG;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    const-string v1, "[:/]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    if-lt v1, v5, :cond_0

    array-length v1, v0

    if-le v1, v2, :cond_1

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid TSIG key specification"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_1
    array-length v1, v0

    if-ne v1, v2, :cond_2

    .line 155
    new-instance v1, Lorg/xbill/DNS/TSIG;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-object v1

    :cond_2
    new-instance v1, Lorg/xbill/DNS/TSIG;

    sget-object v2, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    aget-object v3, v0, v3

    aget-object v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDigest()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "md5"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    .line 54
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const-string v0, "sha-1"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    sget-object v1, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    const-string v0, "sha-256"

    iput-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 3
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "error"    # I
    .param p3, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    const/4 v2, 0x3

    .line 246
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2, p3}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    .line 247
    .local v0, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {p1, v0, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 248
    iput v2, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 249
    return-void
.end method

.method public apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 1
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V

    .line 259
    return-void
.end method

.method public applyStream(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;Z)V
    .locals 21
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "old"    # Lorg/xbill/DNS/TSIGRecord;
    .param p3, "first"    # Z

    .prologue
    .line 268
    if-eqz p3, :cond_0

    .line 269
    invoke-virtual/range {p0 .. p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    .line 306
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 274
    .local v8, "timeSigned":Ljava/util/Date;
    new-instance v14, Lorg/xbill/DNS/utils/HMAC;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v14, v3, v4}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    .line 276
    .local v14, "hmac":Lorg/xbill/DNS/utils/HMAC;
    const-string v3, "tsigfudge"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v9

    .line 277
    .local v9, "fudge":I
    if-ltz v9, :cond_1

    const/16 v3, 0x7fff

    if-le v9, v3, :cond_2

    .line 278
    :cond_1
    const/16 v9, 0x12c

    .line 280
    :cond_2
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 281
    .local v15, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v15, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 282
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 286
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 288
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    .end local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 289
    .restart local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v16, v3, v5

    .line 290
    .local v16, "time":J
    const/16 v3, 0x20

    shr-long v3, v16, v3

    long-to-int v0, v3

    move/from16 v18, v0

    .line 291
    .local v18, "timeHigh":I
    const-wide v3, 0xffffffffL

    and-long v19, v16, v3

    .line 292
    .local v19, "timeLow":J
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 293
    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 294
    invoke-virtual {v15, v9}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 296
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v14, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 298
    invoke-virtual {v14}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v10

    .line 299
    .local v10, "signature":[B
    const/4 v13, 0x0

    .line 301
    .local v13, "other":[B
    new-instance v2, Lorg/xbill/DNS/TSIGRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v4, 0xff

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 302
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v11

    invoke-virtual {v11}, Lorg/xbill/DNS/Header;->getID()I

    move-result v11

    .line 303
    const/4 v12, 0x0

    .line 301
    invoke-direct/range {v2 .. v13}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    .line 304
    .local v2, "r":Lorg/xbill/DNS/Record;
    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 305
    const/4 v3, 0x3

    move-object/from16 v0, p1

    iput v3, v0, Lorg/xbill/DNS/Message;->tsigState:I

    goto/16 :goto_0
.end method

.method public generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;
    .locals 21
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B
    .param p3, "error"    # I
    .param p4, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 172
    const/16 v2, 0x12

    move/from16 v0, p3

    if-eq v0, v2, :cond_8

    .line 173
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 177
    .local v8, "timeSigned":Ljava/util/Date;
    :goto_0
    const/4 v14, 0x0

    .line 178
    .local v14, "hmac":Lorg/xbill/DNS/utils/HMAC;
    if-eqz p3, :cond_0

    const/16 v2, 0x12

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 179
    :cond_0
    new-instance v14, Lorg/xbill/DNS/utils/HMAC;

    .end local v14    # "hmac":Lorg/xbill/DNS/utils/HMAC;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v14, v2, v3}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    .line 181
    .restart local v14    # "hmac":Lorg/xbill/DNS/utils/HMAC;
    :cond_1
    const-string v2, "tsigfudge"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v9

    .line 182
    .local v9, "fudge":I
    if-ltz v9, :cond_2

    const/16 v2, 0x7fff

    if-le v9, v2, :cond_3

    .line 183
    :cond_2
    const/16 v9, 0x12c

    .line 185
    :cond_3
    if-eqz p4, :cond_4

    .line 186
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 187
    .local v15, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v15, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 188
    if-eqz v14, :cond_4

    .line 189
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 190
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 195
    .end local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    :cond_4
    if-eqz v14, :cond_5

    .line 196
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 198
    :cond_5
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 199
    .restart local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v15}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 200
    const/16 v2, 0xff

    invoke-virtual {v15, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 201
    const-wide/16 v2, 0x0

    invoke-virtual {v15, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v15}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 203
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v16, v2, v4

    .line 204
    .local v16, "time":J
    const/16 v2, 0x20

    shr-long v2, v16, v2

    long-to-int v0, v2

    move/from16 v18, v0

    .line 205
    .local v18, "timeHigh":I
    const-wide v2, 0xffffffffL

    and-long v19, v16, v2

    .line 206
    .local v19, "timeLow":J
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 207
    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 208
    invoke-virtual {v15, v9}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 210
    move/from16 v0, p3

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 211
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 213
    if-eqz v14, :cond_6

    .line 214
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 217
    :cond_6
    if-eqz v14, :cond_9

    .line 218
    invoke-virtual {v14}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v10

    .line 222
    .local v10, "signature":[B
    :goto_1
    const/4 v13, 0x0

    .line 223
    .local v13, "other":[B
    const/16 v2, 0x12

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 224
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    .end local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 225
    .restart local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v16, v2, v4

    .line 226
    const/16 v2, 0x20

    shr-long v2, v16, v2

    long-to-int v0, v2

    move/from16 v18, v0

    .line 227
    const-wide v2, 0xffffffffL

    and-long v19, v16, v2

    .line 228
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 229
    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 230
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v13

    .line 233
    :cond_7
    new-instance v2, Lorg/xbill/DNS/TSIGRecord;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v4, 0xff

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    .line 234
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v11

    invoke-virtual {v11}, Lorg/xbill/DNS/Header;->getID()I

    move-result v11

    move/from16 v12, p3

    .line 233
    invoke-direct/range {v2 .. v13}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    return-object v2

    .line 175
    .end local v8    # "timeSigned":Ljava/util/Date;
    .end local v9    # "fudge":I
    .end local v10    # "signature":[B
    .end local v13    # "other":[B
    .end local v14    # "hmac":Lorg/xbill/DNS/utils/HMAC;
    .end local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v16    # "time":J
    .end local v18    # "timeHigh":I
    .end local v19    # "timeLow":J
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v8

    .restart local v8    # "timeSigned":Ljava/util/Date;
    goto/16 :goto_0

    .line 220
    .restart local v9    # "fudge":I
    .restart local v14    # "hmac":Lorg/xbill/DNS/utils/HMAC;
    .restart local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    .restart local v16    # "time":J
    .restart local v18    # "timeHigh":I
    .restart local v19    # "timeLow":J
    :cond_9
    const/4 v2, 0x0

    new-array v10, v2, [B

    .restart local v10    # "signature":[B
    goto :goto_1
.end method

.method public recordLength()I
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v0

    add-int/lit8 v0, v0, 0xa

    .line 416
    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    .line 415
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B
    .locals 22
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B
    .param p3, "length"    # I
    .param p4, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 324
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 325
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v17

    .line 326
    .local v17, "tsig":Lorg/xbill/DNS/TSIGRecord;
    new-instance v5, Lorg/xbill/DNS/utils/HMAC;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->key:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;[B)V

    .line 327
    .local v5, "hmac":Lorg/xbill/DNS/utils/HMAC;
    if-nez v17, :cond_0

    .line 328
    const/16 v18, 0x1

    .line 387
    :goto_0
    return v18

    .line 330
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 331
    :cond_1
    const-string v18, "verbose"

    invoke-static/range {v18 .. v18}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 332
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v19, "BADKEY failure"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    :cond_2
    const/16 v18, 0x11

    goto :goto_0

    .line 335
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 336
    .local v7, "now":J
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 337
    .local v10, "then":J
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v18

    move/from16 v0, v18

    int-to-long v2, v0

    .line 338
    .local v2, "fudge":J
    sub-long v18, v7, v10

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v2

    cmp-long v18, v18, v20

    if-lez v18, :cond_5

    .line 339
    const-string v18, "verbose"

    invoke-static/range {v18 .. v18}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 340
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v19, "BADTIME failure"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    :cond_4
    const/16 v18, 0x12

    goto :goto_0

    .line 344
    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v18

    const/16 v19, 0x11

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 345
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v18

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 347
    new-instance v9, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v9}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 348
    .local v9, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 349
    invoke-virtual {v9}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 350
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 352
    .end local v9    # "out":Lorg/xbill/DNS/DNSOutput;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v18

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 353
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v4

    .line 354
    .local v4, "header":[B
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v18

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 355
    invoke-virtual {v5, v4}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 357
    move-object/from16 v0, p1

    iget v0, v0, Lorg/xbill/DNS/Message;->tsigstart:I

    move/from16 v18, v0

    array-length v0, v4

    move/from16 v19, v0

    sub-int v6, v18, v19

    .line 358
    .local v6, "len":I
    array-length v0, v4

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1, v6}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    .line 360
    new-instance v9, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v9}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 361
    .restart local v9    # "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 362
    move-object/from16 v0, v17

    iget v0, v0, Lorg/xbill/DNS/TSIGRecord;->dclass:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 363
    move-object/from16 v0, v17

    iget-wide v0, v0, Lorg/xbill/DNS/TSIGRecord;->ttl:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 364
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 365
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v12, v18, v20

    .line 366
    .local v12, "time":J
    const/16 v18, 0x20

    shr-long v18, v12, v18

    move-wide/from16 v0, v18

    long-to-int v14, v0

    .line 367
    .local v14, "timeHigh":I
    const-wide v18, 0xffffffffL

    and-long v15, v12, v18

    .line 368
    .local v15, "timeLow":J
    invoke-virtual {v9, v14}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 369
    move-wide v0, v15

    invoke-virtual {v9, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 370
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 371
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 372
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v18

    if-eqz v18, :cond_7

    .line 373
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 374
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 379
    :goto_1
    invoke-virtual {v9}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 381
    invoke-virtual/range {v17 .. v17}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/xbill/DNS/utils/HMAC;->verify([B)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 382
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 383
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 376
    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    goto :goto_1

    .line 385
    :cond_8
    const-string v18, "verbose"

    invoke-static/range {v18 .. v18}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 386
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v19, "BADSIG failure"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 387
    :cond_9
    const/16 v18, 0x10

    goto/16 :goto_0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I
    .locals 1
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B
    .param p3, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 406
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B

    move-result v0

    return v0
.end method
