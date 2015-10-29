.class public Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;
.super Ljava/lang/Object;
.source "JniPictureProcess.java"


# static fields
.field private static final BITMAPFILEHEADER_SIZE:I = 0xe

.field private static final BITMAPINFOHEADER_SIZE:I = 0x28


# instance fields
.field private bfOffBits:I

.field private bfReserved1:I

.field private bfReserved2:I

.field private bfSize:I

.field private bfType:[B

.field private biBitCount:I

.field private biClrImportant:I

.field private biClrUsed:I

.field private biCompression:I

.field private biHeight:I

.field private biPlanes:I

.field private biSize:I

.field private biSizeImage:I

.field private biWidth:I

.field private biXPelsPerMeter:I

.field private biYPelsPerMeter:I

.field private rp_Height:I

.field private rp_Width:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "n_Width"    # I
    .param p2, "n_Height"    # I

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->rp_Width:I

    .line 8
    iput v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->rp_Height:I

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfType:[B

    .line 13
    iput v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfSize:I

    .line 14
    iput v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfReserved1:I

    .line 15
    iput v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfReserved2:I

    .line 16
    const/16 v0, 0x36

    iput v0, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfOffBits:I

    .line 19
    const/16 v0, 0x28

    iput v0, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biSize:I

    .line 20
    iput v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biWidth:I

    .line 21
    iput v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biHeight:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biPlanes:I

    .line 23
    const/16 v0, 0x18

    iput v0, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biBitCount:I

    .line 24
    iput v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biCompression:I

    .line 25
    iput v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biSizeImage:I

    .line 26
    iput v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biXPelsPerMeter:I

    .line 27
    iput v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biYPelsPerMeter:I

    .line 28
    iput v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biClrUsed:I

    .line 29
    iput v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biClrImportant:I

    .line 33
    iput p1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->rp_Width:I

    .line 34
    neg-int v0, p2

    iput v0, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->rp_Height:I

    .line 35
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfSize:I

    .line 36
    iput p1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biWidth:I

    .line 37
    neg-int v0, p2

    iput v0, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biHeight:I

    .line 38
    return-void

    .line 10
    :array_0
    .array-data 1
        0x42t
        0x4dt
    .end array-data
.end method

.method private GetBitmapFileHeader()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 42
    const/16 v1, 0xe

    new-array v0, v1, [B

    .line 44
    .local v0, "bitmapFileHeader":[B
    const/16 v1, 0x42

    aput-byte v1, v0, v4

    .line 45
    const/4 v1, 0x1

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    .line 48
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfSize:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v1

    const/4 v2, 0x2

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfSize:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfReserved1:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToWord(I)[B

    move-result-object v1

    const/4 v2, 0x6

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfReserved1:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfReserved2:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToWord(I)[B

    move-result-object v1

    const/16 v2, 0x8

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfReserved2:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfOffBits:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v1

    const/16 v2, 0xa

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->bfOffBits:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-object v0
.end method

.method private GetBitmapInfoHeader()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    const/16 v1, 0x28

    new-array v0, v1, [B

    .line 67
    .local v0, "bitmapInfoHeader":[B
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biSize:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v1

    iget v2, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biSize:I

    invoke-direct {p0, v2}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biWidth:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v1

    const/4 v2, 0x4

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biWidth:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biHeight:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v1

    const/16 v2, 0x8

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biHeight:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biPlanes:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToWord(I)[B

    move-result-object v1

    const/16 v2, 0xc

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biPlanes:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biBitCount:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToWord(I)[B

    move-result-object v1

    const/16 v2, 0xe

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biBitCount:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biCompression:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v1

    const/16 v2, 0x10

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biCompression:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biSizeImage:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v1

    const/16 v2, 0x14

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biSizeImage:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biXPelsPerMeter:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v1

    const/16 v2, 0x18

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biXPelsPerMeter:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biYPelsPerMeter:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v1

    const/16 v2, 0x1c

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biYPelsPerMeter:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biClrUsed:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v1

    const/16 v2, 0x20

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biClrUsed:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget v1, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biClrImportant:I

    invoke-direct {p0, v1}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v1

    const/16 v2, 0x24

    iget v3, p0, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->biClrImportant:I

    invoke-direct {p0, v3}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->intToDWord(I)[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object v0
.end method

.method private intToDWord(I)[B
    .locals 3
    .param p1, "parValue"    # I

    .prologue
    .line 124
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 126
    .local v0, "retValue":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 127
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 128
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 129
    const/4 v1, 0x3

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 131
    return-object v0
.end method

.method private intToWord(I)[B
    .locals 3
    .param p1, "parValue"    # I

    .prologue
    .line 113
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 115
    .local v0, "retValue":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 116
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    return-object v0
.end method


# virtual methods
.method public AddBitmapHeader()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 104
    const/16 v2, 0x36

    new-array v1, v2, [B

    .line 105
    .local v1, "rp_bitmapHeader":[B
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->GetBitmapFileHeader()[B

    move-result-object v2

    array-length v0, v2

    .line 106
    .local v0, "nlen":I
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->GetBitmapFileHeader()[B

    move-result-object v2

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->GetBitmapInfoHeader()[B

    move-result-object v2

    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/util/JniPictureProcess;->GetBitmapInfoHeader()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    return-object v1
.end method
