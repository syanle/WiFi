.class enum Lcom/umeng/socialize/bean/ai;
.super Lcom/umeng/socialize/bean/ShareType;
.source "ShareType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/bean/ShareType;-><init>(Ljava/lang/String;ILcom/umeng/socialize/bean/ShareType;)V

    .line 1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "normal"

    return-object v0
.end method
