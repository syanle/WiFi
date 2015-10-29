.class public abstract Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;
.super Ljava/lang/Object;
.source "UMBaseScrShotImpl.java"

# interfaces
.implements Lcom/umeng/scrshot/adapter/UMAdapter;


# instance fields
.field protected final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/scrshot/impl/UMBaseScrShotImpl;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
