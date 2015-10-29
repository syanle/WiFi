.class public final Lnet/youmi/android/a/a/e/c/a/f;
.super Lnet/youmi/android/a/a/e/a/b/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/youmi/android/a/a/e/a/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lnet/youmi/android/a/a/e/a/b/h;Lnet/youmi/android/a/a/e/a/b/f;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 30

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lnet/youmi/android/a/a/e/a/b/h;->h()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "b"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v10

    if-nez v10, :cond_2

    const/4 v1, 0x2

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const-string v5, "a"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v5, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_f

    const-string v1, "a"

    const/4 v2, 0x0

    invoke-static {v5, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "b"

    const-wide/16 v2, 0x0

    invoke-static {v5, v1, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    const-string v1, "c"

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "d"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    if-eqz v1, :cond_e

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_3

    aget-object v8, v5, v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lnet/youmi/android/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lnet/youmi/android/a/a/e/g/e;->p()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    :goto_2
    const/4 v1, 0x0

    const-string v2, "c"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_d

    new-instance v1, Lnet/youmi/android/a/a/e/g/b;

    invoke-direct {v1}, Lnet/youmi/android/a/a/e/g/b;-><init>()V

    const-string v3, "a"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/youmi/android/a/a/e/g/b;->a(Ljava/lang/String;)V

    const-string v3, "b"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/youmi/android/a/a/e/g/b;->b(Ljava/lang/String;)V

    const-string v3, "c"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/youmi/android/a/a/e/g/b;->c(Ljava/lang/String;)V

    const-string v3, "d"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/a/a/e/g/b;->d(Ljava/lang/String;)V

    move-object v4, v1

    :goto_3
    if-eqz v8, :cond_4

    if-nez v5, :cond_4

    const/4 v1, 0x2

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    const-string v1, "a"

    const/4 v2, -0x1

    invoke-static {v10, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v11

    if-gtz v11, :cond_5

    const/4 v1, 0x2

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    const-string v1, "b"

    const/4 v2, 0x0

    invoke-static {v10, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v12

    const-string v1, "c"

    const/4 v2, 0x0

    invoke-static {v10, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_6

    const/4 v1, 0x2

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const-string v1, "d"

    const/4 v2, 0x0

    invoke-static {v10, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_7

    const/4 v1, 0x2

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    const-string v1, "e"

    const/4 v2, 0x0

    invoke-static {v10, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v15

    const-string v1, "f"

    const/4 v2, 0x1

    invoke-static {v10, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    move v3, v1

    :goto_4
    const-string v1, "g"

    const/4 v2, 0x0

    invoke-static {v10, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_9

    const/4 v1, 0x2

    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    move v3, v1

    goto :goto_4

    :cond_9
    const-string v1, "h"

    const/4 v2, 0x0

    invoke-static {v10, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v1, "i"

    const/4 v2, 0x0

    invoke-static {v10, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "j"

    const/4 v2, 0x0

    invoke-static {v10, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v19

    const-string v1, "k"

    const/4 v2, 0x0

    invoke-static {v10, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v1, "l"

    const/4 v2, -0x1

    invoke-static {v10, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v21

    const-string v1, "m"

    const/4 v2, 0x1

    invoke-static {v10, v1, v2}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    move v2, v1

    :goto_5
    const-string v1, "n"

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-static {v10, v1, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v1, "o"

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-static {v10, v1, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v1, "p"

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-static {v10, v1, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v1, "q"

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-static {v10, v1, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v25

    const-string v1, "r"

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v10, v1, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v26

    const-string v1, "s"

    const-string v27, ""

    move-object/from16 v0, v27

    invoke-static {v10, v1, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v1, "t"

    const-string v28, ""

    move-object/from16 v0, v28

    invoke-static {v10, v1, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v1, "u"

    const/16 v29, 0x5

    move/from16 v0, v29

    invoke-static {v10, v1, v0}, Lnet/youmi/android/a/b/b/b;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    const/4 v10, 0x3

    if-eq v1, v10, :cond_a

    const/4 v10, 0x5

    if-eq v1, v10, :cond_a

    const/4 v1, 0x5

    :cond_a
    new-instance v10, Lnet/youmi/android/a/a/g/a/b/a;

    invoke-direct {v10}, Lnet/youmi/android/a/a/g/a/b/a;-><init>()V

    invoke-static {v14}, Lnet/youmi/android/a/b/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lnet/youmi/android/a/a/g/a/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Lnet/youmi/android/a/a/g/a/b/a;->d(I)V

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lnet/youmi/android/a/a/g/a/b/a;->c(Ljava/lang/String;)V

    invoke-static {v9}, Lnet/youmi/android/a/a/g/a/a/a;->a(Landroid/content/Context;)Lnet/youmi/android/a/a/g/a/a/a;

    move-result-object v1

    invoke-virtual {v1, v10}, Lnet/youmi/android/a/a/g/a/a/a;->b(Lnet/youmi/android/a/a/g/a/b/a;)Z

    new-instance v1, Lnet/youmi/android/a/a/a/a/a;

    invoke-direct {v1, v11, v12}, Lnet/youmi/android/a/a/a/a/a;-><init>(II)V

    new-instance v10, Lnet/youmi/android/a/a/a/a/g;

    invoke-direct {v10}, Lnet/youmi/android/a/a/a/a/g;-><init>()V

    invoke-virtual {v10, v13}, Lnet/youmi/android/a/a/a/a/g;->a(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Lnet/youmi/android/a/a/a/a/g;->b(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Lnet/youmi/android/a/a/a/a/g;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lnet/youmi/android/a/a/a/a/a;->a(Lnet/youmi/android/a/a/a/a/g;)V

    new-instance v10, Lnet/youmi/android/a/a/a/a/c;

    invoke-direct {v10}, Lnet/youmi/android/a/a/a/a/c;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lnet/youmi/android/a/a/a/a/c;->i(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lnet/youmi/android/a/a/a/a/a;->a(Lnet/youmi/android/a/a/a/a/c;)V

    new-instance v10, Lnet/youmi/android/a/a/a/a/d;

    invoke-direct {v10}, Lnet/youmi/android/a/a/a/a/d;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lnet/youmi/android/a/a/a/a/d;->a(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lnet/youmi/android/a/a/a/a/d;->b(Ljava/lang/String;)V

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lnet/youmi/android/a/a/a/a/d;->b(I)V

    invoke-virtual {v10, v15}, Lnet/youmi/android/a/a/a/a/d;->a(I)V

    invoke-virtual {v1, v10}, Lnet/youmi/android/a/a/a/a/a;->a(Lnet/youmi/android/a/a/a/a/d;)V

    new-instance v10, Lnet/youmi/android/a/a/a/a/f;

    invoke-direct {v10}, Lnet/youmi/android/a/a/a/a/f;-><init>()V

    invoke-virtual {v10, v3}, Lnet/youmi/android/a/a/a/a/f;->a(Z)V

    invoke-virtual {v1, v10}, Lnet/youmi/android/a/a/a/a/a;->a(Lnet/youmi/android/a/a/a/a/f;)V

    invoke-virtual {v10, v9, v14}, Lnet/youmi/android/a/a/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    new-instance v3, Lnet/youmi/android/a/a/e/g/a;

    invoke-direct {v3}, Lnet/youmi/android/a/a/e/g/a;-><init>()V

    invoke-virtual {v3, v1}, Lnet/youmi/android/a/a/e/g/a;->a(Lnet/youmi/android/a/a/a/a/a;)V

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/e/g/a;->a(I)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/e/g/a;->b(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/e/g/a;->c(Ljava/lang/String;)V

    move/from16 v0, v26

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v9, v1

    invoke-virtual {v3, v9, v10}, Lnet/youmi/android/a/a/e/g/a;->a(J)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/e/g/a;->d(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lnet/youmi/android/a/a/e/g/a;->a(Z)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/e/g/a;->a(Ljava/lang/String;)V

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lnet/youmi/android/a/a/e/g/a;->b(Z)V

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lnet/youmi/android/a/a/e/g/b;->e()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v3, v4}, Lnet/youmi/android/a/a/e/g/a;->a(Lnet/youmi/android/a/a/e/g/b;)V

    :cond_b
    new-instance v1, Lnet/youmi/android/a/a/e/g/f;

    invoke-direct {v1, v6, v7, v5, v8}, Lnet/youmi/android/a/a/e/g/f;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v1}, Lnet/youmi/android/a/a/e/a/b/h;->a(Lnet/youmi/android/a/a/e/g/a;Lnet/youmi/android/a/a/e/g/f;)Lnet/youmi/android/a/a/e/a;

    move-result-object v1

    sget-object v2, Lnet/youmi/android/a/a/e/c/a/g;->a:[I

    invoke-virtual {v1}, Lnet/youmi/android/a/a/e/a;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x3

    :goto_6
    invoke-static {v1}, Lnet/youmi/android/a/a/e/c/a/f;->a(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_5

    :pswitch_0
    const/4 v1, 0x4

    goto :goto_6

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_6

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_d
    move-object v4, v1

    goto/16 :goto_3

    :cond_e
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    goto/16 :goto_2

    :cond_f
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
