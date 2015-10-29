.class public Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;
.super Ljava/lang/Object;
.source "BaseFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/wifi_core/core/util/BaseFileHelper$FlushedInputStream;
    }
.end annotation


# static fields
.field protected static context:Landroid/content/Context;

.field private static fileHelper:Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;


# instance fields
.field protected rootDir:Ljava/io/File;

.field protected rootPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->fileHelper:Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;

    .line 18
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance(ZLandroid/content/Context;)Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;
    .locals 1
    .param p0, "isSDcard"    # Z
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->fileHelper:Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;

    if-nez v0, :cond_0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    invoke-static {}, Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;->getInstance()Lcom/pubinfo/wifi_core/core/util/SdCardFileHelper;

    move-result-object v0

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->fileHelper:Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;

    .line 27
    sget-object v0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->fileHelper:Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;

    if-nez v0, :cond_0

    .line 28
    invoke-static {p1}, Lcom/pubinfo/wifi_core/core/util/AppFileHelper;->getInstance(Landroid/content/Context;)Lcom/pubinfo/wifi_core/core/util/AppFileHelper;

    move-result-object v0

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->fileHelper:Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;

    .line 34
    :cond_0
    :goto_0
    sget-object v0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->fileHelper:Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;

    return-object v0

    .line 31
    :cond_1
    invoke-static {p1}, Lcom/pubinfo/wifi_core/core/util/AppFileHelper;->getInstance(Landroid/content/Context;)Lcom/pubinfo/wifi_core/core/util/AppFileHelper;

    move-result-object v0

    sput-object v0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->fileHelper:Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;

    goto :goto_0
.end method


# virtual methods
.method public create(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "appen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 83
    if-nez p1, :cond_0

    move-object v0, v4

    .line 98
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const/4 v2, 0x0

    .line 87
    .local v2, "out":Ljava/io/FileOutputStream;
    invoke-virtual {p0, p2, p3}, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->create(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 88
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_1

    move-object v0, v4

    .line 89
    goto :goto_0

    .line 91
    :cond_1
    const/16 v4, 0x800

    new-array v3, v4, [B

    .line 92
    .local v3, "temp":[B
    const/4 v1, -0x1

    .line 93
    .local v1, "len":I
    new-instance v2, Ljava/io/FileOutputStream;

    .end local v2    # "out":Ljava/io/FileOutputStream;
    invoke-direct {v2, v0, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 94
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_2

    .line 97
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 95
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->createDir(Ljava/lang/String;)Ljava/io/File;

    .line 47
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->rootDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 50
    .local v0, "bl":Z
    if-nez v0, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 54
    .end local v0    # "bl":Z
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method public createDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->rootPath:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 130
    .local v0, "bl":Z
    if-nez v0, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 134
    .end local v0    # "bl":Z
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method public declared-synchronized deleteDirectory(Ljava/io/File;)Z
    .locals 5
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 181
    monitor-enter p0

    if-nez p1, :cond_0

    .line 182
    :try_start_0
    iget-object p1, p0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->rootDir:Ljava/io/File;

    .line 184
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 185
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 186
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 193
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 186
    :cond_2
    :try_start_1
    aget-object v0, v1, v2

    .line 187
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 188
    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->deleteDirectory(Ljava/io/File;)Z

    .line 186
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 181
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public deleteFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->rootDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 68
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public download(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "in":Lcom/pubinfo/wifi_core/core/util/BaseFileHelper$FlushedInputStream;
    const/4 v0, 0x0

    .line 112
    .local v0, "con":Ljava/net/URLConnection;
    const/4 v2, 0x0

    .line 113
    .local v2, "url":Ljava/net/URL;
    new-instance v2, Ljava/net/URL;

    .end local v2    # "url":Ljava/net/URL;
    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 114
    .restart local v2    # "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 115
    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 116
    new-instance v1, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper$FlushedInputStream;

    .end local v1    # "in":Lcom/pubinfo/wifi_core/core/util/BaseFileHelper$FlushedInputStream;
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper$FlushedInputStream;-><init>(Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;Ljava/io/InputStream;)V

    .line 117
    .restart local v1    # "in":Lcom/pubinfo/wifi_core/core/util/BaseFileHelper$FlushedInputStream;
    return-object v1
.end method

.method public exists(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->rootPath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v0, "file":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->exists(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method public exists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->rootPath:Ljava/lang/String;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v0, "d":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    const/4 v2, 0x0

    .line 171
    :goto_0
    return v2

    .line 170
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v1, "file":Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/pubinfo/wifi_core/core/util/BaseFileHelper;->exists(Ljava/io/File;)Z

    move-result v2

    goto :goto_0
.end method
