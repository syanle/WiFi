.class public Lcom/mapabc/mapapi/core/ServerUrlSetting;
.super Ljava/lang/Object;
.source "ServerUrlSetting.java"


# instance fields
.field public strPoiSearchUrl:Ljava/lang/String;

.field public strSateliteTmcUrl:Ljava/lang/String;

.field public strSateliteUrl:Ljava/lang/String;

.field public strTileUrl:Ljava/lang/String;

.field public strTmcTileUrl:Ljava/lang/String;

.field public strVectorMapUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ServerUrlSetting;->strTileUrl:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ServerUrlSetting;->strTmcTileUrl:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ServerUrlSetting;->strPoiSearchUrl:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ServerUrlSetting;->strSateliteUrl:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ServerUrlSetting;->strSateliteTmcUrl:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/mapabc/mapapi/core/ServerUrlSetting;->strVectorMapUrl:Ljava/lang/String;

    return-void
.end method
