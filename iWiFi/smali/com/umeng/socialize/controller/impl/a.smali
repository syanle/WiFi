.class public Lcom/umeng/socialize/controller/impl/a;
.super Ljava/lang/Object;
.source "BaseController.java"


# static fields
.field private static b:I = 0x0

.field private static final c:Ljava/lang/String; = "installed"

.field private static final d:Ljava/lang/String; = "umsocial_uid"


# instance fields
.field protected a:Lcom/umeng/socialize/bean/SocializeEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, -0x1

    sput v0, Lcom/umeng/socialize/controller/impl/a;->b:I

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 85
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/LIKESTATUS;)I
    .locals 3

    .prologue
    .line 204
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 205
    new-instance v1, Lcom/umeng/socialize/net/h;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2}, Lcom/umeng/socialize/net/h;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/LIKESTATUS;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_1

    .line 208
    iget v1, v0, Lcom/umeng/socialize/net/a/e;->n:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 209
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->changeILike()V

    .line 211
    :cond_0
    iget v0, v0, Lcom/umeng/socialize/net/a/e;->n:I

    .line 213
    :goto_0
    return v0

    :cond_1
    const/16 v0, -0x66

    goto :goto_0
.end method

.method private a(Lcom/umeng/socialize/bean/UMToken;)Z
    .locals 2

    .prologue
    .line 531
    if-eqz p1, :cond_2

    .line 532
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMToken;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 533
    iget-object v0, p1, Lcom/umeng/socialize/bean/UMToken;->mPaltform:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 534
    iget-object v0, p1, Lcom/umeng/socialize/bean/UMToken;->mUsid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 535
    iget-object v0, p1, Lcom/umeng/socialize/bean/UMToken;->mPaltform:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p1, Lcom/umeng/socialize/bean/UMToken;->mPaltform:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 537
    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 537
    if-eqz v0, :cond_1

    .line 538
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/UMToken;->getOpenId()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 538
    if-nez v0, :cond_2

    .line 531
    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 93
    sget v0, Lcom/umeng/socialize/controller/impl/a;->b:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 95
    const-string v0, "umeng_socialize"

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 97
    monitor-enter v3

    .line 98
    :try_start_0
    const-string v0, "installed"

    const/4 v4, 0x1

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/umeng/socialize/controller/impl/a;->b:I

    .line 97
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    sget-object v0, Lcom/umeng/socialize/common/SocializeConstants;->UID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const-string v0, "umeng_socialize"

    .line 103
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    const-string v3, "umsocial_uid"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/common/SocializeConstants;->UID:Ljava/lang/String;

    .line 108
    const-string v0, "com.umeng.socialize"

    const-string v3, "set  field UID from preference."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    new-instance v3, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v3}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 112
    new-instance v4, Lcom/umeng/socialize/net/a;

    iget-object v5, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 113
    sget v0, Lcom/umeng/socialize/controller/impl/a;->b:I

    if-nez v0, :cond_6

    move v0, v1

    .line 112
    :goto_0
    invoke-direct {v4, p1, v5, v0}, Lcom/umeng/socialize/net/a;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;I)V

    invoke-virtual {v3, v4}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 111
    check-cast v0, Lcom/umeng/socialize/net/b;

    .line 115
    if-eqz v0, :cond_9

    .line 116
    sget v3, Lcom/umeng/socialize/controller/impl/a;->b:I

    if-ne v3, v2, :cond_2

    .line 118
    const-string v3, "umeng_socialize"

    .line 117
    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 120
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 121
    monitor-enter v3

    .line 122
    :try_start_1
    const-string v4, "installed"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    const/4 v4, 0x0

    sput v4, Lcom/umeng/socialize/controller/impl/a;->b:I

    .line 121
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    :cond_2
    iget v3, v0, Lcom/umeng/socialize/net/b;->n:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_5

    .line 129
    sget-object v3, Lcom/umeng/socialize/common/SocializeConstants;->UID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 130
    sget-object v3, Lcom/umeng/socialize/common/SocializeConstants;->UID:Ljava/lang/String;

    iget-object v4, v0, Lcom/umeng/socialize/net/b;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 131
    :cond_3
    const-string v3, "com.umeng.socialize"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "update UID src="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    sget-object v5, Lcom/umeng/socialize/common/SocializeConstants;->UID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/umeng/socialize/net/b;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v3, v0, Lcom/umeng/socialize/net/b;->h:Ljava/lang/String;

    sput-object v3, Lcom/umeng/socialize/common/SocializeConstants;->UID:Ljava/lang/String;

    .line 135
    const-string v3, "umeng_socialize"

    .line 134
    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 137
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 138
    monitor-enter v3

    .line 139
    :try_start_2
    const-string v4, "umsocial_uid"

    sget-object v5, Lcom/umeng/socialize/common/SocializeConstants;->UID:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 145
    :cond_4
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    monitor-enter v3

    .line 146
    :try_start_3
    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget v5, v0, Lcom/umeng/socialize/net/b;->b:I

    invoke-virtual {v4, v5}, Lcom/umeng/socialize/bean/SocializeEntity;->setCommentCount(I)V

    .line 147
    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v5, v0, Lcom/umeng/socialize/net/b;->e:Ljava/lang/String;

    iput-object v5, v4, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    .line 148
    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v5, v0, Lcom/umeng/socialize/net/b;->d:Ljava/lang/String;

    iput-object v5, v4, Lcom/umeng/socialize/bean/SocializeEntity;->mSessionID:Ljava/lang/String;

    .line 151
    iget v4, v0, Lcom/umeng/socialize/net/b;->f:I

    if-nez v4, :cond_7

    .line 152
    :goto_1
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->setNew(Z)V

    .line 153
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget v1, v0, Lcom/umeng/socialize/net/b;->g:I

    if-nez v1, :cond_8

    sget-object v1, Lcom/umeng/socialize/bean/LIKESTATUS;->UNLIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    :goto_2
    invoke-virtual {v2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setIlikey(Lcom/umeng/socialize/bean/LIKESTATUS;)V

    .line 155
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget v2, v0, Lcom/umeng/socialize/net/b;->c:I

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->setLikeCount(I)V

    .line 156
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget v2, v0, Lcom/umeng/socialize/net/b;->a:I

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->setPv(I)V

    .line 158
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    iget v2, v0, Lcom/umeng/socialize/net/b;->j:I

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareCount(I)V

    .line 160
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/umeng/socialize/bean/SocializeEntity;->mInitialized:Z

    .line 145
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 163
    :cond_5
    iget v0, v0, Lcom/umeng/socialize/net/b;->n:I

    .line 165
    :goto_3
    return v0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_6
    move v0, v2

    .line 113
    goto/16 :goto_0

    .line 121
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 138
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_7
    move v2, v1

    .line 151
    goto :goto_1

    .line 154
    :cond_8
    :try_start_7
    sget-object v1, Lcom/umeng/socialize/bean/LIKESTATUS;->LIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    goto :goto_2

    .line 145
    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 165
    :cond_9
    const/16 v0, -0x67

    goto :goto_3
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)I
    .locals 3

    .prologue
    .line 343
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 344
    new-instance v1, Lcom/umeng/socialize/net/i;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2}, Lcom/umeng/socialize/net/i;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    iget v0, v0, Lcom/umeng/socialize/net/a/e;->n:I

    .line 349
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x66

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/SnsAccount;)I
    .locals 3

    .prologue
    .line 434
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 435
    new-instance v1, Lcom/umeng/socialize/net/ac;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2}, Lcom/umeng/socialize/net/ac;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SnsAccount;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 437
    if-nez v0, :cond_0

    .line 438
    const/16 v0, -0x67

    .line 440
    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/umeng/socialize/net/a/e;->n:I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/UMComment;[Lcom/umeng/socialize/bean/SNSPair;)I
    .locals 3

    .prologue
    .line 381
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 382
    new-instance v1, Lcom/umeng/socialize/net/c;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/umeng/socialize/net/c;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/UMComment;[Lcom/umeng/socialize/bean/SNSPair;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    .line 386
    iget v0, v0, Lcom/umeng/socialize/net/a/e;->n:I

    .line 388
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x67

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)I
    .locals 3

    .prologue
    .line 504
    invoke-direct {p0, p2}, Lcom/umeng/socialize/controller/impl/a;->a(Lcom/umeng/socialize/bean/UMToken;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 506
    new-instance v1, Lcom/umeng/socialize/net/k;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2}, Lcom/umeng/socialize/net/k;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/UMToken;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_0

    .line 509
    iget v0, v0, Lcom/umeng/socialize/net/a/e;->n:I

    .line 514
    :goto_0
    return v0

    .line 511
    :cond_0
    const/16 v0, -0x66

    goto :goto_0

    .line 514
    :cond_1
    const/16 v0, -0x69

    goto :goto_0
.end method

.method public varargs a(Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;[Ljava/lang/String;)Lcom/umeng/socialize/bean/MultiStatus;
    .locals 3

    .prologue
    .line 445
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/umeng/socialize/bean/SNSPair;->mUsid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p2, Lcom/umeng/socialize/bean/SNSPair;->mPaltform:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    .line 447
    :cond_0
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x69

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 460
    :goto_0
    return-object v0

    .line 450
    :cond_1
    new-instance v0, Lcom/umeng/socialize/net/r;

    .line 451
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 450
    invoke-direct {v0, p1, v1, p2, p3}, Lcom/umeng/socialize/net/r;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SNSPair;[Ljava/lang/String;)V

    .line 452
    new-instance v1, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v1}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 453
    invoke-virtual {v1, v0}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 452
    check-cast v0, Lcom/umeng/socialize/net/s;

    .line 455
    if-nez v0, :cond_2

    .line 456
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x67

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 458
    :cond_2
    new-instance v1, Lcom/umeng/socialize/bean/MultiStatus;

    iget v2, v0, Lcom/umeng/socialize/net/s;->n:I

    invoke-direct {v1, v2}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 459
    iget-object v0, v0, Lcom/umeng/socialize/net/s;->a:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/bean/MultiStatus;->setInfoCode(Ljava/util/Map;)V

    move-object v0, v1

    .line 460
    goto :goto_0
.end method

.method public a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v7, -0x67

    .line 400
    if-nez p3, :cond_0

    .line 401
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x66

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 428
    :goto_0
    return-object v0

    .line 403
    :cond_0
    iget-object v0, p3, Lcom/umeng/socialize/bean/UMShareMsg;->mWeiBoId:Ljava/lang/String;

    .line 405
    if-eqz p2, :cond_1

    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 406
    :cond_1
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    const/16 v1, -0x69

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 409
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 410
    new-instance v6, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v6}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 411
    new-instance v0, Lcom/umeng/socialize/net/v;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 412
    aget-object v1, p2, v4

    iget-object v3, v1, Lcom/umeng/socialize/bean/SNSPair;->mPaltform:Ljava/lang/String;

    aget-object v1, p2, v4

    iget-object v4, v1, Lcom/umeng/socialize/bean/SNSPair;->mUsid:Ljava/lang/String;

    move-object v1, p1

    move-object v5, p3

    .line 411
    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/net/v;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/bean/UMShareMsg;)V

    invoke-virtual {v6, v0}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v1

    .line 414
    if-nez v1, :cond_3

    .line 415
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v0, v7}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 417
    :cond_3
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    iget v1, v1, Lcom/umeng/socialize/net/a/e;->n:I

    invoke-direct {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 420
    :cond_4
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 421
    new-instance v1, Lcom/umeng/socialize/net/t;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/umeng/socialize/net/t;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 420
    check-cast v0, Lcom/umeng/socialize/net/u;

    .line 423
    if-nez v0, :cond_5

    .line 424
    new-instance v0, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-direct {v0, v7}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    goto :goto_0

    .line 426
    :cond_5
    new-instance v1, Lcom/umeng/socialize/bean/MultiStatus;

    iget v2, v0, Lcom/umeng/socialize/net/u;->n:I

    invoke-direct {v1, v2}, Lcom/umeng/socialize/bean/MultiStatus;-><init>(I)V

    .line 427
    iget-object v0, v0, Lcom/umeng/socialize/net/u;->a:Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/bean/MultiStatus;->setPlatformCode(Ljava/util/Map;)V

    move-object v0, v1

    .line 428
    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;)Lcom/umeng/socialize/net/ab;
    .locals 3

    .prologue
    .line 477
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 478
    new-instance v1, Lcom/umeng/socialize/net/aa;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2}, Lcom/umeng/socialize/net/aa;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SNSPair;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 477
    check-cast v0, Lcom/umeng/socialize/net/ab;

    .line 480
    return-object v0
.end method

.method public a(Landroid/content/Context;J)Lcom/umeng/socialize/net/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 260
    new-instance v1, Lcom/umeng/socialize/net/d;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/umeng/socialize/net/d;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;J)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 259
    check-cast v0, Lcom/umeng/socialize/net/e;

    .line 262
    if-nez v0, :cond_0

    .line 263
    new-instance v0, Lcom/umeng/socialize/exception/SocializeException;

    const/16 v1, -0x67

    .line 264
    const-string v2, "Response is null..."

    .line 263
    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iget v1, v0, Lcom/umeng/socialize/net/e;->n:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 268
    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    iget v2, v0, Lcom/umeng/socialize/net/e;->n:I

    iget-object v0, v0, Lcom/umeng/socialize/net/e;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/umeng/socialize/exception/SocializeException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 270
    :cond_1
    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lcom/umeng/socialize/net/q;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 298
    new-instance v1, Lcom/umeng/socialize/net/p;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/umeng/socialize/net/p;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 297
    check-cast v0, Lcom/umeng/socialize/net/q;

    .line 301
    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/umeng/socialize/exception/SocializeException;

    const/16 v1, -0x67

    .line 303
    const-string v2, "Response is null..."

    .line 302
    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    iget v1, v0, Lcom/umeng/socialize/net/q;->n:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 307
    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    iget v2, v0, Lcom/umeng/socialize/net/q;->n:I

    iget-object v0, v0, Lcom/umeng/socialize/net/q;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/umeng/socialize/exception/SocializeException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 310
    :cond_1
    iget-object v1, v0, Lcom/umeng/socialize/net/q;->a:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 311
    iget-object v1, v0, Lcom/umeng/socialize/net/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 315
    :cond_2
    return-object v0

    .line 311
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/socialize/bean/UMFriend;

    .line 312
    invoke-virtual {v1, p3}, Lcom/umeng/socialize/bean/UMFriend;->setUsid(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 550
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 551
    new-instance v1, Lcom/umeng/socialize/net/y;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/umeng/socialize/net/y;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 550
    check-cast v0, Lcom/umeng/socialize/net/z;

    .line 553
    if-eqz v0, :cond_0

    .line 554
    iget-object v0, v0, Lcom/umeng/socialize/net/z;->a:Ljava/lang/String;

    .line 556
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getLikeStatus()Lcom/umeng/socialize/bean/LIKESTATUS;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/LIKESTATUS;->LIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/umeng/socialize/bean/LIKESTATUS;->UNLIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    .line 186
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/LIKESTATUS;)I

    move-result v0

    return v0

    .line 184
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/LIKESTATUS;->LIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)I
    .locals 3

    .prologue
    .line 466
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 467
    new-instance v1, Lcom/umeng/socialize/net/o;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2, p2}, Lcom/umeng/socialize/net/o;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_0

    .line 470
    iget v0, v0, Lcom/umeng/socialize/net/a/e;->n:I

    .line 472
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x66

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/umeng/socialize/bean/LIKESTATUS;->LIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/LIKESTATUS;)I

    move-result v0

    return v0
.end method

.method public d(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 248
    sget-object v0, Lcom/umeng/socialize/bean/LIKESTATUS;->UNLIKE:Lcom/umeng/socialize/bean/LIKESTATUS;

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/controller/impl/a;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/LIKESTATUS;)I

    move-result v0

    return v0
.end method

.method public e(Landroid/content/Context;)Lcom/umeng/socialize/net/m;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 328
    new-instance v1, Lcom/umeng/socialize/net/l;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2}, Lcom/umeng/socialize/net/l;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 327
    check-cast v0, Lcom/umeng/socialize/net/m;

    .line 330
    if-nez v0, :cond_0

    .line 331
    new-instance v0, Lcom/umeng/socialize/exception/SocializeException;

    const/16 v1, -0x67

    .line 332
    const-string v2, "Response is null..."

    .line 331
    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    iget v1, v0, Lcom/umeng/socialize/net/m;->n:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 336
    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    iget v2, v0, Lcom/umeng/socialize/net/m;->n:I

    iget-object v0, v0, Lcom/umeng/socialize/net/m;->m:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/umeng/socialize/exception/SocializeException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 338
    :cond_1
    return-object v0
.end method

.method public f(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 354
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 355
    new-instance v1, Lcom/umeng/socialize/net/j;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2}, Lcom/umeng/socialize/net/j;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_0

    .line 358
    iget v0, v0, Lcom/umeng/socialize/net/a/e;->n:I

    .line 360
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x67

    goto :goto_0
.end method

.method public g(Landroid/content/Context;)Lcom/umeng/socialize/net/g;
    .locals 3

    .prologue
    .line 484
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 485
    new-instance v1, Lcom/umeng/socialize/net/f;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2}, Lcom/umeng/socialize/net/f;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 484
    check-cast v0, Lcom/umeng/socialize/net/g;

    .line 486
    return-object v0
.end method

.method public getEntity()Lcom/umeng/socialize/bean/SocializeEntity;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    return-object v0
.end method

.method public h(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 566
    new-instance v0, Lcom/umeng/socialize/net/a/a;

    invoke-direct {v0}, Lcom/umeng/socialize/net/a/a;-><init>()V

    .line 567
    new-instance v1, Lcom/umeng/socialize/net/w;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/a;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-direct {v1, p1, v2}, Lcom/umeng/socialize/net/w;-><init>(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeEntity;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/net/a/a;->a(Lcom/umeng/socialize/net/a/b;)Lcom/umeng/socialize/net/a/e;

    move-result-object v0

    .line 566
    check-cast v0, Lcom/umeng/socialize/net/x;

    .line 568
    if-eqz v0, :cond_0

    .line 569
    iget v0, v0, Lcom/umeng/socialize/net/x;->n:I

    .line 571
    :goto_0
    return v0

    :cond_0
    const/16 v0, -0x66

    goto :goto_0
.end method
