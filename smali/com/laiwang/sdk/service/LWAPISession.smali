.class public Lcom/laiwang/sdk/service/LWAPISession;
.super Ljava/lang/Object;
.source "LWAPISession.java"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppTocken:Ljava/lang/String;

.field private mAwakeupURI:Ljava/lang/String;

.field private mIILWAPICallback:Lcom/laiwang/sdk/openapi/IILWAPICallback;

.field private mLWMessage:Lcom/laiwang/sdk/message/IILWMessage;

.field private mPackageName:Ljava/lang/String;

.field private mRandomKey:I

.field private mUID:I

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/laiwang/sdk/service/LWAPISession;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/laiwang/sdk/service/LWAPISession;->mAppTocken:Ljava/lang/String;

    return-object v0
.end method

.method public getAwakeupURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/laiwang/sdk/service/LWAPISession;->mAwakeupURI:Ljava/lang/String;

    return-object v0
.end method

.method public getLWAPICallback()Lcom/laiwang/sdk/openapi/IILWAPICallback;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/laiwang/sdk/service/LWAPISession;->mIILWAPICallback:Lcom/laiwang/sdk/openapi/IILWAPICallback;

    return-object v0
.end method

.method public getLWMessage()Lcom/laiwang/sdk/message/IILWMessage;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/laiwang/sdk/service/LWAPISession;->mLWMessage:Lcom/laiwang/sdk/message/IILWMessage;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/laiwang/sdk/service/LWAPISession;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomKey()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/laiwang/sdk/service/LWAPISession;->mRandomKey:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/laiwang/sdk/service/LWAPISession;->mVersion:I

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAppName"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/laiwang/sdk/service/LWAPISession;->mAppName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setAppToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "appToken"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/laiwang/sdk/service/LWAPISession;->mAppTocken:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setAwakeupURI(Ljava/lang/String;)V
    .locals 0
    .param p1, "awakeupURI"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/laiwang/sdk/service/LWAPISession;->mAwakeupURI:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setLWAPICallback(Lcom/laiwang/sdk/openapi/IILWAPICallback;)V
    .locals 0
    .param p1, "iLWAPICallback"    # Lcom/laiwang/sdk/openapi/IILWAPICallback;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/laiwang/sdk/service/LWAPISession;->mIILWAPICallback:Lcom/laiwang/sdk/openapi/IILWAPICallback;

    .line 44
    return-void
.end method

.method public setLWMessage(Lcom/laiwang/sdk/message/IILWMessage;)V
    .locals 0
    .param p1, "lwMessage"    # Lcom/laiwang/sdk/message/IILWMessage;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/laiwang/sdk/service/LWAPISession;->mLWMessage:Lcom/laiwang/sdk/message/IILWMessage;

    .line 60
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/laiwang/sdk/service/LWAPISession;->mPackageName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setRandomKey(I)V
    .locals 0
    .param p1, "nRandomKey"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/laiwang/sdk/service/LWAPISession;->mRandomKey:I

    .line 48
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/laiwang/sdk/service/LWAPISession;->mUID:I

    .line 37
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "mVersion"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/laiwang/sdk/service/LWAPISession;->mVersion:I

    .line 25
    return-void
.end method
