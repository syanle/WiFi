.class enum Lcom/umeng/socialize/bean/h;
.super Lcom/umeng/socialize/bean/APP_PLATFORM;
.source "APP_PLATFORM.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/bean/APP_PLATFORM;-><init>(Ljava/lang/String;ILcom/umeng/socialize/bean/APP_PLATFORM;)V

    .line 1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "com.umeng.socialize.google+"

    return-object v0
.end method
