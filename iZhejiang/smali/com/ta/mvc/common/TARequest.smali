.class public Lcom/ta/mvc/common/TARequest;
.super Lcom/ta/common/TABaseEntity;
.source "TARequest.java"


# static fields
.field private static final serialVersionUID:J = 0x62c5e8873f14dc8L


# instance fields
.field private activityKey:Ljava/lang/String;

.field private activityKeyResID:I

.field private data:Ljava/lang/Object;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ta/common/TABaseEntity;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/ta/common/TABaseEntity;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/ta/mvc/common/TARequest;->tag:Ljava/lang/Object;

    .line 43
    iput-object p2, p0, Lcom/ta/mvc/common/TARequest;->data:Ljava/lang/Object;

    .line 44
    return-void
.end method


# virtual methods
.method public getActivityKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ta/mvc/common/TARequest;->activityKey:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityKeyResID()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/ta/mvc/common/TARequest;->activityKeyResID:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ta/mvc/common/TARequest;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ta/mvc/common/TARequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public setActivityKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityKey"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ta/mvc/common/TARequest;->activityKey:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setActivityKeyResID(I)V
    .locals 0
    .param p1, "activityKeyResID"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/ta/mvc/common/TARequest;->activityKeyResID:I

    .line 74
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ta/mvc/common/TARequest;->data:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ta/mvc/common/TARequest;->tag:Ljava/lang/Object;

    .line 54
    return-void
.end method
