.class public Lcom/umeng/socialize/sensor/UMSensorManager;
.super Ljava/lang/Object;
.source "UMSensorManager.java"


# static fields
.field private static final DELAY_MS:I = 0x320

.field private static final REGISTER_MSG:I = 0x7b

.field private static TAG:Ljava/lang/String;

.field private static isLocked:Z

.field private static mRegHandler:Landroid/os/Handler;

.field private static mSensorsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/socialize/sensor/UMSensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/socialize/sensor/UMSensorManager;->mSensorsMap:Ljava/util/Map;

    .line 36
    const-class v0, Lcom/umeng/socialize/sensor/UMSensorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/sensor/UMSensorManager;->TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/socialize/sensor/UMSensorManager;->isLocked:Z

    .line 122
    new-instance v0, Lcom/umeng/socialize/sensor/UMSensorManager$1;

    invoke-direct {v0}, Lcom/umeng/socialize/sensor/UMSensorManager$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/sensor/UMSensorManager;->mRegHandler:Landroid/os/Handler;

    .line 151
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$0()Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/umeng/socialize/sensor/UMSensorManager;->mSensorsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/umeng/socialize/sensor/UMSensorManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Z)V
    .locals 0

    .prologue
    .line 40
    sput-boolean p0, Lcom/umeng/socialize/sensor/UMSensorManager;->isLocked:Z

    return-void
.end method

.method public static getSensors()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/umeng/socialize/sensor/UMSensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/socialize/sensor/UMSensor;>;"
    sget-object v1, Lcom/umeng/socialize/sensor/UMSensorManager;->mSensorsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    return-object v0
.end method

.method public static getShakeSensor(Landroid/app/Activity;)Lcom/umeng/socialize/sensor/UMSensor;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    const/16 v0, 0x708

    invoke-static {p0, v0}, Lcom/umeng/socialize/sensor/UMSensorManager;->getShakeSensor(Landroid/app/Activity;I)Lcom/umeng/socialize/sensor/UMSensor;

    move-result-object v0

    return-object v0
.end method

.method public static getShakeSensor(Landroid/app/Activity;I)Lcom/umeng/socialize/sensor/UMSensor;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "speedShreshold"    # I

    .prologue
    const/4 v2, 0x0

    .line 71
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    :cond_0
    sget-object v3, Lcom/umeng/socialize/sensor/UMSensorManager;->TAG:Ljava/lang/String;

    const-string v4, "#### getShakeSensor, activity == null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 93
    :cond_1
    :goto_0
    return-object v0

    .line 75
    :cond_2
    if-gtz p1, :cond_3

    .line 76
    const/16 p1, 0x708

    .line 78
    :cond_3
    sget-object v3, Lcom/umeng/socialize/sensor/UMSensorManager;->mSensorsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "sensors":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/socialize/sensor/UMSensor;>;"
    sget-object v3, Lcom/umeng/socialize/sensor/UMSensorManager;->mSensorsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "firstSensor":Lcom/umeng/socialize/sensor/UMShakeSensor;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 83
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "firstSensor":Lcom/umeng/socialize/sensor/UMShakeSensor;
    check-cast v0, Lcom/umeng/socialize/sensor/UMShakeSensor;

    .line 84
    .restart local v0    # "firstSensor":Lcom/umeng/socialize/sensor/UMShakeSensor;
    invoke-virtual {v0}, Lcom/umeng/socialize/sensor/UMShakeSensor;->unregister()V

    .line 85
    invoke-virtual {v0, v2}, Lcom/umeng/socialize/sensor/UMShakeSensor;->setSensorListener(Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V

    .line 86
    invoke-virtual {v0, p0}, Lcom/umeng/socialize/sensor/UMShakeSensor;->setParentActivity(Landroid/app/Activity;)V

    .line 87
    invoke-virtual {v0, p1}, Lcom/umeng/socialize/sensor/UMShakeSensor;->setSpeedShreshold(I)V

    goto :goto_0

    .line 90
    .end local v0    # "firstSensor":Lcom/umeng/socialize/sensor/UMShakeSensor;
    .end local v1    # "sensors":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/socialize/sensor/UMSensor;>;"
    :cond_4
    sget-object v3, Lcom/umeng/socialize/sensor/UMSensorManager;->mSensorsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 91
    new-instance v0, Lcom/umeng/socialize/sensor/UMShakeSensor;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/sensor/UMShakeSensor;-><init>(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 93
    goto :goto_0
.end method

.method public static registerSensor(Lcom/umeng/socialize/sensor/UMSensor;Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V
    .locals 4
    .param p0, "sensor"    # Lcom/umeng/socialize/sensor/UMSensor;
    .param p1, "listener"    # Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .prologue
    .line 105
    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/umeng/socialize/sensor/UMShakeSensor;

    if-eqz v1, :cond_0

    .line 107
    sget-boolean v1, Lcom/umeng/socialize/sensor/UMSensorManager;->isLocked:Z

    if-nez v1, :cond_0

    .line 108
    const/4 v1, 0x1

    sput-boolean v1, Lcom/umeng/socialize/sensor/UMSensorManager;->isLocked:Z

    .line 109
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/sensor/UMSensor;->setSensorListener(Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V

    .line 111
    sget-object v1, Lcom/umeng/socialize/sensor/UMSensorManager;->mRegHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 112
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x7b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 113
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    sget-object v1, Lcom/umeng/socialize/sensor/UMSensorManager;->mRegHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 117
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static unregisterSensor(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 162
    sget-object v2, Lcom/umeng/socialize/sensor/UMSensorManager;->TAG:Ljava/lang/String;

    const-string v3, "#### \u6ce8\u9500\u4f20\u611f\u5668\u5931\u8d25 , activity == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "keyword":Ljava/lang/String;
    sget-object v2, Lcom/umeng/socialize/sensor/UMSensorManager;->mSensorsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/socialize/sensor/UMSensor;

    .line 166
    .local v1, "sensor":Lcom/umeng/socialize/sensor/UMSensor;
    if-eqz v1, :cond_1

    .line 167
    sget-object v2, Lcom/umeng/socialize/sensor/UMSensorManager;->mSensorsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    sget-boolean v2, Lcom/umeng/socialize/sensor/UMSensorManager;->isLocked:Z

    if-nez v2, :cond_1

    .line 169
    invoke-virtual {v1}, Lcom/umeng/socialize/sensor/UMSensor;->unregister()V

    .line 170
    sget-object v2, Lcom/umeng/socialize/sensor/UMSensorManager;->mSensorsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v2, Lcom/umeng/socialize/sensor/UMSensorManager;->TAG:Ljava/lang/String;

    const-string v3, "#### \u6ce8\u9500\u4f20\u611f\u5668."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_1
    return-void
.end method
