.class public Lcom/pubinfo/wifi_core/core/util/McuHelper;
.super Ljava/lang/Object;
.source "McuHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSDCard()Z
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "mounted"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static comUrl(Ljava/lang/String;)I
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "flag":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-le v1, v4, :cond_0

    .line 363
    :goto_1
    return v0

    .line 356
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/pubinfo/wifi_core/core/util/McuUtil;->ProvinceMsp:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    move v0, v1

    .line 358
    goto :goto_1

    .line 360
    :cond_1
    if-ne v1, v4, :cond_2

    .line 361
    const/16 v0, 0x20

    .line 355
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getProjectname(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "reqUrl"    # Ljava/lang/String;

    .prologue
    .line 305
    const-string v1, "\\/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "urlDate":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 307
    const/4 v1, 0x3

    aget-object v1, v0, v1

    .line 309
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getPuIdChannelNo(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "nTmpPosition0":I
    const/4 v1, 0x0

    .line 172
    .local v1, "nTmpPosition1":I
    const-string v3, ""

    .line 173
    .local v3, "puIdChannelNo":Ljava/lang/String;
    if-nez p0, :cond_2

    const-string v2, ""

    .line 174
    .local v2, "nUrl":Ljava/lang/String;
    :goto_0
    const-string v4, "PUID-CHANNELNO"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 176
    if-eq v0, v5, :cond_1

    .line 178
    const-string v4, "="

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 179
    const-string v4, "&"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 181
    if-ne v0, v5, :cond_0

    .line 182
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 185
    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3

    .line 188
    if-eq v1, v0, :cond_4

    .line 189
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 194
    :cond_1
    :goto_2
    return-object v3

    .line 173
    .end local v2    # "nUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 186
    .restart local v2    # "nUrl":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :cond_4
    const-string v3, ""

    goto :goto_2
.end method

.method public static getPuName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "nTmpPosition0":I
    const/4 v2, 0x0

    .line 71
    .local v2, "nTmpPosition1":I
    const-string v0, ""

    .line 72
    .local v0, "nPuname":Ljava/lang/String;
    if-nez p0, :cond_1

    const-string v3, ""

    .line 73
    .local v3, "nUrl":Ljava/lang/String;
    :goto_0
    const-string v4, "PUNAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 74
    if-eq v1, v5, :cond_4

    .line 75
    const-string v4, "="

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 76
    const-string v4, "&"

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 77
    if-ne v1, v5, :cond_0

    .line 78
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 80
    :cond_0
    if-ne v2, v1, :cond_3

    .line 81
    const/4 v4, 0x0

    .line 92
    :goto_1
    return-object v4

    .line 72
    .end local v3    # "nUrl":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 86
    .restart local v3    # "nUrl":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 85
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    .line 88
    if-eq v2, v1, :cond_4

    .line 89
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v4, v0

    .line 92
    goto :goto_1
.end method

.method public static getPuProperty(Ljava/lang/String;)I
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "nTmpPosition0":I
    const/4 v2, 0x0

    .line 104
    .local v2, "nTmpPosition1":I
    const/4 v4, 0x0

    .line 105
    .local v4, "nptzControlValue":I
    if-nez p0, :cond_2

    const-string v3, ""

    .line 106
    .local v3, "nUrl":Ljava/lang/String;
    :goto_0
    const-string v5, "PUPROPERTY"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 107
    if-eq v1, v6, :cond_1

    .line 108
    const-string v5, "="

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 109
    const-string v5, "&"

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 110
    if-ne v1, v6, :cond_0

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 113
    :cond_0
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_3

    .line 116
    if-eq v2, v1, :cond_4

    .line 118
    :try_start_0
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :cond_1
    :goto_2
    move v5, v4

    .line 128
    :goto_3
    return v5

    .line 105
    .end local v3    # "nUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 114
    .restart local v3    # "nUrl":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e1":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 122
    const/4 v5, 0x0

    goto :goto_3

    .line 125
    .end local v0    # "e1":Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v4, 0x1

    goto :goto_2
.end method

.method public static getReqAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "reqUrl"    # Ljava/lang/String;

    .prologue
    .line 333
    move-object v1, p0

    .line 334
    .local v1, "url":Ljava/lang/String;
    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 335
    .local v3, "wenHao":I
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 336
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wenHao = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 337
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 339
    :cond_0
    const-string v4, "\\/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "urlDate":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v4, v2

    const/4 v5, 0x4

    if-le v4, v5, :cond_1

    .line 341
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 342
    .local v0, "proName":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 344
    .end local v0    # "proName":I
    :goto_0
    return-object v4

    :cond_1
    const-string v4, ""

    goto :goto_0
.end method

.method public static getReqIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "reqUrl"    # Ljava/lang/String;

    .prologue
    .line 319
    const-string v1, "\\/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "urlDate":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 321
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 323
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getSDSize()J
    .locals 8

    .prologue
    .line 266
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 267
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 268
    .local v5, "statFs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 270
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 271
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method public static getUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "nTmpPosition0":I
    const/4 v1, 0x0

    .line 140
    .local v1, "nTmpPosition1":I
    const-string v3, ""

    .line 141
    .local v3, "userId":Ljava/lang/String;
    if-nez p0, :cond_2

    const-string v2, ""

    .line 142
    .local v2, "nUrl":Ljava/lang/String;
    :goto_0
    const-string v4, "USERID"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 144
    if-eq v0, v5, :cond_1

    .line 145
    const-string v4, "="

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 146
    const-string v4, "&"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 147
    if-ne v0, v5, :cond_0

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 151
    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3

    .line 154
    if-eq v1, v0, :cond_4

    .line 155
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 160
    :cond_1
    :goto_2
    return-object v3

    .line 141
    .end local v2    # "nUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 152
    .restart local v2    # "nUrl":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    :cond_4
    const-string v3, ""

    goto :goto_2
.end method

.method public static getVauPtzAdd(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "nTmpPosition0":I
    const/4 v1, 0x0

    .line 206
    .local v1, "nTmpPosition1":I
    const-string v3, ""

    .line 207
    .local v3, "vauPtzAdd":Ljava/lang/String;
    if-nez p0, :cond_2

    const-string v2, ""

    .line 208
    .local v2, "nUrl":Ljava/lang/String;
    :goto_0
    const-string v4, "VAUPTZADD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 209
    if-eq v0, v5, :cond_1

    .line 210
    const-string v4, "="

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 211
    const-string v4, "&"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 212
    if-ne v0, v5, :cond_0

    .line 213
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 215
    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3

    .line 218
    if-eq v1, v0, :cond_4

    .line 219
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 224
    :cond_1
    :goto_2
    return-object v3

    .line 207
    .end local v2    # "nUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 216
    .restart local v2    # "nUrl":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 221
    :cond_4
    const-string v3, ""

    goto :goto_2
.end method

.method public static getVauPtzPort(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "nTmpPosition0":I
    const/4 v1, 0x0

    .line 236
    .local v1, "nTmpPosition1":I
    const-string v3, ""

    .line 237
    .local v3, "vauPtzPort":Ljava/lang/String;
    if-nez p0, :cond_1

    const-string v2, ""

    .line 238
    .local v2, "nUrl":Ljava/lang/String;
    :goto_0
    const-string v4, "VAUPTZPORT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 239
    if-eq v0, v5, :cond_4

    .line 240
    const-string v4, "="

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 241
    const-string v4, "&"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 243
    if-ne v0, v5, :cond_0

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 246
    :cond_0
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_2

    .line 249
    if-eq v1, v0, :cond_3

    .line 250
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 257
    :goto_2
    return-object v3

    .line 237
    .end local v2    # "nUrl":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 247
    .restart local v2    # "nUrl":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 252
    :cond_3
    const-string v3, "5060"

    .line 254
    goto :goto_2

    .line 255
    :cond_4
    const-string v3, "5060"

    goto :goto_2
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 280
    .line 281
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 280
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 282
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v3

    .line 285
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 286
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 287
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 288
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 289
    const/4 v3, 0x1

    goto :goto_0

    .line 287
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isWapConnection()Z
    .locals 8

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 23
    .local v1, "flag":Z
    const/4 v3, 0x0

    .line 24
    .local v3, "netInterfaces":Ljava/util/Enumeration;
    const/4 v2, 0x0

    .line 25
    .local v2, "ip":Ljava/net/InetAddress;
    const/4 v5, 0x0

    .line 27
    .local v5, "tmpIpString":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_1

    .line 45
    :goto_1
    return v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 34
    .end local v0    # "e":Ljava/net/SocketException;
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 35
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ip":Ljava/net/InetAddress;
    check-cast v2, Ljava/net/InetAddress;

    .line 36
    .restart local v2    # "ip":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    .line 38
    if-eqz v5, :cond_0

    .line 39
    const-string v6, "/10."

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 40
    const/4 v1, 0x1

    .line 41
    goto :goto_1
.end method
