.class public Lorg/xbill/DNS/ExtendedResolver;
.super Ljava/lang/Object;
.source "ExtendedResolver.java"

# interfaces
.implements Lorg/xbill/DNS/Resolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/ExtendedResolver$Resolution;
    }
.end annotation


# static fields
.field private static final quantum:I = 0x5


# instance fields
.field private lbStart:I

.field private loadBalance:Z

.field private resolvers:Ljava/util/List;

.field private retries:I


# direct methods
.method public constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-boolean v3, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    .line 238
    iput v3, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    .line 239
    const/4 v3, 0x3

    iput v3, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    .line 256
    invoke-direct {p0}, Lorg/xbill/DNS/ExtendedResolver;->init()V

    .line 257
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/ResolverConfig;->servers()[Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "servers":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 267
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 260
    .restart local v0    # "i":I
    :cond_0
    new-instance v1, Lorg/xbill/DNS/SimpleResolver;

    aget-object v3, v2, v0

    invoke-direct {v1, v3}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, "r":Lorg/xbill/DNS/Resolver;
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Lorg/xbill/DNS/Resolver;->setTimeout(I)V

    .line 262
    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "i":I
    .end local v1    # "r":Lorg/xbill/DNS/Resolver;
    :cond_1
    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    new-instance v4, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v4}, Lorg/xbill/DNS/SimpleResolver;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "servers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-boolean v2, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    .line 238
    iput v2, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    .line 239
    const/4 v2, 0x3

    iput v2, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    .line 278
    invoke-direct {p0}, Lorg/xbill/DNS/ExtendedResolver;->init()V

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 283
    return-void

    .line 280
    :cond_0
    new-instance v1, Lorg/xbill/DNS/SimpleResolver;

    aget-object v2, p1, v0

    invoke-direct {v1, v2}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, "r":Lorg/xbill/DNS/Resolver;
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lorg/xbill/DNS/Resolver;->setTimeout(I)V

    .line 282
    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([Lorg/xbill/DNS/Resolver;)V
    .locals 3
    .param p1, "res"    # [Lorg/xbill/DNS/Resolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-boolean v1, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    .line 238
    iput v1, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    .line 239
    const/4 v1, 0x3

    iput v1, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    .line 294
    invoke-direct {p0}, Lorg/xbill/DNS/ExtendedResolver;->init()V

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 296
    return-void

    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/xbill/DNS/ExtendedResolver;)Ljava/util/List;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lorg/xbill/DNS/ExtendedResolver;)Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    return v0
.end method

.method static synthetic access$2(Lorg/xbill/DNS/ExtendedResolver;)I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    return v0
.end method

.method static synthetic access$3(Lorg/xbill/DNS/ExtendedResolver;I)V
    .locals 0

    .prologue
    .line 238
    iput p1, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:I

    return-void
.end method

.method static synthetic access$4(Lorg/xbill/DNS/ExtendedResolver;)I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 244
    return-void
.end method


# virtual methods
.method public addResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 1
    .param p1, "r"    # Lorg/xbill/DNS/Resolver;

    .prologue
    .line 395
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    return-void
.end method

.method public deleteResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 1
    .param p1, "r"    # Lorg/xbill/DNS/Resolver;

    .prologue
    .line 401
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method

.method public getResolver(I)Lorg/xbill/DNS/Resolver;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 382
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Resolver;

    .line 383
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResolvers()[Lorg/xbill/DNS/Resolver;
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Resolver;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Resolver;

    return-object v0
.end method

.method public send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 2
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lorg/xbill/DNS/ExtendedResolver$Resolution;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;-><init>(Lorg/xbill/DNS/ExtendedResolver;Lorg/xbill/DNS/Message;)V

    .line 358
    .local v0, "res":Lorg/xbill/DNS/ExtendedResolver$Resolution;
    invoke-virtual {v0}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->start()Lorg/xbill/DNS/Message;

    move-result-object v1

    return-object v1
.end method

.method public sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;
    .locals 1
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .param p2, "listener"    # Lorg/xbill/DNS/ResolverListener;

    .prologue
    .line 373
    new-instance v0, Lorg/xbill/DNS/ExtendedResolver$Resolution;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;-><init>(Lorg/xbill/DNS/ExtendedResolver;Lorg/xbill/DNS/Message;)V

    .line 374
    .local v0, "res":Lorg/xbill/DNS/ExtendedResolver$Resolution;
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->startAsync(Lorg/xbill/DNS/ResolverListener;)V

    .line 375
    return-object v0
.end method

.method public setEDNS(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 321
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Resolver;

    invoke-interface {v1, p1}, Lorg/xbill/DNS/Resolver;->setEDNS(I)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setEDNS(IIILjava/util/List;)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "payloadSize"    # I
    .param p3, "flags"    # I
    .param p4, "options"    # Ljava/util/List;

    .prologue
    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 328
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Resolver;

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/xbill/DNS/Resolver;->setEDNS(IIILjava/util/List;)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setIgnoreTruncation(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 315
    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Resolver;

    invoke-interface {v1, p1}, Lorg/xbill/DNS/Resolver;->setIgnoreTruncation(Z)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setLoadBalance(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 410
    iput-boolean p1, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    .line 411
    return-void
.end method

.method public setPort(I)V
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 303
    return-void

    .line 302
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Resolver;

    invoke-interface {v1, p1}, Lorg/xbill/DNS/Resolver;->setPort(I)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setRetries(I)V
    .locals 0
    .param p1, "retries"    # I

    .prologue
    .line 416
    iput p1, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    .line 417
    return-void
.end method

.method public setTCP(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 309
    return-void

    .line 308
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Resolver;

    invoke-interface {v1, p1}, Lorg/xbill/DNS/Resolver;->setTCP(Z)V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTSIGKey(Lorg/xbill/DNS/TSIG;)V
    .locals 2
    .param p1, "key"    # Lorg/xbill/DNS/TSIG;

    .prologue
    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 334
    return-void

    .line 333
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Resolver;

    invoke-interface {v1, p1}, Lorg/xbill/DNS/Resolver;->setTSIGKey(Lorg/xbill/DNS/TSIG;)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "secs"    # I

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/ExtendedResolver;->setTimeout(II)V

    .line 345
    return-void
.end method

.method public setTimeout(II)V
    .locals 2
    .param p1, "secs"    # I
    .param p2, "msecs"    # I

    .prologue
    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 340
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Resolver;

    invoke-interface {v1, p1, p2}, Lorg/xbill/DNS/Resolver;->setTimeout(II)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
