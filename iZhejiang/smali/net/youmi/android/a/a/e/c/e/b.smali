.class public final Lnet/youmi/android/a/a/e/c/e/b;
.super Lnet/youmi/android/a/a/e/a/b/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/youmi/android/a/a/e/a/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lnet/youmi/android/a/a/e/a/b/h;Lnet/youmi/android/a/a/e/a/b/f;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 22

    if-nez p1, :cond_0

    const/4 v1, 0x3

    :try_start_0
    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/e/b;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-interface/range {p1 .. p1}, Lnet/youmi/android/a/a/e/a/b/h;->h()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x3

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/e/b;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "a"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v1, 0x2

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/e/b;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "b"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v5, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v1, "c"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v1, 0x2

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/e/b;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, "d"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v1, 0x2

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/e/b;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v1, "e"

    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v8

    const-string v1, "f"

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v10}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const-string v10, "g"

    const-string v11, "a_js"

    move-object/from16 v0, p3

    invoke-static {v0, v10, v11}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v10, "h"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v10, v12}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/youmi/android/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lnet/youmi/android/a/a/e/g/e;->p()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    const/4 v10, 0x1

    if-ne v1, v10, :cond_6

    const/4 v10, 0x1

    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v1, v8, v12

    if-lez v1, :cond_7

    const-wide/16 v12, 0x3e8

    mul-long/2addr v8, v12

    new-instance v1, Lnet/youmi/android/a/a/e/f/d;

    invoke-interface/range {p1 .. p1}, Lnet/youmi/android/a/a/e/a/b/h;->k()I

    move-result v12

    invoke-direct/range {v1 .. v12}, Lnet/youmi/android/a/a/e/f/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;I)V

    :goto_2
    invoke-static {v1}, Lnet/youmi/android/a/c/a;->a(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/e/b;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    :cond_7
    new-instance v12, Lnet/youmi/android/a/a/e/f/d;

    invoke-interface/range {p1 .. p1}, Lnet/youmi/android/a/a/e/a/b/h;->k()I

    move-result v21

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-wide/from16 v17, v6

    move/from16 v19, v10

    move-object/from16 v20, v11

    invoke-direct/range {v12 .. v21}, Lnet/youmi/android/a/a/e/f/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v12

    goto :goto_2

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto/16 :goto_0
.end method
