.class public Lcom/umeng/socom/util/c;
.super Lcom/umeng/socom/util/d;
.source "Base64.java"


# static fields
.field static final a:[B

.field private static final m:I = 0x6

.field private static final n:I = 0x3

.field private static final o:I = 0x4

.field private static final p:[B

.field private static final q:[B

.field private static final r:[B

.field private static final s:I = 0x3f


# instance fields
.field private final t:[B

.field private final u:[B

.field private final v:[B

.field private final w:I

.field private final x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x40

    const/16 v6, 0x3f

    const/16 v5, 0x3e

    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 71
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/umeng/socom/util/c;->a:[B

    .line 80
    new-array v0, v7, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/umeng/socom/util/c;->p:[B

    .line 93
    new-array v0, v7, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/umeng/socom/util/c;->q:[B

    .line 112
    const/16 v0, 0x7b

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 113
    aput-byte v3, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    aput-byte v3, v0, v4

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    .line 114
    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    aput-byte v3, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    .line 115
    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v5, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v5, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v6, v0, v1

    const/16 v1, 0x30

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    .line 116
    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/16 v1, 0x42

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    aput-byte v4, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    .line 117
    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    .line 118
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v6, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    .line 119
    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    .line 112
    sput-object v0, Lcom/umeng/socom/util/c;->r:[B

    .line 126
    return-void

    .line 71
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 80
    nop

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 93
    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/socom/util/c;-><init>(I)V

    .line 177
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/umeng/socom/util/c;->a:[B

    invoke-direct {p0, p1, v0}, Lcom/umeng/socom/util/c;-><init>(I[B)V

    .line 218
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socom/util/c;-><init>(I[BZ)V

    .line 242
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 268
    const/4 v2, 0x3

    .line 270
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v3, p1, v0}, Lcom/umeng/socom/util/d;-><init>(IIII)V

    .line 140
    sget-object v0, Lcom/umeng/socom/util/c;->r:[B

    iput-object v0, p0, Lcom/umeng/socom/util/c;->u:[B

    .line 272
    if-eqz p2, :cond_3

    .line 273
    invoke-virtual {p0, p2}, Lcom/umeng/socom/util/c;->n([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-static {p2}, Lcom/umeng/socom/util/a;->f([B)Ljava/lang/String;

    move-result-object v0

    .line 275
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lineSeparator must not contain base64 characters: ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_0
    array-length v0, p2

    goto :goto_0

    .line 277
    :cond_1
    if-lez p1, :cond_2

    .line 278
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/socom/util/c;->x:I

    .line 279
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/umeng/socom/util/c;->v:[B

    .line 280
    iget-object v0, p0, Lcom/umeng/socom/util/c;->v:[B

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    :goto_1
    iget v0, p0, Lcom/umeng/socom/util/c;->x:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/umeng/socom/util/c;->w:I

    .line 290
    if-eqz p3, :cond_4

    sget-object v0, Lcom/umeng/socom/util/c;->q:[B

    :goto_2
    iput-object v0, p0, Lcom/umeng/socom/util/c;->t:[B

    .line 291
    return-void

    .line 282
    :cond_2
    iput v3, p0, Lcom/umeng/socom/util/c;->x:I

    .line 283
    iput-object v4, p0, Lcom/umeng/socom/util/c;->v:[B

    goto :goto_1

    .line 286
    :cond_3
    iput v3, p0, Lcom/umeng/socom/util/c;->x:I

    .line 287
    iput-object v4, p0, Lcom/umeng/socom/util/c;->v:[B

    goto :goto_1

    .line 290
    :cond_4
    sget-object v0, Lcom/umeng/socom/util/c;->p:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 195
    const/16 v0, 0x4c

    sget-object v1, Lcom/umeng/socom/util/c;->a:[B

    invoke-direct {p0, v0, v1, p1}, Lcom/umeng/socom/util/c;-><init>(I[BZ)V

    .line 196
    return-void
.end method

.method public static a(B)Z
    .locals 2

    .prologue
    .line 474
    const/16 v0, 0x3d

    if-eq p0, v0, :cond_1

    if-ltz p0, :cond_0

    sget-object v0, Lcom/umeng/socom/util/c;->r:[B

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/umeng/socom/util/c;->r:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 488
    invoke-static {p0}, Lcom/umeng/socom/util/a;->f(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socom/util/c;->b([B)Z

    move-result v0

    return v0
.end method

.method public static a([B)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 503
    invoke-static {p0}, Lcom/umeng/socom/util/c;->b([B)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/math/BigInteger;)[B
    .locals 2

    .prologue
    .line 697
    if-nez p0, :cond_0

    .line 698
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encodeInteger called with null parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    invoke-static {p0}, Lcom/umeng/socom/util/c;->b(Ljava/math/BigInteger;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socom/util/c;->a([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BZ)[B
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/umeng/socom/util/c;->a([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BZZ)[B
    .locals 1

    .prologue
    .line 614
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcom/umeng/socom/util/c;->a([BZZI)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BZZI)[B
    .locals 5

    .prologue
    .line 632
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-object p0

    .line 638
    :cond_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/umeng/socom/util/c;

    invoke-direct {v0, p2}, Lcom/umeng/socom/util/c;-><init>(Z)V

    .line 639
    :goto_1
    invoke-virtual {v0, p0}, Lcom/umeng/socom/util/c;->o([B)J

    move-result-wide v1

    .line 640
    int-to-long v3, p3

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 641
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Input array too big, the output array would be bigger ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 643
    const-string v2, ") than the specified maximum size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 644
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 641
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_2
    new-instance v0, Lcom/umeng/socom/util/c;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/socom/util/c;->a:[B

    invoke-direct {v0, v1, v2, p2}, Lcom/umeng/socom/util/c;-><init>(I[BZ)V

    goto :goto_1

    .line 647
    :cond_3
    invoke-virtual {v0, p0}, Lcom/umeng/socom/util/c;->l([B)[B

    move-result-object p0

    goto :goto_0
.end method

.method public static b([B)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 517
    move v0, v1

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 522
    const/4 v1, 0x1

    :cond_0
    return v1

    .line 518
    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/umeng/socom/util/c;->a(B)Z

    move-result v2

    if-nez v2, :cond_2

    aget-byte v2, p0, v0

    invoke-static {v2}, Lcom/umeng/socom/util/c;->c(B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 659
    new-instance v0, Lcom/umeng/socom/util/c;

    invoke-direct {v0}, Lcom/umeng/socom/util/c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/umeng/socom/util/c;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/math/BigInteger;)[B
    .locals 5

    .prologue
    .line 711
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 713
    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    shl-int/lit8 v3, v0, 0x3

    .line 714
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 716
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v3, 0x8

    if-ne v0, v1, :cond_0

    move-object v0, v2

    .line 731
    :goto_0
    return-object v0

    .line 720
    :cond_0
    const/4 v1, 0x0

    .line 721
    array-length v0, v2

    .line 724
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    rem-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1

    .line 725
    const/4 v1, 0x1

    .line 726
    add-int/lit8 v0, v0, -0x1

    .line 728
    :cond_1
    div-int/lit8 v4, v3, 0x8

    sub-int/2addr v4, v0

    .line 729
    div-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    .line 730
    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    .line 731
    goto :goto_0
.end method

.method public static c([B)[B
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/umeng/socom/util/c;->a([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static d([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/umeng/socom/util/c;->a([BZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socom/util/a;->f([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e([B)[B
    .locals 2

    .prologue
    .line 561
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/umeng/socom/util/c;->a([BZZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static f([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 574
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/umeng/socom/util/c;->a([BZZ)[B

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socom/util/a;->f([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g([B)[B
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/umeng/socom/util/c;->a([BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static h([B)[B
    .locals 1

    .prologue
    .line 670
    new-instance v0, Lcom/umeng/socom/util/c;

    invoke-direct {v0}, Lcom/umeng/socom/util/c;-><init>()V

    invoke-virtual {v0, p0}, Lcom/umeng/socom/util/c;->k([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static i([B)Ljava/math/BigInteger;
    .locals 3

    .prologue
    .line 685
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/umeng/socom/util/c;->h([B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method


# virtual methods
.method a([BII)V
    .locals 7

    .prologue
    const/16 v6, 0x3d

    const/4 v2, 0x0

    .line 323
    iget-boolean v0, p0, Lcom/umeng/socom/util/c;->j:Z

    if-eqz v0, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    if-gez p3, :cond_4

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socom/util/c;->j:Z

    .line 330
    iget v0, p0, Lcom/umeng/socom/util/c;->l:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/umeng/socom/util/c;->g:I

    if-eqz v0, :cond_0

    .line 333
    :cond_2
    iget v0, p0, Lcom/umeng/socom/util/c;->x:I

    invoke-virtual {p0, v0}, Lcom/umeng/socom/util/c;->a(I)V

    .line 334
    iget v0, p0, Lcom/umeng/socom/util/c;->i:I

    .line 335
    iget v1, p0, Lcom/umeng/socom/util/c;->l:I

    packed-switch v1, :pswitch_data_0

    .line 355
    :cond_3
    :goto_1
    iget v1, p0, Lcom/umeng/socom/util/c;->k:I

    .line 356
    iget v3, p0, Lcom/umeng/socom/util/c;->i:I

    sub-int v0, v3, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/umeng/socom/util/c;->k:I

    .line 358
    iget v0, p0, Lcom/umeng/socom/util/c;->g:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/umeng/socom/util/c;->k:I

    if-lez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/umeng/socom/util/c;->v:[B

    iget-object v1, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v3, p0, Lcom/umeng/socom/util/c;->i:I

    iget-object v4, p0, Lcom/umeng/socom/util/c;->v:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    iget v0, p0, Lcom/umeng/socom/util/c;->i:I

    iget-object v1, p0, Lcom/umeng/socom/util/c;->v:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/umeng/socom/util/c;->i:I

    goto :goto_0

    .line 337
    :pswitch_0
    iget-object v1, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v3, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/umeng/socom/util/c;->i:I

    iget-object v4, p0, Lcom/umeng/socom/util/c;->t:[B

    iget v5, p0, Lcom/umeng/socom/util/c;->y:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 338
    iget-object v1, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v3, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/umeng/socom/util/c;->i:I

    iget-object v4, p0, Lcom/umeng/socom/util/c;->t:[B

    iget v5, p0, Lcom/umeng/socom/util/c;->y:I

    shl-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 340
    iget-object v1, p0, Lcom/umeng/socom/util/c;->t:[B

    sget-object v3, Lcom/umeng/socom/util/c;->p:[B

    if-ne v1, v3, :cond_3

    .line 341
    iget-object v1, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v3, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/umeng/socom/util/c;->i:I

    aput-byte v6, v1, v3

    .line 342
    iget-object v1, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v3, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/umeng/socom/util/c;->i:I

    aput-byte v6, v1, v3

    goto :goto_1

    .line 347
    :pswitch_1
    iget-object v1, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v3, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/umeng/socom/util/c;->i:I

    iget-object v4, p0, Lcom/umeng/socom/util/c;->t:[B

    iget v5, p0, Lcom/umeng/socom/util/c;->y:I

    shr-int/lit8 v5, v5, 0xa

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 348
    iget-object v1, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v3, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/umeng/socom/util/c;->i:I

    iget-object v4, p0, Lcom/umeng/socom/util/c;->t:[B

    iget v5, p0, Lcom/umeng/socom/util/c;->y:I

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 349
    iget-object v1, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v3, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/umeng/socom/util/c;->i:I

    iget-object v4, p0, Lcom/umeng/socom/util/c;->t:[B

    iget v5, p0, Lcom/umeng/socom/util/c;->y:I

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 351
    iget-object v1, p0, Lcom/umeng/socom/util/c;->t:[B

    sget-object v3, Lcom/umeng/socom/util/c;->p:[B

    if-ne v1, v3, :cond_3

    .line 352
    iget-object v1, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v3, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/umeng/socom/util/c;->i:I

    aput-byte v6, v1, v3

    goto/16 :goto_1

    :cond_4
    move v1, v2

    .line 363
    :goto_2
    if-ge v1, p3, :cond_0

    .line 364
    iget v0, p0, Lcom/umeng/socom/util/c;->x:I

    invoke-virtual {p0, v0}, Lcom/umeng/socom/util/c;->a(I)V

    .line 365
    iget v0, p0, Lcom/umeng/socom/util/c;->l:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/umeng/socom/util/c;->l:I

    .line 366
    add-int/lit8 v3, p2, 0x1

    aget-byte v0, p1, p2

    .line 367
    if-gez v0, :cond_5

    .line 368
    add-int/lit16 v0, v0, 0x100

    .line 370
    :cond_5
    iget v4, p0, Lcom/umeng/socom/util/c;->y:I

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    iput v0, p0, Lcom/umeng/socom/util/c;->y:I

    .line 371
    iget v0, p0, Lcom/umeng/socom/util/c;->l:I

    if-nez v0, :cond_6

    .line 372
    iget-object v0, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v4, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/umeng/socom/util/c;->i:I

    iget-object v5, p0, Lcom/umeng/socom/util/c;->t:[B

    iget v6, p0, Lcom/umeng/socom/util/c;->y:I

    shr-int/lit8 v6, v6, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 373
    iget-object v0, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v4, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/umeng/socom/util/c;->i:I

    iget-object v5, p0, Lcom/umeng/socom/util/c;->t:[B

    iget v6, p0, Lcom/umeng/socom/util/c;->y:I

    shr-int/lit8 v6, v6, 0xc

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 374
    iget-object v0, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v4, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/umeng/socom/util/c;->i:I

    iget-object v5, p0, Lcom/umeng/socom/util/c;->t:[B

    iget v6, p0, Lcom/umeng/socom/util/c;->y:I

    shr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 375
    iget-object v0, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v4, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/umeng/socom/util/c;->i:I

    iget-object v5, p0, Lcom/umeng/socom/util/c;->t:[B

    iget v6, p0, Lcom/umeng/socom/util/c;->y:I

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    .line 376
    iget v0, p0, Lcom/umeng/socom/util/c;->k:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/socom/util/c;->k:I

    .line 377
    iget v0, p0, Lcom/umeng/socom/util/c;->g:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/umeng/socom/util/c;->g:I

    iget v4, p0, Lcom/umeng/socom/util/c;->k:I

    if-gt v0, v4, :cond_6

    .line 378
    iget-object v0, p0, Lcom/umeng/socom/util/c;->v:[B

    iget-object v4, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v5, p0, Lcom/umeng/socom/util/c;->i:I

    iget-object v6, p0, Lcom/umeng/socom/util/c;->v:[B

    array-length v6, v6

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    iget v0, p0, Lcom/umeng/socom/util/c;->i:I

    iget-object v4, p0, Lcom/umeng/socom/util/c;->v:[B

    array-length v4, v4

    add-int/2addr v0, v4

    iput v0, p0, Lcom/umeng/socom/util/c;->i:I

    .line 380
    iput v2, p0, Lcom/umeng/socom/util/c;->k:I

    .line 363
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move p2, v3

    goto/16 :goto_2

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/umeng/socom/util/c;->t:[B

    sget-object v1, Lcom/umeng/socom/util/c;->q:[B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b([BII)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 412
    iget-boolean v0, p0, Lcom/umeng/socom/util/c;->j:Z

    if-eqz v0, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    if-gez p3, :cond_2

    .line 416
    iput-boolean v5, p0, Lcom/umeng/socom/util/c;->j:Z

    .line 418
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-lt v0, p3, :cond_3

    .line 444
    :goto_2
    iget-boolean v0, p0, Lcom/umeng/socom/util/c;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/umeng/socom/util/c;->l:I

    if-eqz v0, :cond_0

    .line 445
    iget v0, p0, Lcom/umeng/socom/util/c;->w:I

    invoke-virtual {p0, v0}, Lcom/umeng/socom/util/c;->a(I)V

    .line 449
    iget v0, p0, Lcom/umeng/socom/util/c;->l:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 453
    :pswitch_0
    iget v0, p0, Lcom/umeng/socom/util/c;->y:I

    shr-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/umeng/socom/util/c;->y:I

    .line 454
    iget-object v0, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v1, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/umeng/socom/util/c;->i:I

    iget v2, p0, Lcom/umeng/socom/util/c;->y:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0

    .line 419
    :cond_3
    iget v1, p0, Lcom/umeng/socom/util/c;->w:I

    invoke-virtual {p0, v1}, Lcom/umeng/socom/util/c;->a(I)V

    .line 420
    add-int/lit8 v1, p2, 0x1

    aget-byte v2, p1, p2

    .line 421
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_4

    .line 423
    iput-boolean v5, p0, Lcom/umeng/socom/util/c;->j:Z

    goto :goto_2

    .line 426
    :cond_4
    if-ltz v2, :cond_5

    sget-object v3, Lcom/umeng/socom/util/c;->r:[B

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 427
    sget-object v3, Lcom/umeng/socom/util/c;->r:[B

    aget-byte v2, v3, v2

    .line 428
    if-ltz v2, :cond_5

    .line 429
    iget v3, p0, Lcom/umeng/socom/util/c;->l:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/umeng/socom/util/c;->l:I

    .line 430
    iget v3, p0, Lcom/umeng/socom/util/c;->y:I

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    iput v2, p0, Lcom/umeng/socom/util/c;->y:I

    .line 431
    iget v2, p0, Lcom/umeng/socom/util/c;->l:I

    if-nez v2, :cond_5

    .line 432
    iget-object v2, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v3, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/umeng/socom/util/c;->i:I

    iget v4, p0, Lcom/umeng/socom/util/c;->y:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 433
    iget-object v2, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v3, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/umeng/socom/util/c;->i:I

    iget v4, p0, Lcom/umeng/socom/util/c;->y:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 434
    iget-object v2, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v3, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/umeng/socom/util/c;->i:I

    iget v4, p0, Lcom/umeng/socom/util/c;->y:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 418
    :cond_5
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto/16 :goto_1

    .line 457
    :pswitch_1
    iget v0, p0, Lcom/umeng/socom/util/c;->y:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/umeng/socom/util/c;->y:I

    .line 458
    iget-object v0, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v1, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/umeng/socom/util/c;->i:I

    iget v2, p0, Lcom/umeng/socom/util/c;->y:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 459
    iget-object v0, p0, Lcom/umeng/socom/util/c;->h:[B

    iget v1, p0, Lcom/umeng/socom/util/c;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/umeng/socom/util/c;->i:I

    iget v2, p0, Lcom/umeng/socom/util/c;->y:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b(B)Z
    .locals 2

    .prologue
    .line 743
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/socom/util/c;->u:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socom/util/c;->u:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
