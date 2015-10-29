.class public final Lnet/youmi/android/a/a/e/c/a/e;
.super Lnet/youmi/android/a/a/e/a/b/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/youmi/android/a/a/e/a/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lnet/youmi/android/a/a/e/a/b/h;Lnet/youmi/android/a/a/e/a/b/f;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 20

    if-nez p1, :cond_0

    const/4 v3, 0x3

    :try_start_0
    invoke-static {v3}, Lnet/youmi/android/a/a/e/c/a/e;->a(I)Lorg/json/JSONObject;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-interface/range {p1 .. p1}, Lnet/youmi/android/a/a/e/a/b/h;->h()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v3, 0x3

    invoke-static {v3}, Lnet/youmi/android/a/a/e/c/a/e;->a(I)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-string v3, "a"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v3, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v5, "a"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "b"

    const-wide/16 v8, 0x0

    invoke-static {v3, v5, v8, v9}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v8

    const-string v5, "c"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_2
    const-string v3, "b"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v3, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v12

    if-nez v12, :cond_3

    const/4 v3, 0x2

    invoke-static {v3}, Lnet/youmi/android/a/a/e/c/a/e;->a(I)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-gtz v13, :cond_4

    const/4 v3, 0x2

    invoke-static {v3}, Lnet/youmi/android/a/a/e/c/a/e;->a(I)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    move v11, v3

    :goto_1
    if-ge v11, v13, :cond_a

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v12, v11, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_5

    const-string v3, "a"

    const/4 v5, 0x0

    invoke-static {v14, v3, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_1

    :cond_6
    const-string v3, "b"

    const/4 v5, -0x1

    invoke-static {v14, v3, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v16

    const-string v3, "c"

    const/4 v5, 0x0

    invoke-static {v14, v3, v5}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    move v5, v3

    :goto_3
    const-string v3, "d"

    const/16 v17, -0x3e7

    move/from16 v0, v17

    invoke-static {v14, v3, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v17

    const-string v3, "e"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v14, v3, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    :goto_4
    const-string v18, "f"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v14, v0, v1}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v18, Lnet/youmi/android/a/a/a/a/a;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/a/a/a/a/a;-><init>(II)V

    new-instance v17, Lnet/youmi/android/a/a/a/a/g;

    invoke-direct/range {v17 .. v17}, Lnet/youmi/android/a/a/a/a/g;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lnet/youmi/android/a/a/a/a/g;->b(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lnet/youmi/android/a/a/a/a/g;->a(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/youmi/android/a/a/a/a/a;->a(Lnet/youmi/android/a/a/a/a/g;)V

    if-lez v16, :cond_7

    new-instance v14, Lnet/youmi/android/a/a/a/a/d;

    invoke-direct {v14}, Lnet/youmi/android/a/a/a/a/d;-><init>()V

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lnet/youmi/android/a/a/a/a/d;->a(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lnet/youmi/android/a/a/a/a/a;->a(Lnet/youmi/android/a/a/a/a/d;)V

    :cond_7
    new-instance v14, Lnet/youmi/android/a/a/a/a/f;

    invoke-direct {v14}, Lnet/youmi/android/a/a/a/a/f;-><init>()V

    invoke-virtual {v14, v5}, Lnet/youmi/android/a/a/a/a/f;->a(Z)V

    invoke-virtual {v14, v3}, Lnet/youmi/android/a/a/a/a/f;->b(Z)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lnet/youmi/android/a/a/a/a/a;->a(Lnet/youmi/android/a/a/a/a/f;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v3

    goto/16 :goto_2

    :cond_8
    const/4 v3, 0x0

    move v5, v3

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    :try_start_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_b

    const/4 v3, 0x2

    invoke-static {v3}, Lnet/youmi/android/a/a/e/c/a/e;->a(I)Lorg/json/JSONObject;

    move-result-object v3

    goto/16 :goto_0

    :cond_b
    invoke-static {v4}, Lnet/youmi/android/a/a/g/a/a/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/a/a;

    move-result-object v11

    const/4 v3, 0x0

    move v5, v3

    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_f

    new-instance v12, Lnet/youmi/android/a/a/g/a/b/a;

    invoke-direct {v12}, Lnet/youmi/android/a/a/g/a/b/a;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/youmi/android/a/a/a/a/a;

    invoke-virtual {v3}, Lnet/youmi/android/a/a/a/a/a;->g()Lnet/youmi/android/a/a/a/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/a/a/a/a/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/youmi/android/a/b/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/youmi/android/a/a/a/a/a;

    invoke-virtual {v3}, Lnet/youmi/android/a/a/a/a/a;->g()Lnet/youmi/android/a/a/a/a/g;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/a/a/a/a/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lnet/youmi/android/a/a/g/a/b/a;->b(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lnet/youmi/android/a/a/g/a/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/youmi/android/a/a/a/a/a;

    invoke-virtual {v3}, Lnet/youmi/android/a/a/a/a/a;->e()Lnet/youmi/android/a/a/a/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/a/a/a/a/f;->a()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lnet/youmi/android/a/a/g/a/b/a;->b(I)V

    invoke-static {}, Lnet/youmi/android/a/a/g/a/f;->a()Lnet/youmi/android/a/a/g/a/f;

    move-result-object v3

    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v3, v13, v14, v15}, Lnet/youmi/android/a/a/g/a/f;->a(Ljava/lang/String;II)V

    :cond_c
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/youmi/android/a/a/a/a/a;

    invoke-virtual {v3}, Lnet/youmi/android/a/a/a/a/a;->e()Lnet/youmi/android/a/a/a/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/a/a/a/a/f;->b()Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lnet/youmi/android/a/a/g/a/b/a;->c(I)V

    invoke-static {}, Lnet/youmi/android/a/a/g/a/f;->a()Lnet/youmi/android/a/a/g/a/f;

    move-result-object v3

    const/16 v14, 0xd

    const/4 v15, 0x1

    invoke-virtual {v3, v13, v14, v15}, Lnet/youmi/android/a/a/g/a/f;->a(Ljava/lang/String;II)V

    :cond_d
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/youmi/android/a/a/a/a/a;

    invoke-virtual {v3}, Lnet/youmi/android/a/a/a/a/a;->a()I

    move-result v3

    invoke-virtual {v12, v3}, Lnet/youmi/android/a/a/g/a/b/a;->a(I)V

    invoke-virtual {v11, v13}, Lnet/youmi/android/a/a/g/a/a/a;->a(Ljava/lang/String;)Lnet/youmi/android/a/a/g/a/b/a;

    move-result-object v3

    if-nez v3, :cond_e

    invoke-virtual {v11, v12}, Lnet/youmi/android/a/a/g/a/a/a;->a(Lnet/youmi/android/a/a/g/a/b/a;)Z

    :goto_6
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_5

    :cond_e
    invoke-virtual {v11, v12}, Lnet/youmi/android/a/a/g/a/a/a;->b(Lnet/youmi/android/a/a/g/a/b/a;)Z

    goto :goto_6

    :catch_1
    move-exception v3

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_f
    new-instance v3, Lnet/youmi/android/a/a/e/f/g;

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v10}, Lnet/youmi/android/a/a/e/f/g;-><init>(Landroid/content/Context;Lnet/youmi/android/a/a/e/a/b/h;Ljava/util/ArrayList;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v3}, Lnet/youmi/android/a/c/a;->a(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lnet/youmi/android/a/a/e/c/a/e;->a(I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto/16 :goto_0
.end method
