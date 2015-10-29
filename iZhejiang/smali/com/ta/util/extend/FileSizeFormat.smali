.class public Lcom/ta/util/extend/FileSizeFormat;
.super Ljava/lang/Object;
.source "FileSizeFormat.java"


# static fields
.field private static B_UNIT_NAME:Ljava/lang/String;

.field private static MB_UNIT_NAME:Ljava/lang/String;

.field private static kB_UNIT_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "KB"

    sput-object v0, Lcom/ta/util/extend/FileSizeFormat;->kB_UNIT_NAME:Ljava/lang/String;

    .line 23
    const-string v0, "B"

    sput-object v0, Lcom/ta/util/extend/FileSizeFormat;->B_UNIT_NAME:Ljava/lang/String;

    .line 24
    const-string v0, "MB"

    sput-object v0, Lcom/ta/util/extend/FileSizeFormat;->MB_UNIT_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKBSize(J)Ljava/lang/String;
    .locals 8
    .param p0, "dirSize"    # J

    .prologue
    .line 71
    const-wide/16 v2, 0x0

    .line 72
    .local v2, "size":D
    long-to-double v4, p0

    const-wide/16 v6, 0x0

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double v2, v4, v6

    .line 73
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "0.00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "filesize":Ljava/lang/String;
    return-object v1
.end method

.method public static getMbSize(J)Ljava/lang/String;
    .locals 8
    .param p0, "dirSize"    # J

    .prologue
    .line 56
    const-wide/16 v2, 0x0

    .line 57
    .local v2, "size":D
    long-to-double v4, p0

    const-wide/16 v6, 0x0

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double v2, v4, v6

    .line 58
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "0.00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "filesize":Ljava/lang/String;
    return-object v1
.end method

.method public static getSizeString(J)Ljava/lang/String;
    .locals 8
    .param p0, "size"    # J

    .prologue
    const-wide/16 v2, 0x400

    const-wide/16 v6, 0x64

    .line 28
    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ta/util/extend/FileSizeFormat;->B_UNIT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 33
    :cond_0
    div-long/2addr p0, v2

    .line 35
    cmp-long v0, p0, v2

    if-gez v0, :cond_1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ta/util/extend/FileSizeFormat;->kB_UNIT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 40
    :cond_1
    mul-long v0, p0, v6

    div-long p0, v0, v2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p0, v6

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 44
    rem-long v2, p0, v6

    const-wide/16 v4, 0xa

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const-string v0, "0"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-long v1, p0, v6

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/ta/util/extend/FileSizeFormat;->MB_UNIT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method
