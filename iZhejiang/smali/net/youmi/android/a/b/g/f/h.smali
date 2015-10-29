.class public Lnet/youmi/android/a/b/g/f/h;
.super Lnet/youmi/android/a/b/g/f/a;


# instance fields
.field private d:J

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x6a

    invoke-direct {p0, v0}, Lnet/youmi/android/a/b/g/f/a;-><init>(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/youmi/android/a/b/g/f/h;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/a/b/g/f/h;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/a/b/g/f/h;->f:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lnet/youmi/android/a/b/g/a/d;Lnet/youmi/android/a/b/g/e/a;Lnet/youmi/android/a/b/g/d/e;)V
    .locals 11

    invoke-super {p0, p1, p2, p3, p4}, Lnet/youmi/android/a/b/g/f/a;->a(Landroid/content/Context;Lnet/youmi/android/a/b/g/a/d;Lnet/youmi/android/a/b/g/e/a;Lnet/youmi/android/a/b/g/d/e;)V

    :try_start_0
    invoke-virtual {p2}, Lnet/youmi/android/a/b/g/a/d;->d()Ljava/io/File;

    move-result-object v9

    invoke-virtual {p2}, Lnet/youmi/android/a/b/g/a/d;->c()Ljava/io/File;

    move-result-object v10

    :goto_0
    iget-boolean v0, p0, Lnet/youmi/android/a/b/g/f/h;->f:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p2}, Lnet/youmi/android/a/b/g/a/d;->g()Lnet/youmi/android/a/b/g/a/c;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/a/b/g/f/h;->f:Z

    const/16 v0, 0x68

    invoke-virtual {p2, v0}, Lnet/youmi/android/a/b/g/a/d;->a(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Lnet/youmi/android/a/b/g/a/c;->a()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/youmi/android/a/b/g/f/h;->f:Z

    invoke-virtual {v0}, Lnet/youmi/android/a/b/g/a/c;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x67

    invoke-virtual {p2, v0}, Lnet/youmi/android/a/b/g/a/d;->a(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    :goto_2
    const-wide/16 v0, 0x5dc

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lnet/youmi/android/a/b/g/a/c;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x6b

    invoke-virtual {p2, v0}, Lnet/youmi/android/a/b/g/a/d;->a(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lnet/youmi/android/a/b/g/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x68

    invoke-virtual {p2, v0}, Lnet/youmi/android/a/b/g/a/d;->a(I)V

    goto :goto_1

    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x69

    invoke-virtual {p2, v0}, Lnet/youmi/android/a/b/g/a/d;->a(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lnet/youmi/android/a/b/g/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Lnet/youmi/android/a/b/g/a/d;->a(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lnet/youmi/android/a/b/g/a/d;->e()Lnet/youmi/android/a/b/g/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/b/g/e/a;->e()J

    move-result-wide v5

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-gtz v0, :cond_8

    iget v0, p0, Lnet/youmi/android/a/b/g/f/h;->e:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_8

    invoke-virtual {p2}, Lnet/youmi/android/a/b/g/a/d;->e()Lnet/youmi/android/a/b/g/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/a/b/g/e/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lnet/youmi/android/a/b/i/i;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {p2}, Lnet/youmi/android/a/b/g/a/d;->e()Lnet/youmi/android/a/b/g/e/a;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lnet/youmi/android/a/b/g/e/a;->a(J)V

    iget v0, p0, Lnet/youmi/android/a/b/g/f/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/youmi/android/a/b/g/f/h;->e:I

    :cond_8
    if-nez v9, :cond_9

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Lnet/youmi/android/a/b/g/a/d;->a(I)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v7

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-lez v0, :cond_a

    const-wide/16 v0, 0x64

    mul-long/2addr v0, v7

    div-long/2addr v0, v5

    long-to-int v2, v0

    :cond_a
    iget-wide v0, p0, Lnet/youmi/android/a/b/g/f/h;->d:J

    sub-long v0, v7, v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    const-wide/16 v3, 0x5dc

    div-long v3, v0, v3

    iput-wide v7, p0, Lnet/youmi/android/a/b/g/f/h;->d:J

    move-object v0, p4

    move-object v1, p3

    invoke-interface/range {v0 .. v8}, Lnet/youmi/android/a/b/g/d/e;->a(Lnet/youmi/android/a/b/g/e/a;IJJJ)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method
