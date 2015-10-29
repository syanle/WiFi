.class public abstract Lcom/umeng/socialize/controller/UMSsoHandler;
.super Ljava/lang/Object;
.source "UMSsoHandler.java"


# static fields
.field public static final DEFAULT_AUTH_ACTIVITY_CODE:I = 0xfa84

.field public static final DEFAULT_REQUEST_CODE:I = 0x0

.field public static final FACEBOOK_REQUEST_CODE:I = 0xface

.field public static final QQ_REQUEST_CODE:I = 0x161a

.field public static final QZONE_REQUEST_CODE:I = 0x1619

.field public static final SINA_REQUEST_CODE:I = 0x1624

.field public static final TENCENT_WB_REQUEST_CODE:I = 0x1625


# instance fields
.field protected isShareAfterLogin:Z

.field private mKey:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/controller/UMSsoHandler;->isShareAfterLogin:Z

    .line 18
    return-void
.end method


# virtual methods
.method public abstract authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
.end method

.method public abstract authorizeCallBack(IILandroid/content/Intent;)V
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMSsoHandler;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRequstCode()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMSsoHandler;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public isShareAfterLogin()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMSsoHandler;->isShareAfterLogin:Z

    return v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMSsoHandler;->mKey:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setShareAfterLogin(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/umeng/socialize/controller/UMSsoHandler;->isShareAfterLogin:Z

    .line 83
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMSsoHandler;->mToken:Ljava/lang/String;

    .line 55
    return-void
.end method
