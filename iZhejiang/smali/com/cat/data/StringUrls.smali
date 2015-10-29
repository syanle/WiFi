.class public Lcom/cat/data/StringUrls;
.super Ljava/lang/Object;
.source "StringUrls.java"


# static fields
.field public static final stringUrls:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://www.oschina.net/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://www.baidu.com/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 8
    const-string v2, "http://www.thinkandroid.cn/"

    aput-object v2, v0, v1

    .line 6
    sput-object v0, Lcom/cat/data/StringUrls;->stringUrls:[Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
