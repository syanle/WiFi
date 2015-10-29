.class public Lcom/umeng/socialize/bean/UMComment;
.super Lcom/umeng/socialize/bean/BaseMsg;
.source "UMComment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/umeng/socialize/bean/UMComment;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDt:J

.field public mGender:Lcom/umeng/socialize/bean/Gender;

.field public mSignature:Ljava/lang/String;

.field public mUid:Ljava/lang/String;

.field public mUname:Ljava/lang/String;

.field public mUserIcon:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    sput-boolean v4, Lcom/umeng/socialize/bean/UMComment;->b:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/umeng/socialize/bean/UMComment;->c:Ljava/util/List;

    .line 26
    sget-object v0, Lcom/umeng/socialize/bean/UMComment;->c:Ljava/util/List;

    new-array v1, v6, [Ljava/lang/Double;

    const-wide v2, 0x4043f4723ca7a966L    # 39.90973623453719

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    const-wide v2, 0x405d178000000000L    # 116.3671875

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/umeng/socialize/bean/UMComment;->c:Ljava/util/List;

    new-array v1, v6, [Ljava/lang/Double;

    const-wide v2, 0x4041400000000000L    # 34.5

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    const-wide v2, 0x405c3aaaac1094a3L    # 112.916667

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/umeng/socialize/bean/UMComment;->c:Ljava/util/List;

    new-array v1, v6, [Ljava/lang/Double;

    const-wide v2, 0x403ee4370cdc8755L    # 30.891465

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    const-wide v2, 0x405bd614ec204f2bL    # 111.345027

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/umeng/socialize/bean/UMComment;->c:Ljava/util/List;

    new-array v1, v6, [Ljava/lang/Double;

    const-wide v2, 0x4044a0f5dbb9cf9aL    # 41.257503

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    const-wide v2, 0x405cb56d2aa5c5f8L    # 114.834788

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/umeng/socialize/bean/UMComment;->c:Ljava/util/List;

    new-array v1, v6, [Ljava/lang/Double;

    const-wide v2, 0x4045fd081c2e33f0L    # 43.97681

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    const-wide v2, 0x405d5e6da0168b5dL    # 117.475441

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/umeng/socialize/bean/UMComment;->c:Ljava/util/List;

    new-array v1, v6, [Ljava/lang/Double;

    const-wide v2, 0x403698bbc2b94d94L    # 22.596615

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    const-wide v2, 0x405c937cd898b2eaL    # 114.304495

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/umeng/socialize/bean/UMComment;->c:Ljava/util/List;

    new-array v1, v6, [Ljava/lang/Double;

    const-wide v2, 0x403b2ccccccccccdL    # 27.175

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    const-wide v2, 0x405382b3c3e74afdL    # 78.042222

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/umeng/socialize/bean/UMComment;->c:Ljava/util/List;

    new-array v1, v6, [Ljava/lang/Double;

    const-wide v2, 0x404458369fcf3dc0L    # 40.689167

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    const-wide v2, 0x405282d82ba5a038L    # 74.044444

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v0, Lcom/umeng/socialize/bean/aj;

    invoke-direct {v0}, Lcom/umeng/socialize/bean/aj;-><init>()V

    sput-object v0, Lcom/umeng/socialize/bean/UMComment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 149
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/umeng/socialize/bean/BaseMsg;-><init>()V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/umeng/socialize/bean/BaseMsg;-><init>(Landroid/os/Parcel;)V

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/bean/UMComment;->mUserIcon:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/bean/UMComment;->mUid:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/bean/UMComment;->mUname:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/bean/UMComment;->mSignature:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/socialize/bean/UMComment;->mDt:J

    .line 158
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/umeng/socialize/bean/UMComment;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/umeng/socialize/bean/UMComment;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parseJson(Lorg/json/JSONObject;)Lcom/umeng/socialize/bean/UMComment;
    .locals 7

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 120
    :goto_0
    return-object v0

    .line 75
    :cond_0
    new-instance v1, Lcom/umeng/socialize/bean/UMComment;

    invoke-direct {v1}, Lcom/umeng/socialize/bean/UMComment;-><init>()V

    .line 77
    :try_start_0
    const-string v0, "uname"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "uname"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/umeng/socialize/bean/UMComment;->mUname:Ljava/lang/String;

    .line 82
    :cond_1
    const-string v0, "ic"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const-string v0, "ic"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iput-object v0, v1, Lcom/umeng/socialize/bean/UMComment;->mUserIcon:Ljava/lang/String;

    .line 87
    :cond_2
    const-string v0, "uid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    const-string v0, "uid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iput-object v0, v1, Lcom/umeng/socialize/bean/UMComment;->mUid:Ljava/lang/String;

    .line 92
    :cond_3
    sget-object v0, Lcom/umeng/socialize/net/utils/a;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    sget-object v0, Lcom/umeng/socialize/net/utils/a;->s:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    iput-object v0, v1, Lcom/umeng/socialize/bean/UMComment;->mText:Ljava/lang/String;

    .line 97
    :cond_4
    const-string v0, "dt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 99
    const-string v0, "dt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 98
    iput-wide v2, v1, Lcom/umeng/socialize/bean/UMComment;->mDt:J

    .line 102
    :cond_5
    const-string v0, "gender"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 104
    const-string v0, "gender"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/bean/Gender;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/Gender;

    move-result-object v0

    iput-object v0, v1, Lcom/umeng/socialize/bean/UMComment;->mGender:Lcom/umeng/socialize/bean/Gender;

    .line 108
    :cond_6
    sget-boolean v0, Lcom/umeng/socialize/bean/UMComment;->b:Z

    if-eqz v0, :cond_8

    .line 109
    sget-object v0, Lcom/umeng/socialize/bean/UMComment;->c:Ljava/util/List;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sget-object v3, Lcom/umeng/socialize/bean/UMComment;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    .line 110
    new-instance v2, Lcom/umeng/socialize/bean/UMLocation;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/umeng/socialize/bean/UMLocation;-><init>(DD)V

    iput-object v2, v1, Lcom/umeng/socialize/bean/UMComment;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    :cond_7
    :goto_1
    move-object v0, v1

    .line 120
    goto/16 :goto_0

    .line 112
    :cond_8
    sget-object v0, Lcom/umeng/socialize/net/utils/a;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 113
    sget-object v0, Lcom/umeng/socialize/net/utils/a;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/umeng/socialize/bean/UMLocation;->build(Ljava/lang/String;)Lcom/umeng/socialize/bean/UMLocation;

    move-result-object v0

    iput-object v0, v1, Lcom/umeng/socialize/bean/UMComment;->mLocation:Lcom/umeng/socialize/bean/UMLocation;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/bean/BaseMsg;->writeToParcel(Landroid/os/Parcel;I)V

    .line 131
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMComment;->mUserIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMComment;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMComment;->mUname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMComment;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-wide v0, p0, Lcom/umeng/socialize/bean/UMComment;->mDt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMComment;->mGender:Lcom/umeng/socialize/bean/Gender;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMComment;->mGender:Lcom/umeng/socialize/bean/Gender;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/Gender;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
