.class public Lcom/cat/data/DownloadUrls;
.super Ljava/lang/Object;
.source "DownloadUrls.java"


# static fields
.field public static url:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    const-string v2, "http://img.yingyonghui.com/apk/16457/com.rovio.angrybirdsspace.ads.1332528395706.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 8
    const-string v2, "http://img.yingyonghui.com/apk/15951/com.galapagossoft.trialx2_winter.1328012793227.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 9
    const-string v2, "http://cdn1.down.apk.gfan.com/asdf/Pfiles/2012/3/26/181157_0502c0c3-f9d1-460b-ba1d-a3bad959b1fa.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 10
    const-string v2, "http://static.nduoa.com/apk/258/258681/com.gameloft.android.GAND.GloftAsp6.asphalt6.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 11
    const-string v2, "http://cdn1.down.apk.gfan.com/asdf/Pfiles/2011/12/5/100522_b73bb8d2-2c92-4399-89c7-07a9238392be.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 12
    const-string v2, "http://file.m.163.com/app/free/201106/16/com.gameloft.android.TBFV.GloftGTHP.ML.apk"

    aput-object v2, v0, v1

    .line 5
    sput-object v0, Lcom/cat/data/DownloadUrls;->url:[Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
