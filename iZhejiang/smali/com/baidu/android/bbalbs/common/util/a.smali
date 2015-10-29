.class public final Lcom/baidu/android/bbalbs/common/util/a;
.super Ljava/lang/Object;
.source "DeviceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/bbalbs/common/util/a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 68
    const-string v8, "android.permission.WRITE_SETTINGS"

    invoke-static {p0, v8}, Lcom/baidu/android/bbalbs/common/util/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    const-string v8, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v8}, Lcom/baidu/android/bbalbs/common/util/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v8}, Lcom/baidu/android/bbalbs/common/util/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/a$a;->a(Landroid/content/Context;)Lcom/baidu/android/bbalbs/common/util/a$a;

    move-result-object v2

    .line 75
    .local v2, "info":Lcom/baidu/android/bbalbs/common/util/a$a;
    iget-object v5, v2, Lcom/baidu/android/bbalbs/common/util/a$a;->a:Ljava/lang/String;

    .line 76
    .local v5, "tmDeviceId":Ljava/lang/String;
    iget-boolean v8, v2, Lcom/baidu/android/bbalbs/common/util/a$a;->b:Z

    if-eqz v8, :cond_0

    const/4 v4, 0x0

    .line 79
    .local v4, "sysRwFail":Z
    :goto_0
    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "androidId":Ljava/lang/String;
    const-string v1, ""

    .line 89
    .local v1, "bdDeviceId":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "com.baidu"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v7}, Lcom/baidu/android/bbalbs/common/a/c;->a([BZ)Ljava/lang/String;

    move-result-object v7

    .line 161
    :goto_1
    return-object v7

    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "bdDeviceId":Ljava/lang/String;
    .end local v4    # "sysRwFail":Z
    :cond_0
    move v4, v7

    .line 76
    goto :goto_0

    .line 97
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v1    # "bdDeviceId":Ljava/lang/String;
    .restart local v4    # "sysRwFail":Z
    :cond_1
    const/4 v3, 0x0

    .line 100
    .local v3, "oldName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.baidu.deviceid"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "com.baidu"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v7}, Lcom/baidu/android/bbalbs/common/a/c;->a([BZ)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.baidu.deviceid"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    invoke-static {v5, v1}, Lcom/baidu/android/bbalbs/common/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 127
    invoke-static {v5}, Lcom/baidu/android/bbalbs/common/util/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.baidu.deviceid"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 142
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "uuid":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v7}, Lcom/baidu/android/bbalbs/common/a/c;->a([BZ)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.baidu.deviceid"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 158
    invoke-static {v5, v1}, Lcom/baidu/android/bbalbs/common/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "uuid":Ljava/lang/String;
    :cond_4
    move-object v7, v1

    .line 161
    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "imei"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 225
    const-string v1, ""

    .line 262
    :cond_0
    :goto_0
    return-object v1

    .line 228
    :cond_1
    const-string v1, ""

    .line 229
    .local v1, "deviceId":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "baidu/.cuid"

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    .local v3, "extFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 232
    .local v4, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 233
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v2, "encodeStr":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 235
    .local v7, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 242
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 243
    new-instance v5, Ljava/lang/String;

    const-string v8, "30212102dicudiab"

    const-string v9, "30212102dicudiab"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/baidu/android/bbalbs/common/a/b;->a([B)[B

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/baidu/android/bbalbs/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([B)V

    .line 244
    .local v5, "idStr":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 245
    .local v6, "kv":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v8, v6

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 246
    const/4 v8, 0x1

    aget-object v1, v6, v8

    goto :goto_0

    .line 236
    .end local v5    # "idStr":Ljava/lang/String;
    .end local v6    # "kv":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v8, "\r\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 248
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "encodeStr":Ljava/lang/StringBuilder;
    .end local v4    # "fr":Ljava/io/FileReader;
    .end local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_0

    .line 256
    :catch_1
    move-exception v8

    goto :goto_0

    .line 252
    :catch_2
    move-exception v8

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 204
    .local v1, "result":I
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 205
    .local v0, "allowedByPermission":Z
    :goto_0
    if-nez v0, :cond_1

    .line 206
    new-instance v2, Ljava/lang/SecurityException;

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Permission Denial: requires permission "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    .end local v0    # "allowedByPermission":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 209
    .restart local v0    # "allowedByPermission":Z
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "imei"    # Ljava/lang/String;
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    :goto_0
    return-void

    .line 283
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .local v3, "idSB":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "baidu/.cuid"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    .local v1, "extFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 290
    new-instance v2, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 291
    .local v2, "fw":Ljava/io/FileWriter;
    const-string v4, "30212102dicudiab"

    const-string v5, "30212102dicudiab"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/baidu/android/bbalbs/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Lcom/baidu/android/bbalbs/common/a/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "encoded":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 297
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 298
    .end local v0    # "encoded":Ljava/lang/String;
    .end local v2    # "fw":Ljava/io/FileWriter;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 302
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-static {p0}, Lcom/baidu/android/bbalbs/common/util/a$a;->a(Landroid/content/Context;)Lcom/baidu/android/bbalbs/common/util/a$a;

    move-result-object v0

    .line 173
    .local v0, "info":Lcom/baidu/android/bbalbs/common/util/a$a;
    iget-object v1, v0, Lcom/baidu/android/bbalbs/common/util/a$a;->a:Ljava/lang/String;

    return-object v1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    const-string v0, ""

    .line 186
    .local v0, "DEFAULT_ANDROID_ID":Ljava/lang/String;
    const-string v1, ""

    .line 189
    .local v1, "androidId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    const-string v1, ""

    .line 194
    :cond_0
    return-object v1
.end method
