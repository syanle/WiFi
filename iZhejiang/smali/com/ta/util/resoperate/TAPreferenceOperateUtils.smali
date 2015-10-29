.class public Lcom/ta/util/resoperate/TAPreferenceOperateUtils;
.super Ljava/lang/Object;
.source "TAPreferenceOperateUtils.java"


# instance fields
.field private edit:Landroid/content/SharedPreferences$Editor;

.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sharedPreferences"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 37
    iput-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    .line 71
    iput-object p1, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 73
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 58
    .line 59
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 60
    return-void
.end method

.method private getValue(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p3, "entity":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 391
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    const-string v2, ""

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 425
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 394
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 396
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 416
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 397
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_1
    const-class v2, Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 399
    :cond_4
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getFloat(Ljava/lang/String;Ljava/lang/Float;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 420
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 400
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :try_start_2
    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 402
    :cond_6
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getDouble(Ljava/lang/String;Ljava/lang/Double;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 403
    :cond_7
    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 405
    :cond_8
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getShort(Ljava/lang/String;Ljava/lang/Short;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 406
    :cond_9
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 408
    :cond_a
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 409
    :cond_b
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 411
    :cond_c
    const/16 v2, 0x8

    new-array v2, v2, [B

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getByte(Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 412
    :cond_d
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 414
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private setValue(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "entity"    # Ljava/lang/Object;

    .prologue
    .line 319
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 320
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 323
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 342
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 326
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_1
    const-class v2, Ljava/lang/Float;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 328
    :cond_4
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setFloat(Ljava/lang/String;F)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 346
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 329
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :try_start_2
    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 331
    :cond_6
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p2, v2, v3}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 332
    :cond_7
    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 334
    :cond_8
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setShort(Ljava/lang/String;S)V

    goto/16 :goto_0

    .line 335
    :cond_9
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 337
    :cond_a
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p2, v2, v3}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 338
    :cond_b
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 445
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 446
    return-void
.end method

.method public getBoolean(ILjava/lang/Boolean;)Z
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getByte(I[B)[B
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # [B

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getByte(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getByte(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [B

    .prologue
    .line 201
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 206
    .end local p2    # "defaultValue":[B
    :goto_0
    return-object p2

    .line 202
    .restart local p2    # "defaultValue":[B
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getConfig(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 358
    .local v4, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 361
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 362
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 383
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    :goto_1
    return-object v2

    .line 362
    .restart local v2    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    aget-object v3, v4, v5

    .line 364
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 365
    invoke-static {v3}, Lcom/ta/common/TAReflectUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 367
    invoke-static {v3}, Lcom/ta/common/TAReflectUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 369
    invoke-static {v3}, Lcom/ta/common/TAReflectUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "columnName":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 371
    invoke-direct {p0, v3, v0, v2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getValue(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 376
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 379
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 381
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDouble(ILjava/lang/Double;)D
    .locals 2
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Double;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getDouble(Ljava/lang/String;Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/Double;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Double;

    .prologue
    .line 239
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 244
    :goto_0
    return-wide v0

    .line 240
    :catch_0
    move-exception v0

    .line 244
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getFloat(ILjava/lang/Float;)F
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getFloat(Ljava/lang/String;Ljava/lang/Float;)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(II)I
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(ILjava/lang/Long;)J
    .locals 2
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(ILjava/lang/Short;)S
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Short;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getShort(Ljava/lang/String;Ljava/lang/Short;)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;Ljava/lang/Short;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Short;

    .prologue
    .line 214
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 219
    :goto_0
    return v0

    .line 215
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 431
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 432
    return-void
.end method

.method public varargs remove([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 437
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 439
    return-void

    .line 437
    :cond_0
    aget-object v0, p1, v1

    .line 438
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->remove(Ljava/lang/String;)V

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBoolean(ILjava/lang/Boolean;)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 146
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 94
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method

.method public setByte(I[B)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # [B

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setByte(Ljava/lang/String;[B)V

    .line 152
    return-void
.end method

.method public setByte(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 100
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public setConfig(Ljava/lang/Object;)V
    .locals 7
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 299
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 300
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 313
    return-void

    .line 300
    :cond_0
    aget-object v2, v3, v4

    .line 303
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {v2}, Lcom/ta/common/TAReflectUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 305
    invoke-static {v2}, Lcom/ta/common/TAReflectUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 307
    invoke-static {v2}, Lcom/ta/common/TAReflectUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "columnName":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 309
    invoke-direct {p0, v2, v1, p1}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setValue(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    .end local v1    # "columnName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setDouble(ID)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # D

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setDouble(Ljava/lang/String;D)V

    .line 176
    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 126
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # F

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setFloat(Ljava/lang/String;F)V

    .line 170
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 120
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void
.end method

.method public setInt(II)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setInt(Ljava/lang/String;I)V

    .line 140
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method

.method public setLong(IJ)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # J

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setLong(Ljava/lang/String;J)V

    .line 164
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 113
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method

.method public setShort(IS)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # S

    .prologue
    .line 157
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setShort(Ljava/lang/String;S)V

    .line 158
    return-void
.end method

.method public setShort(Ljava/lang/String;S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 106
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPreferenceOperateUtils;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    return-void
.end method
