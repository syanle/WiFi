.class public Lcom/ta/util/config/TAPreferenceConfig;
.super Ljava/lang/Object;
.source "TAPreferenceConfig.java"

# interfaces
.implements Lcom/ta/util/config/TAIConfig;


# static fields
.field private static mPreferenceConfig:Lcom/ta/util/config/TAIConfig;


# instance fields
.field private edit:Landroid/content/SharedPreferences$Editor;

.field private filename:Ljava/lang/String;

.field private isLoad:Ljava/lang/Boolean;

.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    .line 38
    const-string v0, "thinkandroid"

    iput-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->filename:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->isLoad:Ljava/lang/Boolean;

    .line 43
    iput-object p1, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static getPreferenceConfig(Landroid/content/Context;)Lcom/ta/util/config/TAIConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/ta/util/config/TAPreferenceConfig;->mPreferenceConfig:Lcom/ta/util/config/TAIConfig;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/ta/util/config/TAPreferenceConfig;

    invoke-direct {v0, p0}, Lcom/ta/util/config/TAPreferenceConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ta/util/config/TAPreferenceConfig;->mPreferenceConfig:Lcom/ta/util/config/TAIConfig;

    .line 59
    :cond_0
    sget-object v0, Lcom/ta/util/config/TAPreferenceConfig;->mPreferenceConfig:Lcom/ta/util/config/TAIConfig;

    return-object v0
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
    .line 449
    .local p3, "entity":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 450
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    const-string v2, ""

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPreferenceConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 484
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 453
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

    .line 455
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPreferenceConfig;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 475
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 478
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 456
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

    .line 458
    :cond_4
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPreferenceConfig;->getFloat(Ljava/lang/String;Ljava/lang/Float;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 479
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 459
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

    .line 461
    :cond_6
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPreferenceConfig;->getDouble(Ljava/lang/String;Ljava/lang/Double;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :cond_7
    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 464
    :cond_8
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPreferenceConfig;->getShort(Ljava/lang/String;Ljava/lang/Short;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 465
    :cond_9
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 467
    :cond_a
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPreferenceConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 468
    :cond_b
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 470
    :cond_c
    const/16 v2, 0x8

    new-array v2, v2, [B

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPreferenceConfig;->getByte(Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 471
    :cond_d
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPreferenceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

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
    .line 377
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 378
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPreferenceConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 381
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

    .line 383
    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPreferenceConfig;->setInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 400
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 384
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

    .line 386
    :cond_4
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPreferenceConfig;->setFloat(Ljava/lang/String;F)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 404
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 407
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 387
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

    .line 389
    :cond_6
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p2, v2, v3}, Lcom/ta/util/config/TAPreferenceConfig;->setDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 390
    :cond_7
    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 392
    :cond_8
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPreferenceConfig;->setShort(Ljava/lang/String;S)V

    goto/16 :goto_0

    .line 393
    :cond_9
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 395
    :cond_a
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p2, v2, v3}, Lcom/ta/util/config/TAPreferenceConfig;->setLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 396
    :cond_b
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPreferenceConfig;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 507
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 508
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public getBoolean(ILjava/lang/Boolean;)Z
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

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
    .line 321
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->getByte(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getByte(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [B

    .prologue
    .line 246
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPreferenceConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 251
    .end local p2    # "defaultValue":[B
    :goto_0
    return-object p2

    .line 247
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
    .line 416
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 417
    .local v4, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 420
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 421
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 442
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    :goto_1
    return-object v2

    .line 421
    .restart local v2    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    aget-object v3, v4, v5

    .line 423
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 424
    invoke-static {v3}, Lcom/ta/common/TAReflectUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 426
    invoke-static {v3}, Lcom/ta/common/TAReflectUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 428
    invoke-static {v3}, Lcom/ta/common/TAReflectUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "columnName":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 430
    invoke-direct {p0, v3, v0, v2}, Lcom/ta/util/config/TAPreferenceConfig;->getValue(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 421
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 438
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDouble(ILjava/lang/Double;)D
    .locals 2
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Double;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->getDouble(Ljava/lang/String;Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/Double;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Double;

    .prologue
    .line 288
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPreferenceConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 293
    :goto_0
    return-wide v0

    .line 289
    :catch_0
    move-exception v0

    .line 293
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getFloat(ILjava/lang/Float;)F
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->getFloat(Ljava/lang/String;Ljava/lang/Float;)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

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
    .line 307
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(ILjava/lang/Long;)J
    .locals 2
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

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
    .line 328
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->getShort(Ljava/lang/String;Ljava/lang/Short;)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;Ljava/lang/Short;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Short;

    .prologue
    .line 260
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPreferenceConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 265
    :goto_0
    return v0

    .line 261
    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadConfig()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->isLoad:Ljava/lang/Boolean;

    return-object v0
.end method

.method public loadConfig()V
    .locals 4

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ta/util/config/TAPreferenceConfig;->filename:Ljava/lang/String;

    .line 69
    const/4 v3, 0x2

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/util/config/TAPreferenceConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 70
    iget-object v1, p0, Lcom/ta/util/config/TAPreferenceConfig;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    .line 71
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/util/config/TAPreferenceConfig;->isLoad:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/ta/util/config/TAPreferenceConfig;->isLoad:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public open()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 491
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 492
    return-void
.end method

.method public varargs remove([Ljava/lang/String;)V
    .locals 3
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 498
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 500
    return-void

    .line 498
    :cond_0
    aget-object v0, p1, v1

    .line 499
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/ta/util/config/TAPreferenceConfig;->remove(Ljava/lang/String;)V

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBoolean(ILjava/lang/Boolean;)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 182
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method public setByte(I[B)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # [B

    .prologue
    .line 188
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->setByte(Ljava/lang/String;[B)V

    .line 189
    return-void
.end method

.method public setByte(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 129
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPreferenceConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setConfig(Ljava/lang/Object;)V
    .locals 7
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 356
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 357
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 358
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 371
    return-void

    .line 358
    :cond_0
    aget-object v2, v3, v4

    .line 361
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {v2}, Lcom/ta/common/TAReflectUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 363
    invoke-static {v2}, Lcom/ta/common/TAReflectUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 365
    invoke-static {v2}, Lcom/ta/common/TAReflectUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "columnName":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 367
    invoke-direct {p0, v2, v1, p1}, Lcom/ta/util/config/TAPreferenceConfig;->setValue(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/Object;)V

    .line 358
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
    .line 216
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/ta/util/config/TAPreferenceConfig;->setDouble(Ljava/lang/String;D)V

    .line 217
    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 159
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPreferenceConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # F

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->setFloat(Ljava/lang/String;F)V

    .line 210
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 152
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    return-void
.end method

.method public setInt(II)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->setInt(Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 114
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    return-void
.end method

.method public setLong(IJ)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # J

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/ta/util/config/TAPreferenceConfig;->setLong(Ljava/lang/String;J)V

    .line 203
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 143
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 144
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method

.method public setShort(IS)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # S

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->setShort(Ljava/lang/String;S)V

    .line 196
    return-void
.end method

.method public setShort(Ljava/lang/String;S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 136
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPreferenceConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPreferenceConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    iget-object v0, p0, Lcom/ta/util/config/TAPreferenceConfig;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    return-void
.end method
