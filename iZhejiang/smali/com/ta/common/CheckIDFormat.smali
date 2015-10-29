.class public Lcom/ta/common/CheckIDFormat;
.super Ljava/lang/Object;
.source "CheckIDFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private GetAreaCode()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 185
    .local v0, "hashtable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "11"

    const-string v2, "\u5317\u4eac"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v1, "12"

    const-string v2, "\u5929\u6d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v1, "13"

    const-string v2, "\u6cb3\u5317"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v1, "14"

    const-string v2, "\u5c71\u897f"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "15"

    const-string v2, "\u5185\u8499\u53e4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "21"

    const-string v2, "\u8fbd\u5b81"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v1, "22"

    const-string v2, "\u5409\u6797"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "23"

    const-string v2, "\u9ed1\u9f99\u6c5f"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "31"

    const-string v2, "\u4e0a\u6d77"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "32"

    const-string v2, "\u6c5f\u82cf"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "33"

    const-string v2, "\u6d59\u6c5f"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v1, "34"

    const-string v2, "\u5b89\u5fbd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "35"

    const-string v2, "\u798f\u5efa"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "36"

    const-string v2, "\u6c5f\u897f"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "37"

    const-string v2, "\u5c71\u4e1c"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "41"

    const-string v2, "\u6cb3\u5357"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "42"

    const-string v2, "\u6e56\u5317"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v1, "43"

    const-string v2, "\u6e56\u5357"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string v1, "44"

    const-string v2, "\u5e7f\u4e1c"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "45"

    const-string v2, "\u5e7f\u897f"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "46"

    const-string v2, "\u6d77\u5357"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "50"

    const-string v2, "\u91cd\u5e86"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "51"

    const-string v2, "\u56db\u5ddd"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v1, "52"

    const-string v2, "\u8d35\u5dde"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string v1, "53"

    const-string v2, "\u4e91\u5357"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "54"

    const-string v2, "\u897f\u85cf"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "61"

    const-string v2, "\u9655\u897f"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "62"

    const-string v2, "\u7518\u8083"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "63"

    const-string v2, "\u9752\u6d77"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "64"

    const-string v2, "\u5b81\u590f"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "65"

    const-string v2, "\u65b0\u7586"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "71"

    const-string v2, "\u53f0\u6e7e"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v1, "81"

    const-string v2, "\u9999\u6e2f"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "82"

    const-string v2, "\u6fb3\u95e8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "91"

    const-string v2, "\u56fd\u5916"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-object v0
.end method

.method private isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v2, "[0-9]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 233
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 234
    .local v0, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const/4 v2, 0x1

    .line 239
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public GetArea(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "idCard"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/ta/common/CheckIDFormat;->GetAreaCode()Ljava/util/Hashtable;

    move-result-object v1

    .line 280
    .local v1, "ht":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    .local v0, "area":Ljava/lang/String;
    return-object v0
.end method

.method public GetBirthday(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "idCard"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0xf

    const/16 v9, 0xc

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x6

    .line 323
    const-string v0, ""

    .line 324
    .local v0, "Ain":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_1

    .line 326
    const/16 v4, 0x11

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 333
    :cond_0
    :goto_0
    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "strYear":Ljava/lang/String;
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "strMonth":Ljava/lang/String;
    const/16 v4, 0xe

    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "strDay":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 327
    .end local v1    # "strDay":Ljava/lang/String;
    .end local v2    # "strMonth":Ljava/lang/String;
    .end local v3    # "strYear":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v10, :cond_0

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "19"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public GetSex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "idCard"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v0, ""

    .line 296
    .local v0, "sex":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 299
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_1

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    rem-int/lit8 v1, v2, 0x2

    .line 304
    .local v1, "sexNum":I
    if-nez v1, :cond_2

    .line 306
    const-string v2, "\u5973"

    .line 308
    :goto_0
    return-object v2

    :cond_2
    const-string v2, "\u7537"

    goto :goto_0
.end method

.method public IDCardValidate(Ljava/lang/String;)Z
    .locals 21
    .param p1, "IDStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 65
    const-string v7, ""

    .line 67
    .local v7, "errorInfo":Ljava/lang/String;
    const/16 v17, 0xb

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "1"

    aput-object v18, v5, v17

    const/16 v17, 0x1

    const-string v18, "0"

    aput-object v18, v5, v17

    const/16 v17, 0x2

    const-string v18, "x"

    aput-object v18, v5, v17

    const/16 v17, 0x3

    const-string v18, "9"

    aput-object v18, v5, v17

    const/16 v17, 0x4

    const-string v18, "8"

    aput-object v18, v5, v17

    const/16 v17, 0x5

    const-string v18, "7"

    aput-object v18, v5, v17

    const/16 v17, 0x6

    const-string v18, "6"

    aput-object v18, v5, v17

    const/16 v17, 0x7

    const-string v18, "5"

    aput-object v18, v5, v17

    const/16 v17, 0x8

    const-string v18, "4"

    aput-object v18, v5, v17

    const/16 v17, 0x9

    const-string v18, "3"

    aput-object v18, v5, v17

    const/16 v17, 0xa

    const-string v18, "2"

    aput-object v18, v5, v17

    .line 69
    .local v5, "ValCodeArr":[Ljava/lang/String;
    const/16 v17, 0x11

    move/from16 v0, v17

    new-array v6, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "7"

    aput-object v18, v6, v17

    const/16 v17, 0x1

    const-string v18, "9"

    aput-object v18, v6, v17

    const/16 v17, 0x2

    const-string v18, "10"

    aput-object v18, v6, v17

    const/16 v17, 0x3

    const-string v18, "5"

    aput-object v18, v6, v17

    const/16 v17, 0x4

    const-string v18, "8"

    aput-object v18, v6, v17

    const/16 v17, 0x5

    const-string v18, "4"

    aput-object v18, v6, v17

    const/16 v17, 0x6

    const-string v18, "2"

    aput-object v18, v6, v17

    const/16 v17, 0x7

    const-string v18, "1"

    aput-object v18, v6, v17

    const/16 v17, 0x8

    const-string v18, "6"

    aput-object v18, v6, v17

    const/16 v17, 0x9

    const-string v18, "3"

    aput-object v18, v6, v17

    const/16 v17, 0xa

    const-string v18, "7"

    aput-object v18, v6, v17

    const/16 v17, 0xb

    const-string v18, "9"

    aput-object v18, v6, v17

    const/16 v17, 0xc

    const-string v18, "10"

    aput-object v18, v6, v17

    const/16 v17, 0xd

    .line 70
    const-string v18, "5"

    aput-object v18, v6, v17

    const/16 v17, 0xe

    const-string v18, "8"

    aput-object v18, v6, v17

    const/16 v17, 0xf

    const-string v18, "4"

    aput-object v18, v6, v17

    const/16 v17, 0x10

    const-string v18, "2"

    aput-object v18, v6, v17

    .line 72
    .local v6, "Wi":[Ljava/lang/String;
    const-string v3, ""

    .line 75
    .local v3, "Ai":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0xf

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x12

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 77
    const-string v7, "\u53f7\u7801\u957f\u5ea6\u5e94\u8be5\u4e3a15\u4f4d\u621618\u4f4d\u3002"

    .line 78
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    const/16 v17, 0x0

    .line 173
    :goto_0
    return v17

    .line 84
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x12

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 86
    const/16 v17, 0x0

    const/16 v18, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 91
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ta/common/CheckIDFormat;->isNumeric(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 93
    const-string v7, "15\u4f4d\u53f7\u7801\u90fd\u5e94\u4e3a\u6570\u5b57 ; 18\u4f4d\u53f7\u7801\u9664\u6700\u540e\u4e00\u4f4d\u5916\uff0c\u90fd\u5e94\u4e3a\u6570\u5b57\u3002"

    .line 94
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    const/16 v17, 0x0

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0xf

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 89
    new-instance v17, Ljava/lang/StringBuilder;

    const/16 v18, 0x0

    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "19"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x6

    const/16 v19, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 100
    :cond_3
    const/16 v17, 0x6

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 101
    .local v16, "strYear":Ljava/lang/String;
    const/16 v17, 0xa

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 102
    .local v14, "strMonth":Ljava/lang/String;
    const/16 v17, 0xc

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 104
    .local v13, "strDay":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/ta/common/CheckIDFormat;->isDate(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 106
    const-string v7, "\u751f\u65e5\u65e0\u6548\u3002"

    .line 107
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 111
    :cond_4
    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-direct {v8}, Ljava/util/GregorianCalendar;-><init>()V

    .line 112
    .local v8, "gc":Ljava/util/GregorianCalendar;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v17, "yyyy-MM-dd"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    .local v12, "s":Ljava/text/SimpleDateFormat;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sub-int v17, v17, v18

    const/16 v18, 0x96

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_5

    .line 114
    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    .line 115
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 114
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    .line 115
    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    .line 114
    sub-long v17, v17, v19

    .line 115
    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-gez v17, :cond_6

    .line 117
    :cond_5
    const-string v7, "\u751f\u65e5\u4e0d\u5728\u6709\u6548\u8303\u56f4\u3002"

    .line 118
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 121
    :cond_6
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_7

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_8

    .line 123
    :cond_7
    const-string v7, "\u6708\u4efd\u65e0\u6548"

    .line 124
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 127
    :cond_8
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1f

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_9

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_a

    .line 129
    :cond_9
    const-string v7, "\u65e5\u671f\u65e0\u6548"

    .line 130
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 136
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/ta/common/CheckIDFormat;->GetAreaCode()Ljava/util/Hashtable;

    move-result-object v9

    .line 137
    .local v9, "h":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v17, 0x0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_b

    .line 139
    const-string v7, "\u5730\u533a\u7f16\u7801\u9519\u8bef\u3002"

    .line 140
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 146
    :cond_b
    const/4 v4, 0x0

    .line 147
    .local v4, "TotalmulAiWi":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    const/16 v17, 0x11

    move/from16 v0, v17

    if-lt v10, v0, :cond_c

    .line 153
    rem-int/lit8 v11, v4, 0xb

    .line 154
    .local v11, "modValue":I
    aget-object v15, v5, v11

    .line 155
    .local v15, "strVerifyCode":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x12

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 159
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 161
    const-string v7, "\u8eab\u4efd\u8bc1\u65e0\u6548\uff0c\u6700\u540e\u4e00\u4f4d\u5b57\u6bcd\u9519\u8bef"

    .line 162
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 150
    .end local v11    # "modValue":I
    .end local v15    # "strVerifyCode":Ljava/lang/String;
    :cond_c
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 151
    aget-object v18, v6, v10

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 150
    mul-int v17, v17, v18

    add-int v4, v4, v17

    .line 147
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 167
    .restart local v11    # "modValue":I
    .restart local v15    # "strVerifyCode":Ljava/lang/String;
    :cond_d
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v17, "\u6240\u5728\u5730\u533a:"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\u65b0\u8eab\u4efd\u8bc1\u53f7:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 172
    :cond_e
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v17, "\u6240\u5728\u5730\u533a:"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public isDate(Ljava/lang/String;)Z
    .locals 3
    .param p1, "strDate"    # Ljava/lang/String;

    .prologue
    .line 256
    const-string v2, "^((\\d{2}(([02468][048])|([13579][26]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])))))|(\\d{2}(([02468][1235679])|([13579][01345789]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\\s(((0?[0-9])|([1-2][0-3]))\\:([0-5]?[0-9])((\\s)|(\\:([0-5]?[0-9])))))?$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 257
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 258
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    const/4 v2, 0x1

    .line 263
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
