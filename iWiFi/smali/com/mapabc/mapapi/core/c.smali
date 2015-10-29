.class public Lcom/mapabc/mapapi/core/c;
.super Ljava/lang/Object;
.source "ConfigableConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/c$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:Lcom/mapabc/mapapi/core/u;

.field public static j:Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mapabc/mapapi/core/c;->a:Z

    .line 30
    const/16 v0, 0x12

    sput v0, Lcom/mapabc/mapapi/core/c;->b:I

    .line 31
    const/4 v0, 0x4

    sput v0, Lcom/mapabc/mapapi/core/c;->c:I

    .line 32
    const/16 v0, 0x14

    sput v0, Lcom/mapabc/mapapi/core/c;->d:I

    .line 33
    const/4 v0, 0x3

    sput v0, Lcom/mapabc/mapapi/core/c;->e:I

    .line 43
    sput v1, Lcom/mapabc/mapapi/core/c;->f:I

    .line 77
    sput v1, Lcom/mapabc/mapapi/core/c;->g:I

    .line 78
    sput v1, Lcom/mapabc/mapapi/core/c;->h:I

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/mapabc/mapapi/core/c;->i:Lcom/mapabc/mapapi/core/u;

    .line 84
    sget-object v0, Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;

    sput-object v0, Lcom/mapabc/mapapi/core/c;->j:Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;

    .line 110
    const-string v0, "Android_MapSDKV5.3-B05"

    sput-object v0, Lcom/mapabc/mapapi/core/c;->k:Ljava/lang/String;

    .line 112
    const-string v0, "Android_MapSDKV5.3"

    sput-object v0, Lcom/mapabc/mapapi/core/c;->l:Ljava/lang/String;

    .line 127
    sput-boolean v1, Lcom/mapabc/mapapi/core/c;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
