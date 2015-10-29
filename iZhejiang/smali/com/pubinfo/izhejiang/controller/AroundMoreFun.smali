.class public abstract Lcom/pubinfo/izhejiang/controller/AroundMoreFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "AroundMoreFun.java"

# interfaces
.implements Lcom/cat/protocol/DoNearBusListInterface;


# static fields
.field private static AroundPic:[[Ljava/lang/String;

.field private static AroundPicFileQian:Ljava/lang/String;


# instance fields
.field private asyncHttpClient:Lcom/ta/util/http/AsyncHttpClient;
    .annotation runtime Lcom/ta/annotation/TAInject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u5bb6\u88c5"

    aput-object v2, v1, v4

    const-string v2, "01"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u7ed3\u5a5a"

    aput-object v2, v1, v4

    const-string v2, "02"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 22
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u9152\u5e97"

    aput-object v2, v1, v4

    const-string v2, "03"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u7f8e\u98df"

    aput-object v3, v2, v4

    const-string v3, "04"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u4eb2\u5b50"

    aput-object v3, v2, v4

    const-string v3, "05"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u5c0f\u5403\u5feb\u9910"

    aput-object v3, v2, v4

    const-string v3, "06"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 23
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "\u4f11\u95f2\u5a31\u4e50"

    aput-object v3, v2, v4

    const-string v3, "07"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "KTV"

    aput-object v3, v2, v4

    const-string v3, "08"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 21
    sput-object v0, Lcom/pubinfo/izhejiang/controller/AroundMoreFun;->AroundPic:[[Ljava/lang/String;

    .line 25
    const-string v0, "business_"

    sput-object v0, Lcom/pubinfo/izhejiang/controller/AroundMoreFun;->AroundPicFileQian:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    return-void
.end method

.method public static getBusinessImage(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "business"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, "image":Landroid/graphics/drawable/Drawable;
    const-string v4, ""

    .line 34
    .local v4, "weathericon":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v5, Lcom/pubinfo/izhejiang/controller/AroundMoreFun;->AroundPic:[[Ljava/lang/String;

    array-length v5, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v5, :cond_0

    .line 45
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 46
    const-string v6, "drawable"

    const-string v7, "com.pubinfo.izhejiang"

    .line 45
    invoke-virtual {v5, v4, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 47
    .local v3, "resID":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 49
    return-object v2

    .line 35
    .end local v3    # "resID":I
    :cond_0
    :try_start_1
    sget-object v5, Lcom/pubinfo/izhejiang/controller/AroundMoreFun;->AroundPic:[[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/pubinfo/izhejiang/controller/AroundMoreFun;->AroundPicFileQian:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/pubinfo/izhejiang/controller/AroundMoreFun;->AroundPic:[[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 37
    goto :goto_1

    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const-string v4, ""

    goto :goto_1
.end method


# virtual methods
.method protected getNearBusList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 13
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "lng"    # Ljava/lang/String;
    .param p3, "lat"    # Ljava/lang/String;
    .param p4, "radius"    # Ljava/lang/String;
    .param p5, "cate"    # Ljava/lang/String;
    .param p6, "sort"    # Ljava/lang/String;
    .param p7, "authid"    # Ljava/lang/String;
    .param p8, "bussid"    # Ljava/lang/String;
    .param p9, "ssid"    # Ljava/lang/String;
    .param p10, "page"    # Ljava/lang/String;
    .param p11, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/AroundMoreFun;->diffTime()V

    .line 63
    new-instance v0, Lcom/cat/impl/DoNearBusListConn;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object v11, p0

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/cat/impl/DoNearBusListConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoNearBusListInterface;Landroid/content/Context;)V

    .line 65
    return-void
.end method
