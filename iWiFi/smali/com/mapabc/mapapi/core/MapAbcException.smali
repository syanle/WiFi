.class public Lcom/mapabc/mapapi/core/MapAbcException;
.super Ljava/lang/Exception;
.source "MapAbcException.java"


# static fields
.field public static final ERROR_CONNECTION:Ljava/lang/String; = "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

.field public static final ERROR_INVALID_PARAMETER:Ljava/lang/String; = "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

.field public static final ERROR_INVALID_PB:Ljava/lang/String; = "protobuf\u89e3\u6790\u9519\u8bef - InvalidProtocolBufferException"

.field public static final ERROR_INVOCATION_CLASS:Ljava/lang/String; = "\u53cd\u5c04\u9519\u8bef - InvocationTargetException"

.field public static final ERROR_IO:Ljava/lang/String; = "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

.field public static final ERROR_NO_SUCH_METHOD:Ljava/lang/String; = "\u6ca1\u6709\u627e\u5230\u8c03\u7528\u65b9\u6cd5 - NoSuchMethodException"

.field public static final ERROR_NULL_PARAMETER:Ljava/lang/String; = "\u7a7a\u6307\u9488\u5f02\u5e38 - NullPointException"

.field public static final ERROR_PB_STATE1:Ljava/lang/String; = "\u65e0\u67e5\u8be2\u7ed3\u679c-000001"

.field public static final ERROR_PB_STATE10:Ljava/lang/String; = "IP\u9a8c\u8bc1\u5931\u8d25-020004"

.field public static final ERROR_PB_STATE11:Ljava/lang/String; = "\u57ce\u5e02\u9a8c\u8bc1\u5931\u8d25-020005"

.field public static final ERROR_PB_STATE12:Ljava/lang/String; = "\u57fa\u7840\u6a21\u578b\u9a8c\u8bc1\u5931\u8d25-020006"

.field public static final ERROR_PB_STATE13:Ljava/lang/String; = "\u7f51\u5361\u5730\u5740\u4e0d\u5339\u914d-020007"

.field public static final ERROR_PB_STATE14:Ljava/lang/String; = "license\u914d\u7f6e\u9519\u8bef-020008"

.field public static final ERROR_PB_STATE15:Ljava/lang/String; = "\u57ce\u5e02\u53f7\u4e0d\u5339\u914d-020009"

.field public static final ERROR_PB_STATE16:Ljava/lang/String; = "\u5934\u6587\u4ef6\u4e0d\u5339\u914d-020010"

.field public static final ERROR_PB_STATE17:Ljava/lang/String; = "\u8bf7\u6c42\u6570\u8d85\u51fa\u6700\u5927\u8303\u56f4-020011"

.field public static final ERROR_PB_STATE18:Ljava/lang/String; = "\u7f13\u5b58\u670d\u52a1\u5668\u5f02\u5e38-030001"

.field public static final ERROR_PB_STATE19:Ljava/lang/String; = "\u67e5\u8be2\u670d\u52a1\u8fde\u63a5\u5f02\u5e38-040001"

.field public static final ERROR_PB_STATE2:Ljava/lang/String; = "\u8c03\u7528\u670d\u52a1\u53d1\u751f\u5f02\u5e38-000002"

.field public static final ERROR_PB_STATE20:Ljava/lang/String; = "\u67e5\u8be2\u670d\u52a1\u8fd4\u56de\u683c\u5f0f\u89e3\u6790\u5f02\u5e38-040002"

.field public static final ERROR_PB_STATE21:Ljava/lang/String; = "\u5f53\u524d\u683c\u5f0f\u4e0d\u652f\u6301-050001"

.field public static final ERROR_PB_STATE3:Ljava/lang/String; = "\u975e\u6cd5\u5750\u6807\u683c\u5f0f-010001"

.field public static final ERROR_PB_STATE4:Ljava/lang/String; = "\u5b57\u7b26\u96c6\u7f16\u7801\u9519\u8bef-010002"

.field public static final ERROR_PB_STATE5:Ljava/lang/String; = "Apikey\u4e3a\u7a7a-010003"

.field public static final ERROR_PB_STATE6:Ljava/lang/String; = "Apikey\u4e0d\u6b63\u786e-020001"

.field public static final ERROR_PB_STATE7:Ljava/lang/String; = "\u4ea7\u54c1\u672a\u6388\u6743-020000"

.field public static final ERROR_PB_STATE8:Ljava/lang/String; = "Api\u8d26\u53f7\u4e0d\u5b58\u5728-020002"

.field public static final ERROR_PB_STATE9:Ljava/lang/String; = "\u6ca1\u6709\u670d\u52a1\u8bbf\u95ee\u6743\u9650-020003"

.field public static final ERROR_PROTOCOL:Ljava/lang/String; = "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

.field public static final ERROR_SOCKET:Ljava/lang/String; = "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

.field public static final ERROR_SOCKE_TIME_OUT:Ljava/lang/String; = "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

.field public static final ERROR_UNKNOWN:Ljava/lang/String; = "\u672a\u77e5\u7684\u9519\u8bef"

.field public static final ERROR_UNKNOW_HOST:Ljava/lang/String; = "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

.field public static final ERROR_UNKNOW_SERVICE:Ljava/lang/String; = "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

.field public static final ERROR_URL:Ljava/lang/String; = "url\u5f02\u5e38 - MalformedURLException"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 41
    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    iput-object v0, p0, Lcom/mapabc/mapapi/core/MapAbcException;->a:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 41
    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    iput-object v0, p0, Lcom/mapabc/mapapi/core/MapAbcException;->a:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/mapabc/mapapi/core/MapAbcException;->a:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mapabc/mapapi/core/MapAbcException;->a:Ljava/lang/String;

    return-object v0
.end method
