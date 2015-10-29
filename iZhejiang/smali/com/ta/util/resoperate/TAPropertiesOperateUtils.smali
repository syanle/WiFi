.class public Lcom/ta/util/resoperate/TAPropertiesOperateUtils;
.super Ljava/lang/Object;
.source "TAPropertiesOperateUtils.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProperties:Ljava/util/Properties;

.field private properFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->properFile:Ljava/io/File;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->properFile:Ljava/io/File;

    .line 47
    return-void
.end method

.method private getPro()Ljava/util/Properties;
    .locals 4

    .prologue
    .line 76
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 79
    .local v2, "props":Ljava/util/Properties;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->properFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 81
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mProperties:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getPro()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mProperties:Ljava/util/Properties;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mProperties:Ljava/util/Properties;

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
    .line 452
    .local p3, "entity":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 453
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    const-string v2, ""

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 488
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 456
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

    .line 458
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 478
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 481
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 459
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

    .line 461
    :cond_4
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getFloat(Ljava/lang/String;Ljava/lang/Float;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 482
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 485
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 462
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

    .line 464
    :cond_6
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getDouble(Ljava/lang/String;Ljava/lang/Double;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 465
    :cond_7
    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 467
    :cond_8
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getShort(Ljava/lang/String;Ljava/lang/Short;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 468
    :cond_9
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 470
    :cond_a
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 471
    :cond_b
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 473
    :cond_c
    const/16 v2, 0x8

    new-array v2, v2, [B

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getByte(Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 474
    :cond_d
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private setProperties(Ljava/util/Properties;)V
    .locals 4
    .param p1, "p"    # Ljava/util/Properties;

    .prologue
    .line 93
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->properFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 94
    .local v1, "out":Ljava/io/OutputStream;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1    # "out":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setValue(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "columnName"    # Ljava/lang/String;
    .param p3, "entity"    # Ljava/lang/Object;

    .prologue
    .line 380
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 381
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 384
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

    .line 386
    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 403
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 387
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

    .line 389
    :cond_4
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setFloat(Ljava/lang/String;F)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 407
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 410
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 390
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

    .line 392
    :cond_6
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p2, v2, v3}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 393
    :cond_7
    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 395
    :cond_8
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setShort(Ljava/lang/String;S)V

    goto/16 :goto_0

    .line 396
    :cond_9
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 398
    :cond_a
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p2, v2, v3}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 399
    :cond_b
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 513
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 514
    invoke-direct {p0, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setProperties(Ljava/util/Properties;)V

    .line 515
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public getBoolean(ILjava/lang/Boolean;)Z
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 187
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 192
    :goto_0
    return v0

    .line 188
    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getByte(I[B)[B
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # [B

    .prologue
    .line 281
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getByte(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getByte(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [B

    .prologue
    .line 200
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 205
    .end local p2    # "defaultValue":[B
    :goto_0
    return-object p2

    .line 201
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
    .line 418
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 419
    .local v4, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 422
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 423
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 445
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    :goto_1
    return-object v2

    .line 423
    .restart local v2    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    aget-object v3, v4, v5

    .line 425
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 426
    invoke-static {v3}, Lcom/ta/common/TAReflectUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 428
    invoke-static {v3}, Lcom/ta/common/TAReflectUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 431
    invoke-static {v3}, Lcom/ta/common/TAReflectUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "columnName":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 433
    invoke-direct {p0, v3, v0, v2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getValue(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 423
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 438
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 441
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 443
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDouble(ILjava/lang/Double;)D
    .locals 2
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Double;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getDouble(Ljava/lang/String;Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/Double;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Double;

    .prologue
    .line 252
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 257
    :goto_0
    return-wide v0

    .line 253
    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getFloat(ILjava/lang/Float;)F
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getFloat(Ljava/lang/String;Ljava/lang/Float;)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .prologue
    .line 239
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 244
    :goto_0
    return v0

    .line 240
    :catch_0
    move-exception v0

    .line 244
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public getInt(II)I
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 173
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 178
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 174
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLong(ILjava/lang/Long;)J
    .locals 2
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 226
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 231
    :goto_0
    return-wide v0

    .line 227
    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getShort(ILjava/lang/Short;)S
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Short;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getShort(Ljava/lang/String;Ljava/lang/Short;)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;Ljava/lang/Short;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Short;

    .prologue
    .line 213
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 218
    :goto_0
    return v0

    .line 214
    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 494
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    invoke-direct {p0, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setProperties(Ljava/util/Properties;)V

    .line 496
    return-void
.end method

.method public varargs remove([Ljava/lang/String;)V
    .locals 4
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 502
    .local v1, "props":Ljava/util/Properties;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 506
    invoke-direct {p0, v1}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setProperties(Ljava/util/Properties;)V

    .line 507
    return-void

    .line 502
    :cond_0
    aget-object v0, p1, v2

    .line 504
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setBoolean(ILjava/lang/Boolean;)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 324
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 129
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setByte(I[B)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # [B

    .prologue
    .line 329
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setByte(Ljava/lang/String;[B)V

    .line 330
    return-void
.end method

.method public setByte(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 135
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setConfig(Ljava/lang/Object;)V
    .locals 7
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 360
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 361
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 374
    return-void

    .line 361
    :cond_0
    aget-object v2, v3, v4

    .line 364
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {v2}, Lcom/ta/common/TAReflectUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 366
    invoke-static {v2}, Lcom/ta/common/TAReflectUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 368
    invoke-static {v2}, Lcom/ta/common/TAReflectUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "columnName":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 370
    invoke-direct {p0, v2, v1, p1}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setValue(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/Object;)V

    .line 361
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
    .line 353
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setDouble(Ljava/lang/String;D)V

    .line 354
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

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # F

    .prologue
    .line 347
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setFloat(Ljava/lang/String;F)V

    .line 348
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 153
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public setInt(II)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setInt(Ljava/lang/String;I)V

    .line 318
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 123
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setLong(IJ)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # J

    .prologue
    .line 341
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setLong(Ljava/lang/String;J)V

    .line 342
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 147
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public setProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    if-eqz p2, :cond_0

    .line 59
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 60
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    invoke-direct {p0, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setProperties(Ljava/util/Properties;)V

    .line 63
    .end local v0    # "props":Ljava/util/Properties;
    :cond_0
    return-void
.end method

.method public setShort(IS)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # S

    .prologue
    .line 335
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setShort(Ljava/lang/String;S)V

    .line 336
    return-void
.end method

.method public setShort(Ljava/lang/String;S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 141
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/ta/util/resoperate/TAPropertiesOperateUtils;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method
