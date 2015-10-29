.class public enum Lcom/umeng/socialize/bean/SHARE_MEDIA;
.super Ljava/lang/Enum;
.source "SHARE_MEDIA.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum LAIWANG:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum LAIWANG_DYNAMIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field public static final enum YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic b:[Lcom/umeng/socialize/bean/SHARE_MEDIA;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 21
    new-instance v0, Lcom/umeng/socialize/bean/o;

    const-string v1, "SINA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/o;-><init>(Ljava/lang/String;I)V

    .line 22
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 28
    new-instance v0, Lcom/umeng/socialize/bean/z;

    const-string v1, "QZONE"

    invoke-direct {v0, v1, v3}, Lcom/umeng/socialize/bean/z;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 35
    new-instance v0, Lcom/umeng/socialize/bean/aa;

    const-string v1, "QQ"

    invoke-direct {v0, v1, v4}, Lcom/umeng/socialize/bean/aa;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 42
    new-instance v0, Lcom/umeng/socialize/bean/ab;

    const-string v1, "RENREN"

    invoke-direct {v0, v1, v5}, Lcom/umeng/socialize/bean/ab;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 49
    new-instance v0, Lcom/umeng/socialize/bean/ac;

    const-string v1, "WEIXIN"

    invoke-direct {v0, v1, v6}, Lcom/umeng/socialize/bean/ac;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 56
    new-instance v0, Lcom/umeng/socialize/bean/ad;

    const-string v1, "WEIXIN_CIRCLE"

    invoke-direct {v0, v1, v7}, Lcom/umeng/socialize/bean/ad;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 63
    new-instance v0, Lcom/umeng/socialize/bean/ae;

    const-string v1, "TENCENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/ae;-><init>(Ljava/lang/String;I)V

    .line 64
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 70
    new-instance v0, Lcom/umeng/socialize/bean/af;

    const-string v1, "DOUBAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/af;-><init>(Ljava/lang/String;I)V

    .line 71
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 77
    new-instance v0, Lcom/umeng/socialize/bean/ag;

    const-string v1, "SMS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/ag;-><init>(Ljava/lang/String;I)V

    .line 78
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 84
    new-instance v0, Lcom/umeng/socialize/bean/p;

    const-string v1, "EMAIL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/p;-><init>(Ljava/lang/String;I)V

    .line 85
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 91
    new-instance v0, Lcom/umeng/socialize/bean/q;

    const-string v1, "GOOGLEPLUS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/q;-><init>(Ljava/lang/String;I)V

    .line 92
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 98
    new-instance v0, Lcom/umeng/socialize/bean/r;

    const-string v1, "FACEBOOK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/r;-><init>(Ljava/lang/String;I)V

    .line 99
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 105
    new-instance v0, Lcom/umeng/socialize/bean/s;

    const-string v1, "TWITTER"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/s;-><init>(Ljava/lang/String;I)V

    .line 106
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 112
    new-instance v0, Lcom/umeng/socialize/bean/t;

    const-string v1, "LAIWANG"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/t;-><init>(Ljava/lang/String;I)V

    .line 113
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 119
    new-instance v0, Lcom/umeng/socialize/bean/u;

    const-string v1, "LAIWANG_DYNAMIC"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/u;-><init>(Ljava/lang/String;I)V

    .line 120
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG_DYNAMIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 126
    new-instance v0, Lcom/umeng/socialize/bean/v;

    const-string v1, "YIXIN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/v;-><init>(Ljava/lang/String;I)V

    .line 127
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 133
    new-instance v0, Lcom/umeng/socialize/bean/w;

    const-string v1, "YIXIN_CIRCLE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/w;-><init>(Ljava/lang/String;I)V

    .line 134
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 140
    new-instance v0, Lcom/umeng/socialize/bean/x;

    const-string v1, "INSTAGRAM"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/x;-><init>(Ljava/lang/String;I)V

    .line 141
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 147
    new-instance v0, Lcom/umeng/socialize/bean/y;

    const-string v1, "GENERIC"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/y;-><init>(Ljava/lang/String;I)V

    .line 148
    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG_DYNAMIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->b:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    .line 157
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TWITTER:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GOOGLEPLUS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG_DYNAMIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 5

    .prologue
    .line 185
    invoke-static {}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->values()[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 187
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 195
    const-string v0, "wxtimeline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 201
    :cond_0
    :goto_1
    return-object v0

    .line 187
    :cond_1
    aget-object v0, v2, v1

    .line 188
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 197
    :cond_2
    const-string v0, "wxsession"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_1

    .line 201
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getDefaultPlatform()[Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 3

    .prologue
    .line 254
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/4 v1, 0x0

    .line 255
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 256
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 257
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    aput-object v2, v0, v1

    .line 259
    return-object v0
.end method

.method public static getPlatformOperation(Lcom/umeng/socialize/bean/SHARE_MEDIA;)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 270
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq p0, v0, :cond_0

    .line 271
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 277
    :goto_0
    return v0

    .line 273
    :catch_0
    move-exception v0

    move v0, v1

    .line 274
    goto :goto_0

    :cond_0
    move v0, v1

    .line 277
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public static values()[Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->b:[Lcom/umeng/socialize/bean/SHARE_MEDIA;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
