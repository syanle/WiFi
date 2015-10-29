.class public Lcom/umeng/socialize/bean/UMToken;
.super Lcom/umeng/socialize/bean/SNSPair;
.source "UMToken.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/bean/SNSPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static buildToken(Lcom/umeng/socialize/bean/SNSPair;Ljava/lang/String;)Lcom/umeng/socialize/bean/UMToken;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/umeng/socialize/bean/UMToken;

    iget-object v1, p0, Lcom/umeng/socialize/bean/SNSPair;->mPaltform:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/bean/SNSPair;->mUsid:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/UMToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/UMToken;->setToken(Ljava/lang/String;)V

    .line 54
    return-object v0
.end method

.method public static buildToken(Lcom/umeng/socialize/bean/SNSPair;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/bean/UMToken;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/umeng/socialize/bean/UMToken;

    iget-object v1, p0, Lcom/umeng/socialize/bean/SNSPair;->mPaltform:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/bean/SNSPair;->mUsid:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/UMToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/UMToken;->setToken(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p2}, Lcom/umeng/socialize/bean/UMToken;->setOpenId(Ljava/lang/String;)V

    .line 68
    return-object v0
.end method


# virtual methods
.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMToken;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/umeng/socialize/bean/UMToken;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/umeng/socialize/bean/UMToken;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/umeng/socialize/bean/UMToken;->a:Ljava/lang/String;

    .line 34
    return-void
.end method
