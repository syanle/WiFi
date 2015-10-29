.class public Lcom/umeng/socialize/controller/impl/b;
.super Lcom/umeng/socialize/controller/impl/a;
.source "InitializeController.java"


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/impl/a;-><init>(Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 34
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x68

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/SnsAccount;)I
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SnsAccount;)I

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x68

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/UMComment;[Lcom/umeng/socialize/bean/SNSPair;)I
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/UMComment;[Lcom/umeng/socialize/bean/SNSPair;)I

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x68

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)I
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)I

    move-result v0

    .line 210
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x68

    goto :goto_0
.end method

.method public varargs a(Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;[Ljava/lang/String;)Lcom/umeng/socialize/bean/MultiStatus;
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;[Ljava/lang/String;)Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    .line 134
    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x66

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 140
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x68

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    .line 121
    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x66

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 127
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x68

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;)Lcom/umeng/socialize/net/ab;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;)Lcom/umeng/socialize/net/ab;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;J)Lcom/umeng/socialize/net/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-super {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;J)Lcom/umeng/socialize/net/e;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lcom/umeng/socialize/net/q;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lcom/umeng/socialize/net/q;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/a;->b(Landroid/content/Context;)I

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x68

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)I
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/controller/impl/a;->b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)I

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x68

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/a;->c(Landroid/content/Context;)I

    move-result v0

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/a;->c(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public d(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/a;->d(Landroid/content/Context;)I

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/a;->d(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public e(Landroid/content/Context;)Lcom/umeng/socialize/net/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/a;->e(Landroid/content/Context;)Lcom/umeng/socialize/net/m;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/a;->f(Landroid/content/Context;)I

    move-result v0

    .line 94
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x68

    goto :goto_0
.end method

.method public g(Landroid/content/Context;)Lcom/umeng/socialize/net/g;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/a;->g(Landroid/content/Context;)Lcom/umeng/socialize/net/g;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntity()Lcom/umeng/socialize/bean/SocializeEntity;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/a;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/a;->h(Landroid/content/Context;)I

    move-result v0

    .line 237
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x66

    goto :goto_0
.end method

.method public i(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-boolean v0, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mInitialized:Z

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;)I

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/b;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-boolean v0, v0, Lcom/umeng/socialize/bean/SocializeEntity;->mInitialized:Z

    if-nez v0, :cond_1

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
