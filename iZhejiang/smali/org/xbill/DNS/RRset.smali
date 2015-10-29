.class public Lorg/xbill/DNS/RRset;
.super Ljava/lang/Object;
.source "RRset.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2d62426723a14d0fL


# instance fields
.field private nsigs:S

.field private position:S

.field private rrs:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    .line 33
    iput-short v2, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    .line 34
    iput-short v2, p0, Lorg/xbill/DNS/RRset;->position:S

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/RRset;)V
    .locals 1
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    monitor-enter p1

    .line 48
    :try_start_0
    iget-object v0, p1, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    .line 49
    iget-short v0, p1, Lorg/xbill/DNS/RRset;->nsigs:S

    iput-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    .line 50
    iget-short v0, p1, Lorg/xbill/DNS/RRset;->position:S

    iput-short v0, p0, Lorg/xbill/DNS/RRset;->position:S

    .line 47
    monitor-exit p1

    .line 51
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Record;)V
    .locals 0
    .param p1, "record"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Lorg/xbill/DNS/RRset;->safeAddRR(Lorg/xbill/DNS/Record;)V

    .line 42
    return-void
.end method

.method private declared-synchronized iterator(ZZ)Ljava/util/Iterator;
    .locals 6
    .param p1, "data"    # Z
    .param p2, "cycle"    # Z

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 118
    .local v3, "total":I
    if-eqz p1, :cond_0

    .line 119
    iget-short v4, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    sub-int v1, v3, v4

    .line 122
    .local v1, "size":I
    :goto_0
    if-nez v1, :cond_1

    .line 123
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 146
    :goto_1
    monitor-exit p0

    return-object v4

    .line 121
    .end local v1    # "size":I
    :cond_0
    :try_start_1
    iget-short v1, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    .restart local v1    # "size":I
    goto :goto_0

    .line 125
    :cond_1
    if-eqz p1, :cond_5

    .line 126
    if-nez p2, :cond_3

    .line 127
    const/4 v2, 0x0

    .line 137
    .local v2, "start":I
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v0, "list":Ljava/util/List;
    if-eqz p1, :cond_6

    .line 139
    iget-object v4, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v4, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    if-eqz v2, :cond_2

    .line 141
    iget-object v4, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    :cond_2
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_1

    .line 129
    .end local v0    # "list":Ljava/util/List;
    .end local v2    # "start":I
    :cond_3
    iget-short v4, p0, Lorg/xbill/DNS/RRset;->position:S

    if-lt v4, v1, :cond_4

    .line 130
    const/4 v4, 0x0

    iput-short v4, p0, Lorg/xbill/DNS/RRset;->position:S

    .line 131
    :cond_4
    iget-short v2, p0, Lorg/xbill/DNS/RRset;->position:S

    add-int/lit8 v4, v2, 0x1

    int-to-short v4, v4

    iput-short v4, p0, Lorg/xbill/DNS/RRset;->position:S

    .line 133
    .restart local v2    # "start":I
    goto :goto_2

    .line 134
    .end local v2    # "start":I
    :cond_5
    iget-short v4, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    sub-int v2, v3, v4

    .restart local v2    # "start":I
    goto :goto_2

    .line 143
    .restart local v0    # "list":Ljava/util/List;
    :cond_6
    iget-object v4, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 116
    .end local v0    # "list":Ljava/util/List;
    .end local v1    # "size":I
    .end local v2    # "start":I
    .end local v3    # "total":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private iteratorToString(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 3
    .param p1, "it"    # Ljava/util/Iterator;

    .prologue
    .line 226
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 227
    .local v1, "sb":Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 228
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 229
    .local v0, "rr":Lorg/xbill/DNS/Record;
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->rdataToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private safeAddRR(Lorg/xbill/DNS/Record;)V
    .locals 3
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 56
    instance-of v0, p1, Lorg/xbill/DNS/RRSIGRecord;

    if-nez v0, :cond_1

    .line 57
    iget-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    iget-object v1, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-short v2, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    sub-int/2addr v1, v2

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addRR(Lorg/xbill/DNS/Record;)V
    .locals 7
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 71
    invoke-direct {p0, p1}, Lorg/xbill/DNS/RRset;->safeAddRR(Lorg/xbill/DNS/Record;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 75
    .local v0, "first":Lorg/xbill/DNS/Record;
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Record;->sameRRset(Lorg/xbill/DNS/Record;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 76
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "record does not match rrset"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .end local v0    # "first":Lorg/xbill/DNS/Record;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 79
    .restart local v0    # "first":Lorg/xbill/DNS/Record;
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 80
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v3

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 81
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object p1

    .line 82
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lorg/xbill/DNS/Record;->setTTL(J)V

    .line 93
    :cond_3
    iget-object v3, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-direct {p0, p1}, Lorg/xbill/DNS/RRset;->safeAddRR(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 84
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 85
    iget-object v3, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 86
    .local v2, "tmp":Lorg/xbill/DNS/Record;
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v2

    .line 87
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getTTL()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/xbill/DNS/Record;->setTTL(J)V

    .line 88
    iget-object v3, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/xbill/DNS/RRset;->position:S

    .line 109
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteRR(Lorg/xbill/DNS/Record;)V
    .locals 1
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/xbill/DNS/RRSIGRecord;

    if-eqz v0, :cond_0

    .line 101
    iget-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/xbill/DNS/RRset;->nsigs:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized first()Lorg/xbill/DNS/Record;
    .locals 2

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "rrset is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 221
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getDClass()I
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v0

    return v0
.end method

.method public getName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getTTL()J
    .locals 2

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getTTL()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    return v0
.end method

.method public declared-synchronized rrs()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 165
    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/RRset;->iterator(ZZ)Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized rrs(Z)Ljava/util/Iterator;
    .locals 1
    .param p1, "cycle"    # Z

    .prologue
    .line 156
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/RRset;->iterator(ZZ)Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sigs()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 171
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/RRset;->iterator(ZZ)Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 2

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-short v1, p0, Lorg/xbill/DNS/RRset;->nsigs:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 241
    iget-object v1, p0, Lorg/xbill/DNS/RRset;->rrs:Ljava/util/List;

    if-nez v1, :cond_0

    .line 242
    const-string v1, "{empty}"

    .line 255
    :goto_0
    return-object v1

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 244
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    const/4 v1, 0x1

    invoke-direct {p0, v1, v4}, Lorg/xbill/DNS/RRset;->iterator(ZZ)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/RRset;->iteratorToString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    iget-short v1, p0, Lorg/xbill/DNS/RRset;->nsigs:S

    if-lez v1, :cond_1

    .line 251
    const-string v1, " sigs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    invoke-direct {p0, v4, v4}, Lorg/xbill/DNS/RRset;->iterator(ZZ)Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/RRset;->iteratorToString(Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    :cond_1
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method
