.class public Lnet/youmi/android/a/b/g/f/i;
.super Lnet/youmi/android/a/b/g/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lnet/youmi/android/a/b/g/f/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lnet/youmi/android/a/b/g/a/d;Lnet/youmi/android/a/b/g/e/a;Lnet/youmi/android/a/b/g/d/e;)V
    .locals 11

    invoke-super {p0, p1, p2, p3, p4}, Lnet/youmi/android/a/b/g/f/a;->a(Landroid/content/Context;Lnet/youmi/android/a/b/g/a/d;Lnet/youmi/android/a/b/g/e/a;Lnet/youmi/android/a/b/g/d/e;)V

    :try_start_0
    invoke-virtual {p2}, Lnet/youmi/android/a/b/g/a/d;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p2}, Lnet/youmi/android/a/b/g/a/d;->f()Lnet/youmi/android/a/b/g/d/b;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {p4, p3}, Lnet/youmi/android/a/b/g/d/e;->d(Lnet/youmi/android/a/b/g/e/a;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-interface {v2, p3}, Lnet/youmi/android/a/b/g/d/b;->g_(Lnet/youmi/android/a/b/g/e/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p3}, Lnet/youmi/android/a/b/g/e/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lnet/youmi/android/a/b/i/i;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p3}, Lnet/youmi/android/a/b/g/e/a;->e()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_1

    invoke-virtual {p3, v5, v6}, Lnet/youmi/android/a/b/g/e/a;->a(J)V

    :cond_1
    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v2, p3}, Lnet/youmi/android/a/b/g/d/b;->i(Lnet/youmi/android/a/b/g/e/a;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {p4, p3}, Lnet/youmi/android/a/b/g/d/e;->d(Lnet/youmi/android/a/b/g/e/a;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Lnet/youmi/android/a/b/g/a/d;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
