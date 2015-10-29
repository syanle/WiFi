.class public Lcom/ta/util/log/TAPrintToFileLogger;
.super Ljava/lang/Object;
.source "TAPrintToFileLogger.java"

# interfaces
.implements Lcom/ta/util/log/ILogger;


# static fields
.field public static final ASSERT:I = 0x7

.field private static BASE_FILENAME:Ljava/lang/String; = null

.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field private static LOG_DIR:Ljava/lang/String; = null

.field private static final TIMESTAMP_FMT:Ljava/text/SimpleDateFormat;

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5


# instance fields
.field private basePath:Ljava/lang/String;

.field private logDir:Ljava/io/File;

.field private mPath:Ljava/lang/String;

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 56
    const-string v1, "[yyyy-MM-dd HH:mm:ss] "

    .line 55
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ta/util/log/TAPrintToFileLogger;->TIMESTAMP_FMT:Ljava/text/SimpleDateFormat;

    .line 58
    const-string v0, "log"

    sput-object v0, Lcom/ta/util/log/TAPrintToFileLogger;->LOG_DIR:Ljava/lang/String;

    .line 59
    const-string v0, "ta.log"

    sput-object v0, Lcom/ta/util/log/TAPrintToFileLogger;->BASE_FILENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/ta/util/log/TAPrintToFileLogger;->basePath:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private getCurrentTimeString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 108
    .local v0, "now":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 109
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    .line 108
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 110
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/ta/util/log/TAPrintToFileLogger;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/ta/util/log/TAPrintToFileLogger;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/ta/util/log/TAPrintToFileLogger;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ta/util/log/TAPrintToFileLogger;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 134
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/ta/util/log/TAPrintToFileLogger;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public open()V
    .locals 5

    .prologue
    .line 69
    invoke-static {}, Lcom/ta/common/AndroidVersionCheckUtils;->hasFroyo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-static {}, Lcom/ta/TAApplication;->getApplication()Lcom/ta/TAApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/TAApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/ta/util/log/TAPrintToFileLogger;->LOG_DIR:Ljava/lang/String;

    .line 71
    invoke-static {v2, v3}, Lcom/ta/util/cache/TAExternalOverFroyoUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/util/log/TAPrintToFileLogger;->logDir:Ljava/io/File;

    .line 78
    :goto_0
    iget-object v2, p0, Lcom/ta/util/log/TAPrintToFileLogger;->logDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/ta/util/log/TAPrintToFileLogger;->logDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 84
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ta/util/log/TAPrintToFileLogger;->logDir:Ljava/io/File;

    const-string v4, ".nomedia"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ta/util/log/TAPrintToFileLogger;->logDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ta/util/log/TAPrintToFileLogger;->BASE_FILENAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/util/log/TAPrintToFileLogger;->basePath:Ljava/lang/String;

    .line 94
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ta/util/log/TAPrintToFileLogger;->basePath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/ta/util/log/TAPrintToFileLogger;->getCurrentTimeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/util/log/TAPrintToFileLogger;->mPath:Ljava/lang/String;

    .line 96
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/ta/util/log/TAPrintToFileLogger;->mPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x800

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v2, p0, Lcom/ta/util/log/TAPrintToFileLogger;->mWriter:Ljava/io/Writer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    .end local v1    # "file":Ljava/io/File;
    :goto_2
    return-void

    .line 76
    :cond_1
    invoke-static {}, Lcom/ta/TAApplication;->getApplication()Lcom/ta/TAApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/TAApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/ta/util/log/TAPrintToFileLogger;->LOG_DIR:Ljava/lang/String;

    .line 75
    invoke-static {v2, v3}, Lcom/ta/util/cache/TAExternalUnderFroyoUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/ta/util/log/TAPrintToFileLogger;->logDir:Ljava/io/File;

    goto/16 :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public println(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, ""

    .line 153
    .local v0, "printMessage":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 194
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ta/util/log/TAPrintToFileLogger;->println(Ljava/lang/String;)V

    .line 196
    return-void

    .line 156
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[V]|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 158
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    invoke-static {}, Lcom/ta/TAApplication;->getApplication()Lcom/ta/TAApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/TAApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    goto :goto_0

    .line 163
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[D]|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-static {}, Lcom/ta/TAApplication;->getApplication()Lcom/ta/TAApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/TAApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    goto :goto_0

    .line 170
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[I]|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    invoke-static {}, Lcom/ta/TAApplication;->getApplication()Lcom/ta/TAApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/TAApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    goto/16 :goto_0

    .line 177
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[W]|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 179
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    invoke-static {}, Lcom/ta/TAApplication;->getApplication()Lcom/ta/TAApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/TAApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    goto/16 :goto_0

    .line 184
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[E]|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    invoke-static {}, Lcom/ta/TAApplication;->getApplication()Lcom/ta/TAApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ta/TAApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    goto/16 :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public println(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/ta/util/log/TAPrintToFileLogger;->mWriter:Ljava/io/Writer;

    sget-object v2, Lcom/ta/util/log/TAPrintToFileLogger;->TIMESTAMP_FMT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/ta/util/log/TAPrintToFileLogger;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/ta/util/log/TAPrintToFileLogger;->mWriter:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 205
    iget-object v1, p0, Lcom/ta/util/log/TAPrintToFileLogger;->mWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/ta/util/log/TAPrintToFileLogger;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 146
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/ta/util/log/TAPrintToFileLogger;->println(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method
