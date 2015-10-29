.class public Lcom/cat/data/ComData;
.super Ljava/lang/Object;
.source "ComData.java"


# static fields
.field private static instance:Lcom/cat/data/ComData;


# instance fields
.field private ApInfoData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/ApInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private BottomData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/BottomData;",
            ">;"
        }
    .end annotation
.end field

.field private LoginData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/LoginData;",
            ">;"
        }
    .end annotation
.end field

.field private MapCustom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/MapCustom;",
            ">;"
        }
    .end annotation
.end field

.field private MapData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/MapData;",
            ">;"
        }
    .end annotation
.end field

.field private PushListData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/PushListData;",
            ">;"
        }
    .end annotation
.end field

.field private SsidData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/SsidData;",
            ">;"
        }
    .end annotation
.end field

.field private TopData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/TopData;",
            ">;"
        }
    .end annotation
.end field

.field private UpLoadData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/UpLoadData;",
            ">;"
        }
    .end annotation
.end field

.field private UserInfoData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/UserInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private pError:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/PublicError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/cat/data/ComData;->instance:Lcom/cat/data/ComData;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/cat/data/ComData;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/cat/data/ComData;->instance:Lcom/cat/data/ComData;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/cat/data/ComData;

    invoke-direct {v0}, Lcom/cat/data/ComData;-><init>()V

    sput-object v0, Lcom/cat/data/ComData;->instance:Lcom/cat/data/ComData;

    .line 16
    :cond_0
    sget-object v0, Lcom/cat/data/ComData;->instance:Lcom/cat/data/ComData;

    return-object v0
.end method


# virtual methods
.method public getApInfoData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/ApInfoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/cat/data/ComData;->ApInfoData:Ljava/util/List;

    return-object v0
.end method

.method public getBottomData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/BottomData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/cat/data/ComData;->BottomData:Ljava/util/List;

    return-object v0
.end method

.method public getLoginData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/LoginData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/cat/data/ComData;->LoginData:Ljava/util/List;

    return-object v0
.end method

.method public getMapCustom()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/MapCustom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cat/data/ComData;->MapCustom:Ljava/util/List;

    return-object v0
.end method

.method public getMapData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/MapData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cat/data/ComData;->MapData:Ljava/util/List;

    return-object v0
.end method

.method public getPushListData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/PushListData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cat/data/ComData;->PushListData:Ljava/util/List;

    return-object v0
.end method

.method public getSsidData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/SsidData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cat/data/ComData;->SsidData:Ljava/util/List;

    return-object v0
.end method

.method public getTopData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/TopData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cat/data/ComData;->TopData:Ljava/util/List;

    return-object v0
.end method

.method public getUpLoadData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/UpLoadData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/cat/data/ComData;->UpLoadData:Ljava/util/List;

    return-object v0
.end method

.method public getUserInfoData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/UserInfoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cat/data/ComData;->UserInfoData:Ljava/util/List;

    return-object v0
.end method

.method public getpError()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/PublicError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cat/data/ComData;->pError:Ljava/util/List;

    return-object v0
.end method

.method public setApInfoData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/ApInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "apInfoData":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/ApInfoData;>;"
    iput-object p1, p0, Lcom/cat/data/ComData;->ApInfoData:Ljava/util/List;

    .line 137
    return-void
.end method

.method public setBottomData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/BottomData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "bottomData":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/BottomData;>;"
    iput-object p1, p0, Lcom/cat/data/ComData;->BottomData:Ljava/util/List;

    .line 98
    return-void
.end method

.method public setLoginData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/LoginData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "loginData":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/LoginData;>;"
    iput-object p1, p0, Lcom/cat/data/ComData;->LoginData:Ljava/util/List;

    .line 150
    return-void
.end method

.method public setMapCustom(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/MapCustom;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "mapCustom":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/MapCustom;>;"
    iput-object p1, p0, Lcom/cat/data/ComData;->MapCustom:Ljava/util/List;

    .line 59
    return-void
.end method

.method public setMapData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/MapData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "mapData":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/MapData;>;"
    iput-object p1, p0, Lcom/cat/data/ComData;->MapData:Ljava/util/List;

    .line 72
    return-void
.end method

.method public setPushListData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/PushListData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "pushListData":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PushListData;>;"
    iput-object p1, p0, Lcom/cat/data/ComData;->PushListData:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setSsidData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/SsidData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "ssidData":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/SsidData;>;"
    iput-object p1, p0, Lcom/cat/data/ComData;->SsidData:Ljava/util/List;

    .line 124
    return-void
.end method

.method public setTopData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/TopData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "topData":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/TopData;>;"
    iput-object p1, p0, Lcom/cat/data/ComData;->TopData:Ljava/util/List;

    .line 85
    return-void
.end method

.method public setUpLoadData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/UpLoadData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "upLoadData":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/UpLoadData;>;"
    iput-object p1, p0, Lcom/cat/data/ComData;->UpLoadData:Ljava/util/List;

    .line 164
    return-void
.end method

.method public setUserInfoData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/UserInfoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "userInfoData":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/UserInfoData;>;"
    iput-object p1, p0, Lcom/cat/data/ComData;->UserInfoData:Ljava/util/List;

    .line 111
    return-void
.end method

.method public setpError(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cat/data/PublicError;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "pError":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/PublicError;>;"
    iput-object p1, p0, Lcom/cat/data/ComData;->pError:Ljava/util/List;

    .line 33
    return-void
.end method
