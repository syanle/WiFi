.class public Lorg/xbill/DNS/Zone;
.super Ljava/lang/Object;
.source "Zone.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Zone$ZoneIterator;
    }
.end annotation


# static fields
.field public static final PRIMARY:I = 0x1

.field public static final SECONDARY:I = 0x2

.field private static final serialVersionUID:J = -0x7ff5d5cd9cf8a31eL


# instance fields
.field private NS:Lorg/xbill/DNS/RRset;

.field private SOA:Lorg/xbill/DNS/SOARecord;

.field private data:Ljava/util/Map;

.field private dclass:I

.field private hasWild:Z

.field private origin:Lorg/xbill/DNS/Name;

.field private originNode:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/xbill/DNS/Name;ILjava/lang/String;)V
    .locals 2
    .param p1, "zone"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "remote"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/Zone;->dclass:I

    .line 200
    const/4 v1, 0x0

    invoke-static {p1, p3, v1}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v0

    .line 201
    .local v0, "xfrin":Lorg/xbill/DNS/ZoneTransferIn;
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/ZoneTransferIn;->setDClass(I)V

    .line 202
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Zone;->fromXFR(Lorg/xbill/DNS/ZoneTransferIn;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;Ljava/lang/String;)V
    .locals 4
    .param p1, "zone"    # Lorg/xbill/DNS/Name;
    .param p2, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v2, 0x1

    iput v2, p0, Lorg/xbill/DNS/Zone;->dclass:I

    .line 135
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 137
    if-nez p1, :cond_0

    .line 138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no zone name specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Master;

    invoke-direct {v0, p2, p1}, Lorg/xbill/DNS/Master;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    .line 142
    .local v0, "m":Lorg/xbill/DNS/Master;
    iput-object p1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 143
    :goto_0
    invoke-virtual {v0}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object v1

    .local v1, "record":Lorg/xbill/DNS/Record;
    if-nez v1, :cond_1

    .line 145
    invoke-direct {p0}, Lorg/xbill/DNS/Zone;->validate()V

    .line 146
    return-void

    .line 144
    :cond_1
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Zone;->maybeAddRecord(Lorg/xbill/DNS/Record;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;[Lorg/xbill/DNS/Record;)V
    .locals 3
    .param p1, "zone"    # Lorg/xbill/DNS/Name;
    .param p2, "records"    # [Lorg/xbill/DNS/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/Zone;->dclass:I

    .line 156
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no zone name specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :cond_0
    iput-object p1, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_1

    .line 163
    invoke-direct {p0}, Lorg/xbill/DNS/Zone;->validate()V

    .line 164
    return-void

    .line 162
    :cond_1
    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lorg/xbill/DNS/Zone;->maybeAddRecord(Lorg/xbill/DNS/Record;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/xbill/DNS/ZoneTransferIn;)V
    .locals 1
    .param p1, "xfrin"    # Lorg/xbill/DNS/ZoneTransferIn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lorg/xbill/DNS/Zone;->dclass:I

    .line 189
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->fromXFR(Lorg/xbill/DNS/ZoneTransferIn;)V

    .line 190
    return-void
.end method

.method static synthetic access$0(Lorg/xbill/DNS/Zone;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lorg/xbill/DNS/Zone;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lorg/xbill/DNS/Zone;Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lorg/xbill/DNS/Zone;)Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method private declared-synchronized addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;)V
    .locals 7
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "rrset"    # Lorg/xbill/DNS/RRset;

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lorg/xbill/DNS/Zone;->hasWild:Z

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 275
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/xbill/DNS/Zone;->hasWild:Z

    .line 276
    :cond_0
    iget-object v6, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 277
    .local v5, "types":Ljava/lang/Object;
    if-nez v5, :cond_1

    .line 278
    iget-object v6, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v6, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    .line 282
    .local v3, "rtype":I
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_4

    .line 283
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 284
    .local v2, "list":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 291
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 274
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;
    .end local v3    # "rtype":I
    .end local v5    # "types":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 285
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;
    .restart local v3    # "rtype":I
    .restart local v5    # "types":Ljava/lang/Object;
    :cond_2
    :try_start_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/RRset;

    .line 286
    .local v4, "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v6

    if-ne v6, v3, :cond_3

    .line 287
    invoke-interface {v2, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 284
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;
    .end local v4    # "set":Lorg/xbill/DNS/RRset;
    :cond_4
    move-object v0, v5

    check-cast v0, Lorg/xbill/DNS/RRset;

    move-object v4, v0

    .line 294
    .restart local v4    # "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v6

    if-ne v6, v3, :cond_5

    .line 295
    iget-object v6, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v6, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 297
    :cond_5
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 298
    .local v2, "list":Ljava/util/LinkedList;
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v6, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;
    .locals 5
    .param p1, "types"    # Ljava/lang/Object;

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 237
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 238
    .local v2, "typelist":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lorg/xbill/DNS/RRset;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/xbill/DNS/RRset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .end local v2    # "typelist":Ljava/util/List;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 240
    :cond_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/RRset;

    move-object v1, v0

    .line 241
    .local v1, "set":Lorg/xbill/DNS/RRset;
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/xbill/DNS/RRset;

    const/4 v4, 0x0

    aput-object v1, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    .end local v1    # "set":Lorg/xbill/DNS/RRset;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
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

.method private declared-synchronized findRRset(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 267
    .local v0, "types":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 268
    const/4 v1, 0x0

    .line 269
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 266
    .end local v0    # "types":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private fromXFR(Lorg/xbill/DNS/ZoneTransferIn;)V
    .locals 5
    .param p1, "xfrin"    # Lorg/xbill/DNS/ZoneTransferIn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    iput-object v3, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    .line 170
    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferIn;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    iput-object v3, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 171
    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferIn;->run()Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, "records":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    invoke-virtual {p1}, Lorg/xbill/DNS/ZoneTransferIn;->isAXFR()Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "zones can only be created from AXFRs"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 174
    .local v1, "record":Lorg/xbill/DNS/Record;
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Zone;->maybeAddRecord(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 179
    .end local v1    # "record":Lorg/xbill/DNS/Record;
    :cond_1
    invoke-direct {p0}, Lorg/xbill/DNS/Zone;->validate()V

    .line 180
    return-void
.end method

.method private declared-synchronized lookup(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;
    .locals 13
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v12, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v12}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 341
    const/4 v12, 0x1

    invoke-static {v12}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 422
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v8

    .line 343
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    .line 344
    .local v3, "labels":I
    iget-object v12, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v12}, Lorg/xbill/DNS/Name;->labels()I

    move-result v5

    .line 346
    .local v5, "olabels":I
    move v9, v5

    .local v9, "tlabels":I
    :goto_1
    if-le v9, v3, :cond_3

    .line 405
    iget-boolean v12, p0, Lorg/xbill/DNS/Zone;->hasWild:Z

    if-eqz v12, :cond_2

    .line 406
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sub-int v12, v3, v5

    if-lt v0, v12, :cond_f

    .line 422
    .end local v0    # "i":I
    :cond_2
    const/4 v12, 0x1

    invoke-static {v12}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v8

    goto :goto_0

    .line 347
    :cond_3
    if-ne v9, v5, :cond_5

    const/4 v2, 0x1

    .line 348
    .local v2, "isOrigin":Z
    :goto_3
    if-ne v9, v3, :cond_6

    const/4 v1, 0x1

    .line 350
    .local v1, "isExact":Z
    :goto_4
    if-eqz v2, :cond_7

    .line 351
    iget-object v10, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    .line 357
    .local v10, "tname":Lorg/xbill/DNS/Name;
    :goto_5
    invoke-direct {p0, v10}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v11

    .line 358
    .local v11, "types":Ljava/lang/Object;
    if-nez v11, :cond_9

    .line 346
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 347
    .end local v1    # "isExact":Z
    .end local v2    # "isOrigin":Z
    .end local v10    # "tname":Lorg/xbill/DNS/Name;
    .end local v11    # "types":Ljava/lang/Object;
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 348
    .restart local v2    # "isOrigin":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .line 352
    .restart local v1    # "isExact":Z
    :cond_7
    if-eqz v1, :cond_8

    .line 353
    move-object v10, p1

    .restart local v10    # "tname":Lorg/xbill/DNS/Name;
    goto :goto_5

    .line 355
    .end local v10    # "tname":Lorg/xbill/DNS/Name;
    :cond_8
    new-instance v10, Lorg/xbill/DNS/Name;

    sub-int v12, v3, v9

    invoke-direct {v10, p1, v12}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .restart local v10    # "tname":Lorg/xbill/DNS/Name;
    goto :goto_5

    .line 362
    .restart local v11    # "types":Ljava/lang/Object;
    :cond_9
    if-nez v2, :cond_a

    .line 363
    const/4 v12, 0x2

    invoke-direct {p0, v11, v12}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v4

    .line 364
    .local v4, "ns":Lorg/xbill/DNS/RRset;
    if-eqz v4, :cond_a

    .line 365
    new-instance v8, Lorg/xbill/DNS/SetResponse;

    const/4 v12, 0x3

    invoke-direct {v8, v12, v4}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 340
    .end local v1    # "isExact":Z
    .end local v2    # "isOrigin":Z
    .end local v3    # "labels":I
    .end local v4    # "ns":Lorg/xbill/DNS/RRset;
    .end local v5    # "olabels":I
    .end local v9    # "tlabels":I
    .end local v10    # "tname":Lorg/xbill/DNS/Name;
    .end local v11    # "types":Ljava/lang/Object;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 370
    .restart local v1    # "isExact":Z
    .restart local v2    # "isOrigin":Z
    .restart local v3    # "labels":I
    .restart local v5    # "olabels":I
    .restart local v9    # "tlabels":I
    .restart local v10    # "tname":Lorg/xbill/DNS/Name;
    .restart local v11    # "types":Ljava/lang/Object;
    :cond_a
    if-eqz v1, :cond_b

    const/16 v12, 0xff

    if-ne p2, v12, :cond_b

    .line 371
    :try_start_2
    new-instance v8, Lorg/xbill/DNS/SetResponse;

    const/4 v12, 0x6

    invoke-direct {v8, v12}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 372
    .local v8, "sr":Lorg/xbill/DNS/SetResponse;
    invoke-direct {p0, v11}, Lorg/xbill/DNS/Zone;->allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v7

    .line 373
    .local v7, "sets":[Lorg/xbill/DNS/RRset;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    array-length v12, v7

    if-ge v0, v12, :cond_0

    .line 374
    aget-object v12, v7, v0

    invoke-virtual {v8, v12}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 382
    .end local v0    # "i":I
    .end local v7    # "sets":[Lorg/xbill/DNS/RRset;
    .end local v8    # "sr":Lorg/xbill/DNS/SetResponse;
    :cond_b
    if-eqz v1, :cond_d

    .line 383
    invoke-direct {p0, v11, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v6

    .line 384
    .local v6, "rrset":Lorg/xbill/DNS/RRset;
    if-eqz v6, :cond_c

    .line 385
    new-instance v8, Lorg/xbill/DNS/SetResponse;

    const/4 v12, 0x6

    invoke-direct {v8, v12}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 386
    .restart local v8    # "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v8, v6}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    goto/16 :goto_0

    .line 389
    .end local v8    # "sr":Lorg/xbill/DNS/SetResponse;
    :cond_c
    const/4 v12, 0x5

    invoke-direct {p0, v11, v12}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v6

    .line 390
    if-eqz v6, :cond_e

    .line 391
    new-instance v8, Lorg/xbill/DNS/SetResponse;

    const/4 v12, 0x4

    invoke-direct {v8, v12, v6}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    goto/16 :goto_0

    .line 394
    .end local v6    # "rrset":Lorg/xbill/DNS/RRset;
    :cond_d
    const/16 v12, 0x27

    invoke-direct {p0, v11, v12}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v6

    .line 395
    .restart local v6    # "rrset":Lorg/xbill/DNS/RRset;
    if-eqz v6, :cond_e

    .line 396
    new-instance v8, Lorg/xbill/DNS/SetResponse;

    const/4 v12, 0x5

    invoke-direct {v8, v12, v6}, Lorg/xbill/DNS/SetResponse;-><init>(ILorg/xbill/DNS/RRset;)V

    goto/16 :goto_0

    .line 401
    :cond_e
    if-eqz v1, :cond_4

    .line 402
    const/4 v12, 0x2

    invoke-static {v12}, Lorg/xbill/DNS/SetResponse;->ofType(I)Lorg/xbill/DNS/SetResponse;

    move-result-object v8

    goto/16 :goto_0

    .line 407
    .end local v1    # "isExact":Z
    .end local v2    # "isOrigin":Z
    .end local v6    # "rrset":Lorg/xbill/DNS/RRset;
    .end local v10    # "tname":Lorg/xbill/DNS/Name;
    .end local v11    # "types":Ljava/lang/Object;
    .restart local v0    # "i":I
    :cond_f
    add-int/lit8 v12, v0, 0x1

    invoke-virtual {p1, v12}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v10

    .line 409
    .restart local v10    # "tname":Lorg/xbill/DNS/Name;
    invoke-direct {p0, v10}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v11

    .line 410
    .restart local v11    # "types":Ljava/lang/Object;
    if-nez v11, :cond_11

    .line 406
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 413
    :cond_11
    invoke-direct {p0, v11, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v6

    .line 414
    .restart local v6    # "rrset":Lorg/xbill/DNS/RRset;
    if-eqz v6, :cond_10

    .line 415
    new-instance v8, Lorg/xbill/DNS/SetResponse;

    const/4 v12, 0x6

    invoke-direct {v8, v12}, Lorg/xbill/DNS/SetResponse;-><init>(I)V

    .line 416
    .restart local v8    # "sr":Lorg/xbill/DNS/SetResponse;
    invoke-virtual {v8, v6}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private final maybeAddRecord(Lorg/xbill/DNS/Record;)V
    .locals 5
    .param p1, "record"    # Lorg/xbill/DNS/Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    .line 116
    .local v1, "rtype":I
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 118
    .local v0, "name":Lorg/xbill/DNS/Name;
    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SOA owner "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    const-string v4, " does not match zone origin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 121
    iget-object v4, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_0
    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Zone;->addRecord(Lorg/xbill/DNS/Record;)V

    .line 125
    :cond_1
    return-void
.end method

.method private nodeToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "node"    # Ljava/lang/Object;

    .prologue
    .line 523
    invoke-direct {p0, p2}, Lorg/xbill/DNS/Zone;->allRRsets(Ljava/lang/Object;)[Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 524
    .local v3, "sets":[Lorg/xbill/DNS/RRset;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_0

    .line 533
    return-void

    .line 525
    :cond_0
    aget-object v2, v3, v0

    .line 526
    .local v2, "rrset":Lorg/xbill/DNS/RRset;
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v1

    .line 527
    .local v1, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 529
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/Iterator;

    move-result-object v1

    .line 530
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 531
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private declared-synchronized oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;
    .locals 6
    .param p1, "types"    # Ljava/lang/Object;
    .param p2, "type"    # I

    .prologue
    .line 247
    monitor-enter p0

    const/16 v4, 0xff

    if-ne p2, v4, :cond_0

    .line 248
    :try_start_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "oneRRset(ANY)"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 249
    :cond_0
    :try_start_1
    instance-of v4, p1, Ljava/util/List;

    if-eqz v4, :cond_4

    .line 250
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 251
    .local v2, "list":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-lt v1, v4, :cond_3

    .line 261
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;
    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_1
    monitor-exit p0

    return-object v3

    .line 252
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;
    :cond_3
    :try_start_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/RRset;

    .line 253
    .local v3, "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v4

    if-eq v4, p2, :cond_2

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;
    .end local v3    # "set":Lorg/xbill/DNS/RRset;
    :cond_4
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/RRset;

    move-object v3, v0

    .line 258
    .restart local v3    # "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getType()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-ne v4, p2, :cond_1

    goto :goto_1
.end method

.method private declared-synchronized removeRRset(Lorg/xbill/DNS/Name;I)V
    .locals 6
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 308
    .local v4, "types":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 328
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :cond_1
    :try_start_1
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_3

    .line 312
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 313
    .local v2, "list":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 314
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/RRset;

    .line 315
    .local v3, "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v5

    if-ne v5, p2, :cond_2

    .line 316
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 317
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 318
    iget-object v5, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;
    .end local v3    # "set":Lorg/xbill/DNS/RRset;
    .end local v4    # "types":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 313
    .restart local v1    # "i":I
    .restart local v2    # "list":Ljava/util/List;
    .restart local v3    # "set":Lorg/xbill/DNS/RRset;
    .restart local v4    # "types":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;
    .end local v3    # "set":Lorg/xbill/DNS/RRset;
    :cond_3
    :try_start_2
    move-object v0, v4

    check-cast v0, Lorg/xbill/DNS/RRset;

    move-object v3, v0

    .line 324
    .restart local v3    # "set":Lorg/xbill/DNS/RRset;
    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 326
    iget-object v5, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private validate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v2, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    .line 98
    iget-object v2, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 99
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": no data specified"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_0
    iget-object v2, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v1

    .line 102
    .local v1, "rrset":Lorg/xbill/DNS/RRset;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 103
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 104
    const-string v4, ": exactly 1 SOA must be specified"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_2
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    .local v0, "it":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/SOARecord;

    iput-object v2, p0, Lorg/xbill/DNS/Zone;->SOA:Lorg/xbill/DNS/SOARecord;

    .line 108
    iget-object v2, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/Zone;->NS:Lorg/xbill/DNS/RRset;

    .line 109
    iget-object v2, p0, Lorg/xbill/DNS/Zone;->NS:Lorg/xbill/DNS/RRset;

    if-nez v2, :cond_3

    .line 110
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": no NS set specified"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_3
    return-void
.end method


# virtual methods
.method public AXFR()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 518
    new-instance v0, Lorg/xbill/DNS/Zone$ZoneIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/xbill/DNS/Zone$ZoneIterator;-><init>(Lorg/xbill/DNS/Zone;Z)V

    return-object v0
.end method

.method public addRRset(Lorg/xbill/DNS/RRset;)V
    .locals 1
    .param p1, "rrset"    # Lorg/xbill/DNS/RRset;

    .prologue
    .line 459
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 460
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Zone;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;)V

    .line 461
    return-void
.end method

.method public addRecord(Lorg/xbill/DNS/Record;)V
    .locals 4
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 470
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 471
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v2

    .line 472
    .local v2, "rtype":I
    monitor-enter p0

    .line 473
    :try_start_0
    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/Zone;->findRRset(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;

    move-result-object v1

    .line 474
    .local v1, "rrset":Lorg/xbill/DNS/RRset;
    if-nez v1, :cond_0

    .line 475
    new-instance v1, Lorg/xbill/DNS/RRset;

    .end local v1    # "rrset":Lorg/xbill/DNS/RRset;
    invoke-direct {v1, p1}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 476
    .restart local v1    # "rrset":Lorg/xbill/DNS/RRset;
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Zone;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/RRset;)V

    .line 472
    :goto_0
    monitor-exit p0

    .line 481
    return-void

    .line 478
    :cond_0
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    .line 472
    .end local v1    # "rrset":Lorg/xbill/DNS/RRset;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public findExactMatch(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Zone;->exactName(Lorg/xbill/DNS/Name;)Ljava/lang/Object;

    move-result-object v0

    .line 447
    .local v0, "types":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 448
    const/4 v1, 0x0

    .line 449
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p2}, Lorg/xbill/DNS/Zone;->oneRRset(Ljava/lang/Object;I)Lorg/xbill/DNS/RRset;

    move-result-object v1

    goto :goto_0
.end method

.method public findRecords(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;
    .locals 1
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I

    .prologue
    .line 434
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Zone;->lookup(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDClass()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lorg/xbill/DNS/Zone;->dclass:I

    return v0
.end method

.method public getNS()Lorg/xbill/DNS/RRset;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->NS:Lorg/xbill/DNS/RRset;

    return-object v0
.end method

.method public getOrigin()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getSOA()Lorg/xbill/DNS/SOARecord;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/xbill/DNS/Zone;->SOA:Lorg/xbill/DNS/SOARecord;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 508
    new-instance v0, Lorg/xbill/DNS/Zone$ZoneIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/xbill/DNS/Zone$ZoneIterator;-><init>(Lorg/xbill/DNS/Zone;Z)V

    return-object v0
.end method

.method public removeRecord(Lorg/xbill/DNS/Record;)V
    .locals 5
    .param p1, "r"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 490
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 491
    .local v0, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v2

    .line 492
    .local v2, "rtype":I
    monitor-enter p0

    .line 493
    :try_start_0
    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/Zone;->findRRset(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;

    move-result-object v1

    .line 494
    .local v1, "rrset":Lorg/xbill/DNS/RRset;
    if-nez v1, :cond_0

    .line 495
    monitor-exit p0

    .line 501
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 497
    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/Zone;->removeRRset(Lorg/xbill/DNS/Name;I)V

    .line 492
    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v1    # "rrset":Lorg/xbill/DNS/RRset;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 499
    .restart local v1    # "rrset":Lorg/xbill/DNS/RRset;
    :cond_1
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/RRset;->deleteRR(Lorg/xbill/DNS/Record;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized toMasterFile()Ljava/lang/String;
    .locals 5

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/xbill/DNS/Zone;->data:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 541
    .local v2, "zentries":Ljava/util/Iterator;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 542
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/xbill/DNS/Zone;->originNode:Ljava/lang/Object;

    invoke-direct {p0, v1, v3}, Lorg/xbill/DNS/Zone;->nodeToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 543
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 548
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 544
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 545
    .local v0, "entry":Ljava/util/Map$Entry;
    iget-object v3, p0, Lorg/xbill/DNS/Zone;->origin:Lorg/xbill/DNS/Name;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 546
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/xbill/DNS/Zone;->nodeToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 540
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "zentries":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    invoke-virtual {p0}, Lorg/xbill/DNS/Zone;->toMasterFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
