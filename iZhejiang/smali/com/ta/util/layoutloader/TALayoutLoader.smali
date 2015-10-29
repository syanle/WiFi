.class public Lcom/ta/util/layoutloader/TALayoutLoader;
.super Ljava/lang/Object;
.source "TALayoutLoader.java"

# interfaces
.implements Lcom/ta/util/layoutloader/TAILayoutLoader;


# static fields
.field private static instance:Lcom/ta/util/layoutloader/TALayoutLoader;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/ta/util/layoutloader/TALayoutLoader;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ta/util/layoutloader/TALayoutLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/ta/util/layoutloader/TALayoutLoader;->instance:Lcom/ta/util/layoutloader/TALayoutLoader;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/ta/util/layoutloader/TALayoutLoader;

    invoke-direct {v0, p0}, Lcom/ta/util/layoutloader/TALayoutLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ta/util/layoutloader/TALayoutLoader;->instance:Lcom/ta/util/layoutloader/TALayoutLoader;

    .line 59
    :cond_0
    sget-object v0, Lcom/ta/util/layoutloader/TALayoutLoader;->instance:Lcom/ta/util/layoutloader/TALayoutLoader;

    return-object v0
.end method


# virtual methods
.method public getLayoutID(Ljava/lang/String;)I
    .locals 2
    .param p1, "resIDName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Lcom/ta/exception/TANoSuchNameLayoutException;
        }
    .end annotation

    .prologue
    .line 79
    const-string v1, "layout"

    invoke-virtual {p0, v1, p1}, Lcom/ta/util/layoutloader/TALayoutLoader;->readResID(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, "resID":I
    if-nez v0, :cond_0

    .line 82
    new-instance v1, Lcom/ta/exception/TANoSuchNameLayoutException;

    invoke-direct {v1}, Lcom/ta/exception/TANoSuchNameLayoutException;-><init>()V

    throw v1

    .line 84
    :cond_0
    return v0
.end method

.method public readResClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p2, "respackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 132
    .local v0, "classes":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 141
    const/4 v2, 0x0

    :cond_0
    return-object v2

    .line 134
    :cond_1
    aget-object v2, v0, v1

    .line 135
    .local v2, "tempClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "TAReadSystemRes"

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readResID(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 3
    .param p2, "resIDName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 158
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 165
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 160
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 162
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    goto :goto_1

    .line 158
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readResID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "resIDName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v5, p0, Lcom/ta/util/layoutloader/TALayoutLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 103
    .local v4, "pm":Landroid/content/pm/PackageManager;
    iget-object v5, p0, Lcom/ta/util/layoutloader/TALayoutLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 104
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 105
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    :cond_0
    new-instance v5, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v6, "\u6ca1\u6709\u83b7\u53d6\u5230\u7cfb\u7edf\u5305\u540d\uff01"

    invoke-direct {v5, v6}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 109
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".R"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/ta/util/layoutloader/TALayoutLoader;->readResClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 112
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_2

    .line 114
    new-instance v5, Landroid/content/pm/PackageManager$NameNotFoundException;

    const-string v6, "\u6ca1\u53d1\u73b0\u8d44\u6e90\u5305\u540d\uff01"

    invoke-direct {v5, v6}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/ta/util/layoutloader/TALayoutLoader;->readResID(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    return v5
.end method
