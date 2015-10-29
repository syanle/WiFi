.class public Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
.super Ljava/lang/Object;
.source "DNSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/DNSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostAddress"
.end annotation


# instance fields
.field private host:Ljava/lang/String;

.field private port:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->host:Ljava/lang/String;

    .line 193
    iput p2, p0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->port:I

    .line 194
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/jivesoftware/smack/util/DNSUtil$HostAddress;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    if-ne p0, p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    instance-of v3, p1, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    if-nez v3, :cond_2

    move v1, v2

    .line 223
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 226
    check-cast v0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;

    .line 228
    .local v0, "address":Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;
    iget-object v3, p0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->host:Ljava/lang/String;

    iget-object v4, v0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 229
    goto :goto_0

    .line 231
    :cond_3
    iget v3, p0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->port:I

    iget v4, v0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->port:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jivesoftware/smack/util/DNSUtil$HostAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
