.class public Lcom/mapabc/mapapi/core/GeoPoint;
.super Ljava/lang/Object;
.source "GeoPoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;,
        Lcom/mapabc/mapapi/core/GeoPoint$b;,
        Lcom/mapabc/mapapi/core/GeoPoint$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mapabc/mapapi/core/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field static final a:[D

.field static final b:[D

.field static final c:[Lcom/mapabc/mapapi/core/GeoPoint$a;


# instance fields
.field private d:J

.field private e:J

.field private f:D

.field private g:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x400

    const/16 v5, 0x200

    const/16 v4, 0x100

    const/16 v3, 0x80

    const/16 v1, 0x15

    .line 25
    new-array v0, v1, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mapabc/mapapi/core/GeoPoint;->a:[D

    .line 34
    new-array v0, v1, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mapabc/mapapi/core/GeoPoint;->b:[D

    .line 43
    new-array v0, v1, [Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/4 v1, 0x0

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    invoke-direct {v2, v3, v3}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    invoke-direct {v2, v4, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    invoke-direct {v2, v5, v5}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    invoke-direct {v2, v6, v6}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/16 v3, 0x800

    const/16 v4, 0x800

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/16 v3, 0x1000

    const/16 v4, 0x1000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/16 v3, 0x2000

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/16 v3, 0x4000

    const/16 v4, 0x4000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const v3, 0x8000

    const v4, 0x8000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x10000

    const/high16 v4, 0x10000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x20000

    const/high16 v4, 0x20000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x40000

    const/high16 v4, 0x40000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x80000

    const/high16 v4, 0x80000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x100000

    const/high16 v4, 0x100000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x200000

    const/high16 v4, 0x200000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x400000

    const/high16 v4, 0x400000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x800000

    const/high16 v4, 0x800000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x1000000

    const/high16 v4, 0x1000000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x2000000

    const/high16 v4, 0x2000000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x4000000

    const/high16 v4, 0x4000000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/mapabc/mapapi/core/GeoPoint$a;

    const/high16 v3, 0x8000000

    const/high16 v4, 0x8000000

    invoke-direct {v2, v3, v4}, Lcom/mapabc/mapapi/core/GeoPoint$a;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/mapabc/mapapi/core/GeoPoint;->c:[Lcom/mapabc/mapapi/core/GeoPoint$a;

    .line 346
    new-instance v0, Lcom/mapabc/mapapi/core/h;

    invoke-direct {v0}, Lcom/mapabc/mapapi/core/h;-><init>()V

    sput-object v0, Lcom/mapabc/mapapi/core/GeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 25
    nop

    :array_0
    .array-data 8
        0x3fe6c16c16c16c17L    # 0.7111111111111111
        0x3ff6c16c16c16c17L    # 1.4222222222222223
        0x4006c16c16c16c17L    # 2.8444444444444446
        0x4016c16c16c16c17L    # 5.688888888888889
        0x4026c16c16c16c17L    # 11.377777777777778
        0x4036c16c16c16c17L    # 22.755555555555556
        0x4046c16c16c16c17L    # 45.51111111111111
        0x4056c16c16c16c17L    # 91.02222222222223
        0x4066c16c16c16c17L    # 182.04444444444445
        0x4076c16c16c16c17L    # 364.0888888888889
        0x4086c16c16c16c17L    # 728.1777777777778
        0x4096c16c16c16c17L    # 1456.3555555555556
        0x40a6c16c16c16c17L    # 2912.711111111111
        0x40b6c16c16c16c17L    # 5825.422222222222
        0x40c6c16c16c16c17L    # 11650.844444444445
        0x40d6c16c16c16c17L    # 23301.68888888889
        0x40e6c16c16c16c17L    # 46603.37777777778
        0x40f6c16c16c16c17L    # 93206.75555555556
        0x4106c16c16c16c17L    # 186413.51111111112
        0x4116c16c16c16c17L    # 372827.02222222224
        0x4126c16c16c16c17L    # 745654.0444444445
    .end array-data

    .line 34
    :array_1
    .array-data 8
        0x40445f306dc9c883L    # 40.74366543152521
        0x40545f306dc9c883L    # 81.48733086305042
        0x40645f306dc9c883L    # 162.97466172610083
        0x40745f306dc9c883L    # 325.94932345220167
        0x40845f306dc9c883L    # 651.8986469044033
        0x40945f306dc9c883L    # 1303.7972938088067
        0x40a45f306dc9c883L    # 2607.5945876176133
        0x40b45f306dc9c883L    # 5215.189175235227
        0x40c45f306dc9c883L    # 10430.378350470453
        0x40d45f306dc9c883L    # 20860.756700940907
        0x40e45f306dc9c883L    # 41721.51340188181
        0x40f45f306dc9c883L    # 83443.02680376363
        0x41045f306dc9c883L    # 166886.05360752725
        0x41145f306dc9c883L    # 333772.1072150545
        0x41245f306dc9c883L    # 667544.214430109
        0x41345f306dc9c883L    # 1335088.428860218
        0x41445f306dc9c883L    # 2670176.857720436
        0x41545f306dc9c883L    # 5340353.715440872
        0x41645f306dc9c883L    # 1.0680707430881744E7
        0x41745f306dc9c883L    # 2.136141486176349E7
        0x41845f306dc9c883L    # 4.272282972352698E7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v0, 0x1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 59
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 60
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    .line 61
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    .line 137
    iput-wide v4, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 138
    iput-wide v4, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 139
    return-void
.end method

.method public constructor <init>(DDJJ)V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v0, 0x1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 59
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 60
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    .line 61
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    .line 176
    iput-wide p1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    .line 177
    iput-wide p3, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    .line 178
    iput-wide p5, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 179
    iput-wide p7, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 180
    return-void
.end method

.method public constructor <init>(DDLandroid/app/Activity;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v0, 0x1

    const/4 v5, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 59
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 60
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    .line 61
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    .line 81
    :try_start_0
    const-string v0, "com.mapabc.mapapi.map.MapActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-static {}, Lcom/mapabc/mapapi/core/e;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 88
    :goto_0
    sget-boolean v0, Lcom/mapabc/mapapi/core/c;->a:Z

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/mapabc/mapapi/core/k;

    new-instance v1, Lcom/mapabc/mapapi/core/GeoPoint$b;

    invoke-direct {v1, p3, p4, p1, p2}, Lcom/mapabc/mapapi/core/GeoPoint$b;-><init>(DD)V

    invoke-static {p5}, Lcom/mapabc/mapapi/core/e;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    invoke-static {p5}, Lcom/mapabc/mapapi/core/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/mapabc/mapapi/core/k;-><init>(Lcom/mapabc/mapapi/core/GeoPoint$b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/k;->GetData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/GeoPoint$b;

    .line 96
    iget-wide v1, v0, Lcom/mapabc/mapapi/core/GeoPoint$b;->b:D

    invoke-static {v1, v2}, Lcom/mapabc/mapapi/core/e;->a(D)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 97
    iget-wide v0, v0, Lcom/mapabc/mapapi/core/GeoPoint$b;->a:D

    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/e;->a(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 109
    :goto_1
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u5fc5\u987b\u4f20\u5165MapActivity\u7684\u5b9e\u4f8b"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    new-instance v0, Lcom/mapabc/mapapi/core/l;

    new-instance v1, Lcom/mapabc/mapapi/core/GeoPoint$b;

    invoke-direct {v1, p3, p4, p1, p2}, Lcom/mapabc/mapapi/core/GeoPoint$b;-><init>(DD)V

    invoke-static {p5}, Lcom/mapabc/mapapi/core/e;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    invoke-static {p5}, Lcom/mapabc/mapapi/core/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/mapabc/mapapi/core/l;-><init>(Lcom/mapabc/mapapi/core/GeoPoint$b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/l;->GetData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/GeoPoint$b;

    .line 106
    iget-wide v1, v0, Lcom/mapabc/mapapi/core/GeoPoint$b;->b:D

    invoke-static {v1, v2}, Lcom/mapabc/mapapi/core/e;->a(D)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 107
    iget-wide v0, v0, Lcom/mapabc/mapapi/core/GeoPoint$b;->a:D

    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/e;->a(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    goto :goto_1

    :cond_1
    move-object v3, v5

    goto :goto_0
.end method

.method public constructor <init>(DDLandroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mapabc/mapapi/core/MapAbcException;
        }
    .end annotation

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const/4 v5, 0x0

    const-wide/16 v0, 0x1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 59
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 60
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    .line 61
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    .line 113
    sget-boolean v0, Lcom/mapabc/mapapi/core/c;->a:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lcom/mapabc/mapapi/core/k;

    new-instance v1, Lcom/mapabc/mapapi/core/GeoPoint$b;

    invoke-direct {v1, p3, p4, p1, p2}, Lcom/mapabc/mapapi/core/GeoPoint$b;-><init>(DD)V

    invoke-static {p5}, Lcom/mapabc/mapapi/core/e;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    invoke-static {p5}, Lcom/mapabc/mapapi/core/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p6

    invoke-direct/range {v0 .. v5}, Lcom/mapabc/mapapi/core/k;-><init>(Lcom/mapabc/mapapi/core/GeoPoint$b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/k;->GetData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/GeoPoint$b;

    .line 121
    iget-wide v1, v0, Lcom/mapabc/mapapi/core/GeoPoint$b;->b:D

    invoke-static {v1, v2}, Lcom/mapabc/mapapi/core/e;->a(D)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 122
    iget-wide v0, v0, Lcom/mapabc/mapapi/core/GeoPoint$b;->a:D

    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/e;->a(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 134
    :goto_0
    return-void

    .line 124
    :cond_0
    new-instance v0, Lcom/mapabc/mapapi/core/l;

    new-instance v1, Lcom/mapabc/mapapi/core/GeoPoint$b;

    invoke-direct {v1, p3, p4, p1, p2}, Lcom/mapabc/mapapi/core/GeoPoint$b;-><init>(DD)V

    invoke-static {p5}, Lcom/mapabc/mapapi/core/e;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    invoke-static {p5}, Lcom/mapabc/mapapi/core/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p6

    invoke-direct/range {v0 .. v5}, Lcom/mapabc/mapapi/core/l;-><init>(Lcom/mapabc/mapapi/core/GeoPoint$b;Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Lcom/mapabc/mapapi/core/l;->GetData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapabc/mapapi/core/GeoPoint$b;

    .line 131
    iget-wide v1, v0, Lcom/mapabc/mapapi/core/GeoPoint$b;->b:D

    invoke-static {v1, v2}, Lcom/mapabc/mapapi/core/e;->a(D)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 132
    iget-wide v0, v0, Lcom/mapabc/mapapi/core/GeoPoint$b;->a:D

    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/e;->a(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    goto :goto_0
.end method

.method public constructor <init>(DDZ)V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const-wide/16 v0, 0x1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v4, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 59
    iput-wide v4, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 60
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    .line 61
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    .line 155
    const/4 v0, 0x1

    if-ne p5, v0, :cond_0

    .line 156
    mul-double v0, p1, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 157
    mul-double v0, p3, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    iput-wide p1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    .line 160
    iput-wide p3, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v0, 0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 59
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 60
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    .line 61
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    .line 143
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 144
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 145
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v0, 0x1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 59
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 60
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    .line 61
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    .line 149
    iput-wide p1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 150
    iput-wide p3, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 151
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    const-wide/16 v0, 0x1

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 59
    iput-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 60
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    .line 61
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    .line 344
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/mapabc/mapapi/core/h;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mapabc/mapapi/core/GeoPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()D
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 252
    sget-object v0, Lcom/mapabc/mapapi/core/c;->j:Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;->projection_custBeijing54:Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_1

    .line 253
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 254
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    .line 265
    :goto_0
    return-wide v0

    .line 256
    :cond_0
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/e;->a(J)D

    move-result-wide v0

    goto :goto_0

    .line 258
    :cond_1
    sget-object v0, Lcom/mapabc/mapapi/core/c;->j:Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_2

    .line 259
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 260
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/e;->a(J)D

    move-result-wide v0

    .line 261
    const-wide v2, 0x41731bf84570a3d7L    # 2.003750834E7

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 262
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    .line 265
    :cond_2
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    goto :goto_0
.end method

.method public a(D)V
    .locals 0

    .prologue
    .line 166
    iput-wide p1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    .line 167
    return-void
.end method

.method public b()D
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 274
    sget-object v0, Lcom/mapabc/mapapi/core/c;->j:Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;->projection_custBeijing54:Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_1

    .line 275
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 276
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    .line 290
    :goto_0
    return-wide v0

    .line 278
    :cond_0
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/e;->a(J)D

    move-result-wide v0

    goto :goto_0

    .line 280
    :cond_1
    sget-object v0, Lcom/mapabc/mapapi/core/c;->j:Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;

    sget-object v1, Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;->projection_900913:Lcom/mapabc/mapapi/core/GeoPoint$EnumMapProjection;

    if-ne v0, v1, :cond_2

    .line 281
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 282
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    invoke-static {v0, v1}, Lcom/mapabc/mapapi/core/e;->a(J)D

    move-result-wide v0

    .line 283
    const-wide v2, 0x4056800000000000L    # 90.0

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double/2addr v0, v2

    .line 286
    const-wide v2, 0x41731bf84570a3d7L    # 2.003750834E7

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 287
    iput-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    .line 290
    :cond_2
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    goto :goto_0
.end method

.method public b(D)V
    .locals 0

    .prologue
    .line 171
    iput-wide p1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    .line 172
    return-void
.end method

.method public c()Lcom/mapabc/mapapi/core/GeoPoint;
    .locals 9

    .prologue
    .line 302
    new-instance v0, Lcom/mapabc/mapapi/core/GeoPoint;

    iget-wide v1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    iget-wide v3, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    iget-wide v5, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    iget-wide v7, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    invoke-direct/range {v0 .. v8}, Lcom/mapabc/mapapi/core/GeoPoint;-><init>(DDJJ)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    invoke-static {v1, v2}, Lcom/mapabc/mapapi/core/e;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    invoke-static {v1, v2}, Lcom/mapabc/mapapi/core/e;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 200
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 206
    check-cast p1, Lcom/mapabc/mapapi/core/GeoPoint;

    .line 208
    iget-wide v1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    iget-wide v3, p1, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    iget-wide v3, p1, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    iget-wide v3, p1, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    iget-wide v3, p1, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLatitudeE6()I
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    long-to-int v0, v0

    return v0
.end method

.method public getLongitudeE6()I
    .locals 2

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    long-to-int v0, v0

    return v0
.end method

.method public getlongLatitudeE6()J
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    return-wide v0
.end method

.method public getlongLongitudeE6()J
    .locals 2

    .prologue
    .line 238
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->g:D

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/mapabc/mapapi/core/GeoPoint;->f:D

    const-wide/high16 v4, 0x4026000000000000L    # 11.0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 363
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 364
    iget-wide v0, p0, Lcom/mapabc/mapapi/core/GeoPoint;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 365
    return-void
.end method
