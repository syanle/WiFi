.class public Lcom/umeng/socom/a/c;
.super Ljava/lang/Object;
.source "StringMapper.java"


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
    .line 18
    invoke-static {p0}, Lcom/umeng/socom/b;->a(Landroid/content/Context;)Lcom/umeng/socom/b;

    move-result-object v0

    const-string v1, "umeng_common_network_break_alert"

    invoke-virtual {v0, v1}, Lcom/umeng/socom/b;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 21
    invoke-static {p0}, Lcom/umeng/socom/b;->a(Landroid/content/Context;)Lcom/umeng/socom/b;

    move-result-object v0

    const-string v1, "umeng_common_action_info_exist"

    invoke-virtual {v0, v1}, Lcom/umeng/socom/b;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 24
    invoke-static {p0}, Lcom/umeng/socom/b;->a(Landroid/content/Context;)Lcom/umeng/socom/b;

    move-result-object v0

    const-string v1, "umeng_common_info_interrupt"

    invoke-virtual {v0, v1}, Lcom/umeng/socom/b;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 27
    invoke-static {p0}, Lcom/umeng/socom/b;->a(Landroid/content/Context;)Lcom/umeng/socom/b;

    move-result-object v0

    const-string v1, "umeng_common_action_pause"

    invoke-virtual {v0, v1}, Lcom/umeng/socom/b;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 30
    invoke-static {p0}, Lcom/umeng/socom/b;->a(Landroid/content/Context;)Lcom/umeng/socom/b;

    move-result-object v0

    const-string v1, "umeng_common_action_continue"

    invoke-virtual {v0, v1}, Lcom/umeng/socom/b;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 33
    invoke-static {p0}, Lcom/umeng/socom/b;->a(Landroid/content/Context;)Lcom/umeng/socom/b;

    move-result-object v0

    const-string v1, "umeng_common_action_cancel"

    invoke-virtual {v0, v1}, Lcom/umeng/socom/b;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 36
    invoke-static {p0}, Lcom/umeng/socom/b;->a(Landroid/content/Context;)Lcom/umeng/socom/b;

    move-result-object v0

    const-string v1, "umeng_common_download_notification_prefix"

    invoke-virtual {v0, v1}, Lcom/umeng/socom/b;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 39
    invoke-static {p0}, Lcom/umeng/socom/b;->a(Landroid/content/Context;)Lcom/umeng/socom/b;

    move-result-object v0

    const-string v1, "umeng_common_download_failed"

    invoke-virtual {v0, v1}, Lcom/umeng/socom/b;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
