.class public Lcom/ta/mvc/controller/ActivityStackInfo;
.super Ljava/lang/Object;
.source "ActivityStackInfo.java"


# instance fields
.field private activityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/TAActivity;",
            ">;"
        }
    .end annotation
.end field

.field private commandKey:Ljava/lang/String;

.field private record:Z

.field private request:Lcom/ta/mvc/common/TARequest;

.field private resetStack:Z

.field private response:Lcom/ta/mvc/common/TAResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lcom/ta/mvc/common/TARequest;)V
    .locals 0
    .param p2, "commandKey"    # Ljava/lang/String;
    .param p3, "request"    # Lcom/ta/mvc/common/TARequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/TAActivity;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ta/mvc/common/TARequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/TAActivity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->activityClass:Ljava/lang/Class;

    .line 48
    iput-object p2, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->commandKey:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->request:Lcom/ta/mvc/common/TARequest;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lcom/ta/mvc/common/TARequest;ZZ)V
    .locals 0
    .param p2, "commandKey"    # Ljava/lang/String;
    .param p3, "request"    # Lcom/ta/mvc/common/TARequest;
    .param p4, "record"    # Z
    .param p5, "resetStack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/TAActivity;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/ta/mvc/common/TARequest;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/TAActivity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->activityClass:Ljava/lang/Class;

    .line 57
    iput-object p2, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->commandKey:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->request:Lcom/ta/mvc/common/TARequest;

    .line 59
    iput-boolean p4, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->record:Z

    .line 60
    iput-boolean p5, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->resetStack:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ta/mvc/common/TARequest;ZZ)V
    .locals 0
    .param p1, "commandKey"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/ta/mvc/common/TARequest;
    .param p3, "record"    # Z
    .param p4, "resetStack"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->commandKey:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->request:Lcom/ta/mvc/common/TARequest;

    .line 40
    iput-boolean p3, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->record:Z

    .line 41
    iput-boolean p4, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->resetStack:Z

    .line 42
    return-void
.end method


# virtual methods
.method public getActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/TAActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->activityClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getCommandKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->commandKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lcom/ta/mvc/common/TARequest;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->request:Lcom/ta/mvc/common/TARequest;

    return-object v0
.end method

.method public getResponse()Lcom/ta/mvc/common/TAResponse;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->response:Lcom/ta/mvc/common/TAResponse;

    return-object v0
.end method

.method public isRecord()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->record:Z

    return v0
.end method

.method public isResetStack()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->resetStack:Z

    return v0
.end method

.method public setActivityClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ta/TAActivity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ta/TAActivity;>;"
    iput-object p1, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->activityClass:Ljava/lang/Class;

    .line 71
    return-void
.end method

.method public setCommandKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "commandKey"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->commandKey:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setRecord(Z)V
    .locals 0
    .param p1, "record"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->record:Z

    .line 101
    return-void
.end method

.method public setRequest(Lcom/ta/mvc/common/TARequest;)V
    .locals 0
    .param p1, "request"    # Lcom/ta/mvc/common/TARequest;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->request:Lcom/ta/mvc/common/TARequest;

    .line 91
    return-void
.end method

.method public setResetStack(Z)V
    .locals 0
    .param p1, "resetStack"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->resetStack:Z

    .line 121
    return-void
.end method

.method public setResponse(Lcom/ta/mvc/common/TAResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/ta/mvc/common/TAResponse;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ta/mvc/controller/ActivityStackInfo;->response:Lcom/ta/mvc/common/TAResponse;

    .line 111
    return-void
.end method
