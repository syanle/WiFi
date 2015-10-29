.class public Lcom/umeng/socialize/bean/SnsPlatform;
.super Ljava/lang/Object;
.source "SnsPlatform.java"


# instance fields
.field private a:Ljava/lang/String;

.field public mAccount:Lcom/umeng/socialize/bean/SnsAccount;

.field public mBind:Z

.field public mGrayIcon:I

.field public mIcon:I

.field public mIndex:I

.field public mKeyword:Ljava/lang/String;

.field public mOauth:Z

.field public mShowWord:Ljava/lang/String;

.field public mUsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "Default Analytic Descriptor"

    iput-object v0, p0, Lcom/umeng/socialize/bean/SnsPlatform;->a:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getEntityDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/umeng/socialize/bean/SnsPlatform;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setEntityDescriptor(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iput-object p1, p0, Lcom/umeng/socialize/bean/SnsPlatform;->a:Ljava/lang/String;

    .line 40
    :cond_0
    return-void
.end method
