.class public Lcom/ta/util/TALogger;
.super Ljava/lang/Object;
.source "TALogger.java"


# static fields
.field public static final ASSERT:I = 0x7

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static final defaultLogger:Lcom/ta/util/log/ILogger;

.field private static loggerHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ta/util/log/ILogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ta/util/TALogger;->loggerHashMap:Ljava/util/HashMap;

    .line 66
    new-instance v0, Lcom/ta/util/log/TAPrintToLogCatLogger;

    invoke-direct {v0}, Lcom/ta/util/log/TAPrintToLogCatLogger;-><init>()V

    sput-object v0, Lcom/ta/util/TALogger;->defaultLogger:Lcom/ta/util/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLogger(Lcom/ta/util/log/ILogger;)V
    .locals 3
    .param p0, "logger"    # Lcom/ta/util/log/ILogger;

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "loggerName":Ljava/lang/String;
    sget-object v2, Lcom/ta/util/TALogger;->defaultLogger:Lcom/ta/util/log/ILogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "defaultLoggerName":Ljava/lang/String;
    sget-object v2, Lcom/ta/util/TALogger;->loggerHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-interface {p0}, Lcom/ta/util/log/ILogger;->open()V

    .line 76
    sget-object v2, Lcom/ta/util/TALogger;->loggerHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/ta/util/TALogger;->printLoger(ILjava/lang/Object;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/ta/util/TALogger;->printLoger(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/ta/util/TALogger;->printLoger(ILjava/lang/Object;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/ta/util/TALogger;->printLoger(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/ta/util/TALogger;->printLoger(ILjava/lang/Object;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/ta/util/TALogger;->printLoger(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method private static printLoger(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p0, "priority"    # I
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 170
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "tag":Ljava/lang/String;
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "arrays":[Ljava/lang/String;
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v0, v3

    .line 173
    invoke-static {p0, v2, p2}, Lcom/ta/util/TALogger;->printLoger(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method private static printLoger(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-object v3, Lcom/ta/util/TALogger;->defaultLogger:Lcom/ta/util/log/ILogger;

    invoke-static {v3, p0, p1, p2}, Lcom/ta/util/TALogger;->printLoger(Lcom/ta/util/log/ILogger;ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v3, Lcom/ta/util/TALogger;->loggerHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 182
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 183
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ta/util/log/ILogger;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 193
    return-void

    .line 185
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ta/util/log/ILogger;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ta/util/log/ILogger;

    .line 187
    .local v2, "logger":Lcom/ta/util/log/ILogger;
    if-eqz v2, :cond_0

    .line 189
    invoke-static {v2, p0, p1, p2}, Lcom/ta/util/TALogger;->printLoger(Lcom/ta/util/log/ILogger;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static printLoger(Lcom/ta/util/log/ILogger;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "logger"    # Lcom/ta/util/log/ILogger;
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 202
    :pswitch_0
    invoke-interface {p0, p2, p3}, Lcom/ta/util/log/ILogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :pswitch_1
    invoke-interface {p0, p2, p3}, Lcom/ta/util/log/ILogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_2
    invoke-interface {p0, p2, p3}, Lcom/ta/util/log/ILogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :pswitch_3
    invoke-interface {p0, p2, p3}, Lcom/ta/util/log/ILogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :pswitch_4
    invoke-interface {p0, p2, p3}, Lcom/ta/util/log/ILogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p0, p1, p2}, Lcom/ta/util/TALogger;->printLoger(ILjava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static removeLogger(Lcom/ta/util/log/ILogger;)V
    .locals 2
    .param p0, "logger"    # Lcom/ta/util/log/ILogger;

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "loggerName":Ljava/lang/String;
    sget-object v1, Lcom/ta/util/TALogger;->loggerHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-interface {p0}, Lcom/ta/util/log/ILogger;->close()V

    .line 87
    sget-object v1, Lcom/ta/util/TALogger;->loggerHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/ta/util/TALogger;->printLoger(ILjava/lang/Object;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/ta/util/TALogger;->printLoger(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public static w(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/ta/util/TALogger;->printLoger(ILjava/lang/Object;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 158
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/ta/util/TALogger;->printLoger(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method
