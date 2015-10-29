.class public Lcom/bread/breadservice/BRDService;
.super Landroid/app/Service;
.source "BRDService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bread/breadservice/BRDService$ServiceBinder;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.bread.breadservice.action.brservice"

.field public static final ACTION_TAG:Ljava/lang/String; = "actioncode"

.field public static final ACTION_VALUE_DISABLE:I = 0x1004

.field public static final ACTION_VALUE_ENABLE:I = 0x1003

.field public static final ACTION_VALUE_RECEIVER:I = 0x1002

.field public static final ACTION_VALUE_START:I = 0x1001

.field public static final ACTION_VALUE_STOPSELF:I = 0x1000

.field public static JAR_DIR:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BRDService"


# instance fields
.field private isRestart:Z

.field private final mBinder:Lcom/bread/breadservice/BRDService$ServiceBinder;

.field private mgr:Lcom/bread/breadservice/IBRD;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".brdservice/download/jar/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bread/breadservice/BRDService;->JAR_DIR:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Lcom/bread/breadservice/BRDService$ServiceBinder;

    invoke-direct {v0, p0}, Lcom/bread/breadservice/BRDService$ServiceBinder;-><init>(Lcom/bread/breadservice/BRDService;)V

    iput-object v0, p0, Lcom/bread/breadservice/BRDService;->mBinder:Lcom/bread/breadservice/BRDService$ServiceBinder;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bread/breadservice/BRDService;->isRestart:Z

    .line 19
    return-void
.end method

.method private copyJarFromAssets(Ljava/lang/String;)Z
    .locals 10
    .param p1, "jarname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 191
    :goto_0
    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    .line 162
    .local v0, "bRet":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/bread/breadservice/BRDService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 163
    .local v5, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/File;

    sget-object v8, Lcom/bread/breadservice/BRDService;->JAR_DIR:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v6, "pfile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 165
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 166
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/bread/breadservice/BRDService;->JAR_DIR:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 168
    const-string v8, "BRDService"

    const-string v9, "do not need copy assert dexjar"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :cond_2
    const-string v8, "BRDService"

    const-string v9, "need copy assert dexjar"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 174
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 176
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v7, v8, [B

    .line 177
    .local v7, "temp":[B
    const/4 v4, 0x0

    .line 178
    .local v4, "i":I
    :goto_1
    invoke-virtual {v5, v7}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_3

    .line 181
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 182
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 183
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 185
    const/4 v0, 0x1

    goto :goto_0

    .line 179
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 187
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "pfile":Ljava/io/File;
    .end local v7    # "temp":[B
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getVersionDexjar(Ljava/lang/String;)I
    .locals 8
    .param p1, "dexjar"    # Ljava/lang/String;

    .prologue
    .line 274
    const-string v5, "BRDService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dexjar = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v4, -0x1

    .line 277
    .local v4, "version":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x9

    if-lt v5, v6, :cond_0

    .line 278
    const-string v5, ".jar"

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 279
    :cond_0
    const/4 v5, -0x1

    .line 290
    :goto_0
    return v5

    .line 281
    :cond_1
    :try_start_0
    const-string v5, "-"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 282
    .local v2, "posStart":I
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 283
    .local v1, "posEnd":I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "verStr":Ljava/lang/String;
    const-string v5, "BRDService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "verStr = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 289
    .end local v1    # "posEnd":I
    .end local v2    # "posStart":I
    .end local v3    # "verStr":Ljava/lang/String;
    :goto_1
    const-string v5, "BRDService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "version = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .line 290
    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private initDexjar()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 198
    const/4 v10, -0x1

    .line 199
    .local v10, "verJarAssert":I
    const/4 v8, 0x0

    .line 200
    .local v8, "nameJarAssert":Ljava/lang/String;
    const/4 v0, 0x0

    .line 204
    .local v0, "curMaxJar":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/bread/breadservice/BRDService;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "files":[Ljava/lang/String;
    array-length v13, v4

    move v12, v11

    :goto_0
    if-lt v12, v13, :cond_0

    .line 214
    :goto_1
    new-instance v1, Ljava/io/File;

    sget-object v12, Lcom/bread/breadservice/BRDService;->JAR_DIR:Ljava/lang/String;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_3

    .line 217
    invoke-direct {p0, v8}, Lcom/bread/breadservice/BRDService;->copyJarFromAssets(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    move-object v0, v8

    .line 265
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "files":[Ljava/lang/String;
    :goto_2
    const-string v11, "BRDService"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "curMaxJar = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-object v0

    .line 206
    .restart local v4    # "files":[Ljava/lang/String;
    :cond_0
    :try_start_1
    aget-object v3, v4, v12

    .line 207
    .local v3, "f":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v14, "bread-"

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 206
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 210
    :cond_2
    invoke-direct {p0, v3}, Lcom/bread/breadservice/BRDService;->getVersionDexjar(Ljava/lang/String;)I

    move-result v10

    .line 211
    move-object v8, v3

    .line 212
    goto :goto_1

    .line 223
    .end local v3    # "f":Ljava/lang/String;
    .restart local v1    # "dir":Ljava/io/File;
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 224
    .local v5, "jars":[Ljava/io/File;
    if-eqz v5, :cond_9

    array-length v12, v5

    const/4 v13, 0x1

    if-lt v12, v13, :cond_9

    .line 225
    const/4 v6, 0x0

    .line 226
    .local v6, "maxjar":Ljava/io/File;
    const/4 v7, -0x1

    .line 227
    .local v7, "maxver":I
    array-length v12, v5

    :goto_3
    if-lt v11, v12, :cond_5

    .line 241
    if-nez v6, :cond_4

    .line 243
    invoke-direct {p0, v8}, Lcom/bread/breadservice/BRDService;->copyJarFromAssets(Ljava/lang/String;)Z

    .line 244
    move-object v0, v8

    .line 247
    :cond_4
    const/4 v11, -0x1

    if-eq v7, v11, :cond_8

    if-ge v7, v10, :cond_8

    .line 248
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 249
    invoke-direct {p0, v8}, Lcom/bread/breadservice/BRDService;->copyJarFromAssets(Ljava/lang/String;)Z

    .line 250
    move-object v0, v8

    .line 251
    goto :goto_2

    .line 227
    :cond_5
    aget-object v3, v5, v11

    .line 228
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v13}, Lcom/bread/breadservice/BRDService;->getVersionDexjar(Ljava/lang/String;)I

    move-result v9

    .line 229
    .local v9, "ver":I
    if-ge v9, v7, :cond_6

    .line 231
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 227
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 233
    :cond_6
    if-eqz v6, :cond_7

    .line 234
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 236
    :cond_7
    move v7, v9

    .line 237
    move-object v6, v3

    goto :goto_4

    .line 252
    .end local v3    # "f":Ljava/io/File;
    .end local v9    # "ver":I
    :cond_8
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 255
    goto :goto_2

    .line 257
    .end local v6    # "maxjar":Ljava/io/File;
    .end local v7    # "maxver":I
    :cond_9
    invoke-direct {p0, v8}, Lcom/bread/breadservice/BRDService;->copyJarFromAssets(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    move-object v0, v8

    goto :goto_2

    .line 261
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "files":[Ljava/lang/String;
    .end local v5    # "jars":[Ljava/io/File;
    :catch_0
    move-exception v2

    .line 263
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private loadDex(Ljava/lang/String;)Lcom/bread/breadservice/IBRD;
    .locals 10
    .param p1, "jarpath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 127
    const-string v7, "BRDservice"

    invoke-virtual {p0, v7, v8}, Lcom/bread/breadservice/BRDService;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    .line 130
    .local v6, "optimizedDexOutputPath":Ljava/io/File;
    const/4 v4, 0x0

    .line 132
    .local v4, "lib":Lcom/bread/breadservice/IBRD;
    :try_start_0
    new-instance v1, Ldalvik/system/DexClassLoader;

    .line 133
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/bread/breadservice/BRDService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 132
    invoke-direct {v1, p1, v7, v8, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 135
    .local v1, "cl":Ldalvik/system/DexClassLoader;
    const-string v7, "BRDService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "jarpath = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v5, 0x0

    .line 137
    .local v5, "libClazz":Ljava/lang/Class;
    const-string v7, "com.bread.breadservice.core.BRMgr"

    invoke-virtual {v1, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 138
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 139
    aput-object p0, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/bread/breadservice/IBRD;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "cl":Ldalvik/system/DexClassLoader;
    .end local v5    # "libClazz":Ljava/lang/Class;
    :goto_0
    if-nez v4, :cond_0

    .line 146
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "dexjar":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .end local v2    # "dexjar":Ljava/io/File;
    :cond_0
    :goto_1
    return-object v4

    .line 140
    :catch_0
    move-exception v3

    .line 141
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "BRDService"

    const-string v8, "load jar error!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 150
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bread/breadservice/BRDService;->mBinder:Lcom/bread/breadservice/BRDService$ServiceBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    invoke-direct {p0}, Lcom/bread/breadservice/BRDService;->initDexjar()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "jarname":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/bread/breadservice/BRDService;->JAR_DIR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bread/breadservice/BRDService;->loadDex(Ljava/lang/String;)Lcom/bread/breadservice/IBRD;

    move-result-object v1

    iput-object v1, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    .line 59
    const-string v1, "BRDService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mgr = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    invoke-direct {p0, v0}, Lcom/bread/breadservice/BRDService;->getVersionDexjar(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bread/breadservice/IBRD;->create(I)V

    .line 63
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "BRDService"

    const-string v1, "onDestroy ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    invoke-interface {v0}, Lcom/bread/breadservice/IBRD;->destory()V

    .line 113
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    .line 114
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 115
    iget-boolean v0, p0, Lcom/bread/breadservice/BRDService;->isRestart:Z

    if-eqz v0, :cond_1

    .line 116
    invoke-static {p0}, Lcom/bread/breadservice/BRD;->startBRDService(Landroid/content/Context;)V

    .line 117
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x0

    .line 67
    const-string v1, "BRDService"

    const-string v2, "onStartCommand ..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "actioncode"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 105
    .end local v0    # "tag":I
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 72
    .restart local v0    # "tag":I
    :pswitch_0
    const-string v1, "BRDService"

    const-string v2, "ACTION_VALUE_STOPSELF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    if-eqz v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    invoke-interface {v1}, Lcom/bread/breadservice/IBRD;->stopself()V

    .line 75
    :cond_1
    iput-boolean v3, p0, Lcom/bread/breadservice/BRDService;->isRestart:Z

    goto :goto_0

    .line 79
    :pswitch_1
    const-string v1, "BRDService"

    const-string v2, "ACTION_VALUE_START"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    invoke-interface {v1}, Lcom/bread/breadservice/IBRD;->start()V

    goto :goto_0

    .line 85
    :pswitch_2
    const-string v1, "BRDService"

    const-string v2, "ACTION_VALUE_RECEIVER"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    invoke-interface {v1}, Lcom/bread/breadservice/IBRD;->receiver()V

    goto :goto_0

    .line 91
    :pswitch_3
    iget-object v1, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    invoke-interface {v1}, Lcom/bread/breadservice/IBRD;->enable()V

    goto :goto_0

    .line 96
    :pswitch_4
    iget-object v1, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/bread/breadservice/BRDService;->mgr:Lcom/bread/breadservice/IBRD;

    invoke-interface {v1}, Lcom/bread/breadservice/IBRD;->disable()V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
