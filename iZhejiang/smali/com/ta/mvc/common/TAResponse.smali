.class public Lcom/ta/mvc/common/TAResponse;
.super Lcom/ta/common/TABaseEntity;
.source "TAResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x25ae1f03bd8d2fbfL


# instance fields
.field private activityKey:Ljava/lang/String;

.field private activityKeyResID:I

.field private data:Ljava/lang/Object;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ta/common/TABaseEntity;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/ta/common/TABaseEntity;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/ta/mvc/common/TAResponse;->tag:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Lcom/ta/mvc/common/TAResponse;->data:Ljava/lang/Object;

    .line 46
    return-void
.end method


# virtual methods
.method public getActivityKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ta/mvc/common/TAResponse;->activityKey:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityKeyResID()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/ta/mvc/common/TAResponse;->activityKeyResID:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ta/mvc/common/TAResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ta/mvc/common/TAResponse;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public setActivityKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "activityKey"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ta/mvc/common/TAResponse;->activityKey:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setActivityKeyResID(I)V
    .locals 0
    .param p1, "activityKeyResID"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/ta/mvc/common/TAResponse;->activityKeyResID:I

    .line 76
    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ta/mvc/common/TAResponse;->data:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ta/mvc/common/TAResponse;->tag:Ljava/lang/Object;

    .line 56
    return-void
.end method
