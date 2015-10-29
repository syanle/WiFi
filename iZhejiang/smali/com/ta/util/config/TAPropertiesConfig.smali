.class public Lcom/ta/util/config/TAPropertiesConfig;
.super Ljava/lang/Object;
.source "TAPropertiesConfig.java"

# interfaces
.implements Lcom/ta/util/config/TAIConfig;


# static fields
.field private static final LOADFLAG:Ljava/lang/String; = "assetsload"

.field private static mPropertiesConfig:Lcom/ta/util/config/TAPropertiesConfig;


# instance fields
.field private assetsPath:Ljava/lang/String;

.field private filesPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mProperties:Ljava/util/Properties;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "/assets/tacdonfig.properties"

    iput-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->assetsPath:Ljava/lang/String;

    .line 41
    const-string v0, "tacdonfig.properties"

    iput-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->filesPath:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private getPro()Ljava/util/Properties;
    .locals 5

    .prologue
    .line 156
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 159
    .local v2, "props":Ljava/util/Properties;
    :try_start_0
    iget-object v3, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ta/util/config/TAPropertiesConfig;->filesPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 160
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mProperties:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/ta/util/config/TAPropertiesConfig;->getPro()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mProperties:Ljava/util/Properties;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public static getPropertiesConfig(Landroid/content/Context;)Lcom/ta/util/config/TAPropertiesConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, Lcom/ta/util/config/TAPropertiesConfig;->mPropertiesConfig:Lcom/ta/util/config/TAPropertiesConfig;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/ta/util/config/TAPropertiesConfig;

    invoke-direct {v0, p0}, Lcom/ta/util/config/TAPropertiesConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ta/util/config/TAPropertiesConfig;->mPropertiesConfig:Lcom/ta/util/config/TAPropertiesConfig;

    .line 64
    :cond_0
    sget-object v0, Lcom/ta/util/config/TAPropertiesConfig;->mPropertiesConfig:Lcom/ta/util/config/TAPropertiesConfig;

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
    .line 574
    .local p3, "entity":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 575
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    const-string v2, ""

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPropertiesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 610
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 578
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

    .line 580
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPropertiesConfig;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 600
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 603
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 581
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

    .line 583
    :cond_4
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPropertiesConfig;->getFloat(Ljava/lang/String;Ljava/lang/Float;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 604
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 607
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 584
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

    .line 586
    :cond_6
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPropertiesConfig;->getDouble(Ljava/lang/String;Ljava/lang/Double;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 587
    :cond_7
    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 589
    :cond_8
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPropertiesConfig;->getShort(Ljava/lang/String;Ljava/lang/Short;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 590
    :cond_9
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 592
    :cond_a
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPropertiesConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 593
    :cond_b
    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 595
    :cond_c
    const/16 v2, 0x8

    new-array v2, v2, [B

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPropertiesConfig;->getByte(Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 596
    :cond_d
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPropertiesConfig;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

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
    .locals 5
    .param p1, "p"    # Ljava/util/Properties;

    .prologue
    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ta/util/config/TAPropertiesConfig;->filesPath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 174
    .local v1, "out":Ljava/io/OutputStream;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "out":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
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
    .line 501
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 502
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 504
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPropertiesConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 505
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

    .line 507
    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPropertiesConfig;->setInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 524
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 527
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 508
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

    .line 510
    :cond_4
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPropertiesConfig;->setFloat(Ljava/lang/String;F)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 528
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 511
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

    .line 513
    :cond_6
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p2, v2, v3}, Lcom/ta/util/config/TAPropertiesConfig;->setDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 514
    :cond_7
    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 516
    :cond_8
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPropertiesConfig;->setShort(Ljava/lang/String;S)V

    goto/16 :goto_0

    .line 517
    :cond_9
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 519
    :cond_a
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p2, v2, v3}, Lcom/ta/util/config/TAPropertiesConfig;->setLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 520
    :cond_b
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2, v2}, Lcom/ta/util/config/TAPropertiesConfig;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/ta/util/config/TAPropertiesConfig;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 638
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {v0}, Ljava/util/Properties;->clear()V

    .line 639
    invoke-direct {p0, v0}, Lcom/ta/util/config/TAPropertiesConfig;->setProperties(Ljava/util/Properties;)V

    .line 640
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public getAssetsPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->assetsPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBoolean(ILjava/lang/Boolean;)Z
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 286
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 291
    :goto_0
    return v0

    .line 287
    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getByte(I[B)[B
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # [B

    .prologue
    .line 389
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->getByte(Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getByte(Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [B

    .prologue
    .line 300
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 305
    .end local p2    # "defaultValue":[B
    :goto_0
    return-object p2

    .line 301
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
    .line 540
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 541
    .local v4, "fields":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 544
    .local v2, "entity":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 545
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 567
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    :goto_1
    return-object v2

    .line 545
    .restart local v2    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    aget-object v3, v4, v5

    .line 547
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 548
    invoke-static {v3}, Lcom/ta/common/TAReflectUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 550
    invoke-static {v3}, Lcom/ta/common/TAReflectUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 553
    invoke-static {v3}, Lcom/ta/common/TAReflectUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "columnName":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 555
    invoke-direct {p0, v3, v0, v2}, Lcom/ta/util/config/TAPropertiesConfig;->getValue(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 545
    .end local v0    # "columnName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 560
    .end local v2    # "entity":Ljava/lang/Object;, "TT;"
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 562
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 563
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 565
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/ta/util/config/TAPropertiesConfig;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(ILjava/lang/Double;)D
    .locals 2
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Double;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->getDouble(Ljava/lang/String;Ljava/lang/Double;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/Double;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Double;

    .prologue
    .line 356
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 361
    :goto_0
    return-wide v0

    .line 357
    :catch_0
    move-exception v0

    .line 361
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getFilesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->filesPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFloat(ILjava/lang/Float;)F
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->getFloat(Ljava/lang/String;Ljava/lang/Float;)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;Ljava/lang/Float;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Float;

    .prologue
    .line 342
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 347
    :goto_0
    return v0

    .line 343
    :catch_0
    move-exception v0

    .line 347
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public getInt(II)I
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 271
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 276
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 272
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
    .line 403
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/Long;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 328
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 333
    :goto_0
    return-wide v0

    .line 329
    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getShort(ILjava/lang/Short;)S
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/Short;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->getShort(Ljava/lang/String;Ljava/lang/Short;)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;Ljava/lang/Short;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Short;

    .prologue
    .line 314
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 319
    :goto_0
    return v0

    .line 315
    :catch_0
    move-exception v0

    .line 319
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "resID"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/ta/util/config/TAPropertiesConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadConfig()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 105
    const-string v0, "assetsload"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ta/util/config/TAPropertiesConfig;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public loadConfig()V
    .locals 8

    .prologue
    .line 71
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 72
    .local v4, "props":Ljava/util/Properties;
    const-class v6, Lcom/ta/util/config/TAPropertiesConfig;

    .line 73
    iget-object v7, p0, Lcom/ta/util/config/TAPropertiesConfig;->assetsPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 76
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 79
    invoke-virtual {v4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 80
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_1

    .line 89
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    const-string v6, "assetsload"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/ta/util/config/TAPropertiesConfig;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 100
    :goto_1
    return-void

    .line 84
    .restart local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 85
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 90
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v5    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public open()V
    .locals 0

    .prologue
    .line 647
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/ta/util/config/TAPropertiesConfig;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 617
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-direct {p0, v0}, Lcom/ta/util/config/TAPropertiesConfig;->setProperties(Ljava/util/Properties;)V

    .line 619
    return-void
.end method

.method public varargs remove([Ljava/lang/String;)V
    .locals 4
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/ta/util/config/TAPropertiesConfig;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 626
    .local v1, "props":Ljava/util/Properties;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 630
    invoke-direct {p0, v1}, Lcom/ta/util/config/TAPropertiesConfig;->setProperties(Ljava/util/Properties;)V

    .line 631
    return-void

    .line 626
    :cond_0
    aget-object v0, p1, v2

    .line 628
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setAssetsPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "assetsPath"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/ta/util/config/TAPropertiesConfig;->assetsPath:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setBoolean(ILjava/lang/Boolean;)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 439
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 214
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public setByte(I[B)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # [B

    .prologue
    .line 445
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->setByte(Ljava/lang/String;[B)V

    .line 446
    return-void
.end method

.method public setByte(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 221
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public setConfig(Ljava/lang/Object;)V
    .locals 7
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 480
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 481
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 482
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 495
    return-void

    .line 482
    :cond_0
    aget-object v2, v3, v4

    .line 485
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {v2}, Lcom/ta/common/TAReflectUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 487
    invoke-static {v2}, Lcom/ta/common/TAReflectUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 489
    invoke-static {v2}, Lcom/ta/common/TAReflectUtils;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "columnName":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 491
    invoke-direct {p0, v2, v1, p1}, Lcom/ta/util/config/TAPropertiesConfig;->setValue(Ljava/lang/reflect/Field;Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    .end local v1    # "columnName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    if-eqz p2, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/ta/util/config/TAPropertiesConfig;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 114
    .local v0, "props":Ljava/util/Properties;
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    invoke-direct {p0, v0}, Lcom/ta/util/config/TAPropertiesConfig;->setProperties(Ljava/util/Properties;)V

    .line 118
    .end local v0    # "props":Ljava/util/Properties;
    :cond_0
    return-void
.end method

.method public setDouble(ID)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # D

    .prologue
    .line 473
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/ta/util/config/TAPropertiesConfig;->setDouble(Ljava/lang/String;D)V

    .line 474
    return-void
.end method

.method public setDouble(Ljava/lang/String;D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 249
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public setFilesPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "filesPath"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ta/util/config/TAPropertiesConfig;->filesPath:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # F

    .prologue
    .line 466
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->setFloat(Ljava/lang/String;F)V

    .line 467
    return-void
.end method

.method public setFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 242
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public setInt(II)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->setInt(Ljava/lang/String;I)V

    .line 432
    return-void
.end method

.method public setInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 207
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public setLong(IJ)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # J

    .prologue
    .line 459
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/ta/util/config/TAPropertiesConfig;->setLong(Ljava/lang/String;J)V

    .line 460
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 235
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public setShort(IS)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # S

    .prologue
    .line 452
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->setShort(Ljava/lang/String;S)V

    .line 453
    return-void
.end method

.method public setShort(Ljava/lang/String;S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 228
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ta/util/config/TAPropertiesConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .locals 1
    .param p1, "resID"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/ta/util/config/TAPropertiesConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/ta/util/config/TAPropertiesConfig;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/ta/util/config/TAPropertiesConfig;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method
