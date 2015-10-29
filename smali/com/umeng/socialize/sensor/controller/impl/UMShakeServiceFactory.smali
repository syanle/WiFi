.class public Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceFactory;
.super Ljava/lang/Object;
.source "UMShakeServiceFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShakeService(Ljava/lang/String;)Lcom/umeng/socialize/sensor/controller/UMShakeService;
    .locals 1
    .param p0, "descript"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v0, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/sensor/controller/impl/UMShakeServiceImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
