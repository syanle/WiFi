.class public Lcom/umeng/socom/a/b;
.super Ljava/lang/Object;
.source "LayoutMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 17
    invoke-static {p0}, Lcom/umeng/socom/b;->a(Landroid/content/Context;)Lcom/umeng/socom/b;

    move-result-object v0

    const-string v1, "umeng_common_download_notification"

    invoke-virtual {v0, v1}, Lcom/umeng/socom/b;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
