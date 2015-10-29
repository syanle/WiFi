.class public Lcom/umeng/socialize/bean/UMFriend;
.super Ljava/lang/Object;
.source "UMFriend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/bean/UMFriend$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/umeng/socialize/bean/UMFriend$a;

.field private h:J

.field private i:Z

.field public mGroup:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/bean/UMFriend;->i:Z

    .line 13
    return-void
.end method


# virtual methods
.method public getFid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMFriend;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMFriend;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/umeng/socialize/bean/UMFriend;->a:I

    return v0
.end method

.method public getLastAtTime()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/umeng/socialize/bean/UMFriend;->h:J

    return-wide v0
.end method

.method public getLinkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMFriend;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMFriend;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Lcom/umeng/socialize/bean/UMFriend$a;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMFriend;->g:Lcom/umeng/socialize/bean/UMFriend$a;

    return-object v0
.end method

.method public getUsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMFriend;->f:Ljava/lang/String;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/umeng/socialize/bean/UMFriend;->i:Z

    return v0
.end method

.method public isEquals(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 141
    if-eqz p1, :cond_0

    iget-char v0, p0, Lcom/umeng/socialize/bean/UMFriend;->mGroup:C

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isUpdate(Lcom/umeng/socialize/bean/UMFriend;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 104
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getLastAtTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/umeng/socialize/bean/UMFriend;->h:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->isAlive()Z

    move-result v2

    invoke-virtual {p0}, Lcom/umeng/socialize/bean/UMFriend;->isAlive()Z

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 111
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/socialize/bean/UMFriend;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getIcon()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMFriend;->getIcon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/socialize/bean/UMFriend;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 117
    goto :goto_0
.end method

.method public setAlive(Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/umeng/socialize/bean/UMFriend;->i:Z

    .line 90
    return-void
.end method

.method public setFid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/umeng/socialize/bean/UMFriend;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/umeng/socialize/bean/UMFriend;->e:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/umeng/socialize/bean/UMFriend;->a:I

    .line 34
    return-void
.end method

.method public setLastAtTime(J)V
    .locals 0

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/umeng/socialize/bean/UMFriend;->h:J

    .line 82
    return-void
.end method

.method public setLinkName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/umeng/socialize/bean/UMFriend;->d:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/umeng/socialize/bean/UMFriend;->c:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPinyin(Lcom/umeng/socialize/bean/UMFriend$a;)V
    .locals 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/umeng/socialize/bean/UMFriend;->g:Lcom/umeng/socialize/bean/UMFriend$a;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p1, Lcom/umeng/socialize/bean/UMFriend$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/umeng/socialize/bean/UMFriend;->mGroup:C

    .line 101
    :cond_0
    return-void
.end method

.method public setUsid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/umeng/socialize/bean/UMFriend;->f:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public upGroup()C
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-char v0, p0, Lcom/umeng/socialize/bean/UMFriend;->mGroup:C

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/bean/UMFriend;->g:Lcom/umeng/socialize/bean/UMFriend$a;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMFriend;->g:Lcom/umeng/socialize/bean/UMFriend$a;

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMFriend$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/umeng/socialize/bean/UMFriend;->mGroup:C

    .line 129
    :cond_0
    iget-char v0, p0, Lcom/umeng/socialize/bean/UMFriend;->mGroup:C

    if-eqz v0, :cond_4

    .line 130
    iget-char v0, p0, Lcom/umeng/socialize/bean/UMFriend;->mGroup:C

    .line 131
    const/16 v1, 0x40

    if-ge v1, v0, :cond_1

    const/16 v1, 0x5b

    if-lt v0, v1, :cond_2

    :cond_1
    const/16 v1, 0x60

    if-ge v1, v0, :cond_3

    const/16 v1, 0x7b

    if-ge v0, v1, :cond_3

    .line 137
    :cond_2
    :goto_0
    return v0

    .line 133
    :cond_3
    const-string v1, "\u5e38"

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_2

    .line 137
    :cond_4
    const-string v0, "\u7b26"

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method
