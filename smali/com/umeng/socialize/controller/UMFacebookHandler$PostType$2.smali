.class enum Lcom/umeng/socialize/controller/UMFacebookHandler$PostType$2;
.super Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;
.source "UMFacebookHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;-><init>(Ljava/lang/String;ILcom/umeng/socialize/controller/UMFacebookHandler$PostType;)V

    .line 1
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "post_photo"

    return-object v0
.end method
