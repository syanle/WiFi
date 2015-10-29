.class public Lcom/umeng/socialize/bean/CallbackConfig;
.super Ljava/lang/Object;
.source "CallbackConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;
    }
.end annotation


# static fields
.field public static final CALLBACK_LISTENER_FLAG_SDK:I = 0x1

.field public static final CALLBACK_LISTENER_FLAG_SINGEL:I = 0x10

.field protected static a:Z = false

.field private static final b:I = 0xa

.field private static final c:I = 0x0

.field private static final d:I = 0xf

.field private static final e:I = 0xf0

.field private static final f:I = 0x100

.field private static final g:I = 0x200

.field private static final h:I = 0x300

.field private static final i:I = 0x400

.field private static final j:I = 0xf00

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/socialize/bean/CallbackConfig;->a:Z

    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/bean/CallbackConfig;->k:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/bean/CallbackConfig;->l:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 246
    .line 247
    instance-of v0, p1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 248
    const/16 v0, 0x200

    .line 258
    :goto_0
    return v0

    .line 249
    :cond_0
    instance-of v0, p1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v0, :cond_1

    .line 250
    const/16 v0, 0x300

    .line 251
    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    if-eqz v0, :cond_2

    .line 252
    const/16 v0, 0x100

    .line 253
    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_3

    .line 254
    const/16 v0, 0x400

    .line 255
    goto :goto_0

    .line 256
    :cond_3
    new-instance v0, Lcom/umeng/socialize/exception/SocializeException;

    const-string v1, "unknow params"

    invoke-direct {v0, v1}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized a(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 200
    monitor-enter p0

    .line 202
    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 203
    :try_start_0
    sget-object v0, Lcom/umeng/socialize/bean/CallbackConfig;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 214
    sget-object v0, Lcom/umeng/socialize/bean/CallbackConfig;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    move v0, v2

    .line 227
    :goto_0
    monitor-exit p0

    return v0

    .line 203
    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;

    .line 204
    sget-object v1, Lcom/umeng/socialize/bean/CallbackConfig;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 205
    if-eqz v1, :cond_0

    .line 206
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/umeng/socialize/bean/CallbackConfig;->a(II)Z

    move-result v1

    .line 207
    if-eqz v1, :cond_4

    .line 208
    sget-object v2, Lcom/umeng/socialize/bean/CallbackConfig;->k:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move v0, v1

    .line 210
    goto :goto_0

    .line 214
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;

    .line 215
    sget-object v1, Lcom/umeng/socialize/bean/CallbackConfig;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 216
    if-eqz v1, :cond_1

    .line 217
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/umeng/socialize/bean/CallbackConfig;->a(II)Z

    move-result v1

    .line 218
    if-eqz v1, :cond_6

    .line 219
    sget-object v2, Lcom/umeng/socialize/bean/CallbackConfig;->l:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    move v0, v1

    .line 221
    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    and-int/lit8 v2, p1, 0xf

    and-int/lit8 v3, p2, 0xf

    if-ne v2, v3, :cond_0

    move v2, v0

    .line 232
    :goto_0
    if-eqz v2, :cond_1

    and-int/lit16 v2, p2, 0xf0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 236
    and-int/lit16 v2, p2, 0xf00

    and-int/lit16 v3, p1, 0xf00

    if-ne v2, v3, :cond_1

    .line 242
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 231
    goto :goto_0

    :cond_1
    move v0, v1

    .line 242
    goto :goto_1
.end method

.method private a(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 155
    .line 156
    instance-of v0, p1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 157
    const-class v0, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 168
    :goto_0
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/bean/CallbackConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    .line 169
    const/16 v1, 0x9

    if-ge v1, v0, :cond_4

    .line 170
    const/4 v0, 0x1

    .line 173
    :goto_1
    return v0

    .line 158
    :cond_0
    instance-of v0, p1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v0, :cond_1

    .line 159
    const-class v0, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    goto :goto_0

    .line 160
    :cond_1
    instance-of v0, p1, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    if-eqz v0, :cond_2

    .line 161
    const-class v0, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    goto :goto_0

    .line 162
    :cond_2
    instance-of v0, p1, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_3

    .line 163
    const-class v0, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    goto :goto_0

    .line 165
    :cond_3
    new-instance v0, Lcom/umeng/socialize/exception/SocializeException;

    const-string v1, "unknow listener`s class."

    invoke-direct {v0, v1}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private declared-synchronized a(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;ZI)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 116
    monitor-enter p0

    if-nez p1, :cond_0

    .line 142
    :goto_0
    monitor-exit p0

    return v0

    .line 120
    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    sget-object v1, Lcom/umeng/socialize/bean/CallbackConfig;->k:Ljava/util/Map;

    .line 122
    :goto_1
    invoke-direct {p0, p1}, Lcom/umeng/socialize/bean/CallbackConfig;->a(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)I

    move-result v2

    or-int/2addr v2, p3

    .line 124
    invoke-direct {p0, p1, p3}, Lcom/umeng/socialize/bean/CallbackConfig;->a(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    new-instance v0, Lcom/umeng/socialize/exception/SocializeException;

    const-string v1, "\u8be5\u7c7b\u578b\u76d1\u542c\u5668\u5df2\u7ecf\u8d85\u8fc7\u6700\u5927\u4f7f\u7528\u91cf,\u8bf7\u6ce8\u9500\u4e0d\u4f7f\u7528\u7684\u76d1\u542c\u5668\u518d\u8bd5\u3002"

    invoke-direct {v0, v1}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :cond_1
    :try_start_1
    sget-object v1, Lcom/umeng/socialize/bean/CallbackConfig;->l:Ljava/util/Map;

    goto :goto_1

    .line 128
    :cond_2
    invoke-direct {p0, v2}, Lcom/umeng/socialize/bean/CallbackConfig;->a(I)Z

    .line 130
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    .line 131
    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    .line 134
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/bean/CallbackConfig;->contains(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)I

    move-result v2

    if-ltz v2, :cond_3

    .line 135
    const-string v2, "com.umeng.socialize"

    .line 136
    const-string v4, "The callback-listener has exist in the pool,resgister will update permission flag."

    .line 135
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    .line 339
    if-eqz v2, :cond_0

    .line 340
    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 346
    :cond_0
    :goto_1
    return v0

    .line 340
    :cond_1
    aget-object v4, v2, v1

    .line 341
    if-ne v4, p2, :cond_2

    .line 342
    const/4 v0, 0x1

    goto :goto_1

    .line 340
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cleanListeners()Z
    .locals 3

    .prologue
    .line 271
    :try_start_0
    sget-object v0, Lcom/umeng/socialize/bean/CallbackConfig;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 272
    sget-object v0, Lcom/umeng/socialize/bean/CallbackConfig;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    const-string v1, "com.umeng.socialize"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized contains(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)I
    .locals 2

    .prologue
    .line 182
    monitor-enter p0

    const/4 v0, 0x0

    .line 183
    :try_start_0
    sget-object v1, Lcom/umeng/socialize/bean/CallbackConfig;->k:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v0, 0x1

    .line 186
    :cond_0
    sget-object v1, Lcom/umeng/socialize/bean/CallbackConfig;->l:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    add-int/lit8 v0, v0, 0x2

    .line 189
    :cond_1
    monitor-exit p0

    return v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getListener(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 311
    const-class v0, Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/bean/CallbackConfig;->a(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    .line 312
    if-nez v0, :cond_0

    .line 313
    new-instance v0, Lcom/umeng/socialize/exception/SocializeException;

    const-string v1, "The param is not implements ICallbackLister."

    invoke-direct {v0, v1}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    :try_start_0
    sget-object v0, Lcom/umeng/socialize/bean/CallbackConfig;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 323
    sget-object v0, Lcom/umeng/socialize/bean/CallbackConfig;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    .line 333
    :goto_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 334
    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 317
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;

    .line 318
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    const-string v2, "com.umeng.socialize"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 323
    :cond_4
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;

    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 325
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public declared-synchronized registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 99
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/socialize/bean/CallbackConfig;->a(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;ZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/umeng/socialize/bean/CallbackConfig;->a(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;ZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerWeakRefListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/socialize/bean/CallbackConfig;->a(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;ZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerWeakRefListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/socialize/exception/SocializeException;
        }
    .end annotation

    .prologue
    .line 71
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Lcom/umeng/socialize/bean/CallbackConfig;->a(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;ZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs unregisterLisreners([Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)V
    .locals 3

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 267
    :cond_0
    return-void

    .line 263
    :cond_1
    aget-object v2, p1, v0

    .line 264
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/bean/CallbackConfig;->unregisterListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterListener(Lcom/umeng/socialize/bean/CallbackConfig$ICallbackListener;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 282
    const/4 v0, 0x0

    .line 283
    :try_start_0
    sget-object v2, Lcom/umeng/socialize/bean/CallbackConfig;->l:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    sget-object v0, Lcom/umeng/socialize/bean/CallbackConfig;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 287
    :cond_0
    sget-object v2, Lcom/umeng/socialize/bean/CallbackConfig;->k:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    if-nez v0, :cond_1

    sget-object v0, Lcom/umeng/socialize/bean/CallbackConfig;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_1
    if-nez v0, :cond_2

    move v0, v1

    .line 295
    :goto_0
    return v0

    .line 291
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    const-string v2, "com.umeng.socialize"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 295
    goto :goto_0
.end method
