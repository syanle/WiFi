.class public Lcom/ta/common/TAStringUtils;
.super Ljava/lang/Object;
.source "TAStringUtils.java"


# static fields
.field private static final _BR:Ljava/lang/String; = "<br/>"

.field private static final dateFormater:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final dateFormater2:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final emailer:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 38
    sput-object v0, Lcom/ta/common/TAStringUtils;->emailer:Ljava/util/regex/Pattern;

    .line 40
    new-instance v0, Lcom/ta/common/TAStringUtils$1;

    invoke-direct {v0}, Lcom/ta/common/TAStringUtils$1;-><init>()V

    sput-object v0, Lcom/ta/common/TAStringUtils;->dateFormater:Ljava/lang/ThreadLocal;

    .line 415
    new-instance v0, Lcom/ta/common/TAStringUtils$2;

    invoke-direct {v0}, Lcom/ta/common/TAStringUtils$2;-><init>()V

    sput-object v0, Lcom/ta/common/TAStringUtils;->dateFormater2:Ljava/lang/ThreadLocal;

    .line 422
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 862
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 871
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 864
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 867
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 869
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static calculateWeiboLength(Ljava/lang/CharSequence;)J
    .locals 6
    .param p0, "c"    # Ljava/lang/CharSequence;

    .prologue
    .line 122
    const-wide/16 v1, 0x0

    .line 123
    .local v1, "len":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 134
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    return-wide v4

    .line 125
    :cond_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 126
    .local v3, "temp":I
    if-lez v3, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    .line 128
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v4

    .line 123
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v4

    goto :goto_1
.end method

.method public static checkEmail(Ljava/lang/String;)Z
    .locals 3
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 796
    const-string v2, "^\\w+([-.]\\w+)*@\\w+([-]\\w+)*\\.(\\w+([-]\\w+)*\\.)*[a-z]{2,3}$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 797
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 798
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 800
    const/4 v2, 0x1

    .line 802
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static delHTMLTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "htmlStr"    # Ljava/lang/String;

    .prologue
    .line 364
    const-string v7, "<script[^>]*?>[\\s\\S]*?<\\/script>"

    .line 365
    .local v7, "regEx_script":Ljava/lang/String;
    const-string v8, "<style[^>]*?>[\\s\\S]*?<\\/style>"

    .line 366
    .local v8, "regEx_style":Ljava/lang/String;
    const-string v6, "<[^>]+>"

    .line 367
    .local v6, "regEx_html":Ljava/lang/String;
    const-string v9, "htmlStr"

    invoke-static {v9, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v9, 0x2

    .line 370
    :try_start_0
    invoke-static {v7, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 372
    .local v4, "p_script":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 373
    .local v1, "m_script":Ljava/util/regex/Matcher;
    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 376
    const/4 v9, 0x2

    .line 375
    invoke-static {v8, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 377
    .local v5, "p_style":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 378
    .local v2, "m_style":Ljava/util/regex/Matcher;
    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 381
    const/4 v9, 0x2

    .line 380
    invoke-static {v6, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 382
    .local v3, "p_html":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 383
    .local v0, "m_html":Ljava/util/regex/Matcher;
    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 389
    .end local v0    # "m_html":Ljava/util/regex/Matcher;
    .end local v1    # "m_script":Ljava/util/regex/Matcher;
    .end local v2    # "m_style":Ljava/util/regex/Matcher;
    .end local v3    # "p_html":Ljava/util/regex/Pattern;
    .end local v4    # "p_script":Ljava/util/regex/Pattern;
    .end local v5    # "p_style":Ljava/util/regex/Pattern;
    :goto_0
    return-object p0

    .line 384
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public static delSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 394
    if-eqz p0, :cond_0

    .line 396
    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 397
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 398
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 400
    :cond_0
    return-object p0
.end method

.method public static friendly_time(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "sdate"    # Ljava/lang/String;

    .prologue
    .line 449
    invoke-static/range {p0 .. p0}, Lcom/ta/common/TAStringUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 450
    .local v10, "time":Ljava/util/Date;
    if-nez v10, :cond_1

    .line 452
    const-string v5, "Unknown"

    .line 497
    :cond_0
    :goto_0
    return-object v5

    .line 454
    :cond_1
    const-string v5, ""

    .line 455
    .local v5, "ftime":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 458
    .local v0, "cal":Ljava/util/Calendar;
    sget-object v11, Lcom/ta/common/TAStringUtils;->dateFormater2:Ljava/lang/ThreadLocal;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, "curDate":Ljava/lang/String;
    sget-object v11, Lcom/ta/common/TAStringUtils;->dateFormater2:Ljava/lang/ThreadLocal;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/text/SimpleDateFormat;

    invoke-virtual {v11, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 460
    .local v9, "paramDate":Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 462
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/32 v13, 0x36ee80

    div-long/2addr v11, v13

    long-to-int v6, v11

    .line 463
    .local v6, "hour":I
    if-nez v6, :cond_2

    .line 464
    new-instance v11, Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/32 v14, 0xea60

    div-long/2addr v12, v14

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    const-string v12, "\u5206\u949f\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 464
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 466
    goto :goto_0

    .line 468
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5c0f\u65f6\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 472
    .end local v6    # "hour":I
    :cond_3
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    const-wide/32 v13, 0x5265c00

    div-long v7, v11, v13

    .line 473
    .local v7, "lt":J
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    const-wide/32 v13, 0x5265c00

    div-long v1, v11, v13

    .line 474
    .local v1, "ct":J
    sub-long v11, v1, v7

    long-to-int v4, v11

    .line 475
    .local v4, "days":I
    if-nez v4, :cond_5

    .line 477
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/32 v13, 0x36ee80

    div-long/2addr v11, v13

    long-to-int v6, v11

    .line 478
    .restart local v6    # "hour":I
    if-nez v6, :cond_4

    .line 479
    new-instance v11, Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/32 v14, 0xea60

    div-long/2addr v12, v14

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 481
    const-string v12, "\u5206\u949f\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 479
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 481
    goto/16 :goto_0

    .line 483
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5c0f\u65f6\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 484
    goto/16 :goto_0

    .end local v6    # "hour":I
    :cond_5
    const/4 v11, 0x1

    if-ne v4, v11, :cond_6

    .line 486
    const-string v5, "\u6628\u5929"

    .line 487
    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x2

    if-ne v4, v11, :cond_7

    .line 489
    const-string v5, "\u524d\u5929"

    .line 490
    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x2

    if-le v4, v11, :cond_8

    const/16 v11, 0xa

    if-gt v4, v11, :cond_8

    .line 492
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\u5929\u524d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 493
    goto/16 :goto_0

    :cond_8
    const/16 v11, 0xa

    if-le v4, v11, :cond_0

    .line 495
    sget-object v11, Lcom/ta/common/TAStringUtils;->dateFormater2:Ljava/lang/ThreadLocal;

    invoke-virtual {v11}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/text/SimpleDateFormat;

    invoke-virtual {v11, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public static getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2e

    .line 819
    const-string v0, ""

    .line 821
    .local v0, "extName":Ljava/lang/String;
    const/16 v3, 0x3f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 822
    .local v2, "index":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 824
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 829
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/ta/common/TAStringUtils;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, "filename":Ljava/lang/String;
    return-object v1

    .line 827
    .end local v1    # "filename":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUrlFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 305
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 307
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 310
    .local v0, "c":Ljava/util/Calendar;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 311
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 312
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    .end local v0    # "c":Ljava/util/Calendar;
    :cond_0
    return-object v1
.end method

.method public static hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 849
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 850
    .local v2, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 851
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/ta/common/TAStringUtils;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 856
    .end local v2    # "mDigest":Ljava/security/MessageDigest;
    .local v0, "cacheKey":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 852
    .end local v0    # "cacheKey":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 854
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cacheKey":Ljava/lang/String;
    goto :goto_0
.end method

.method public static htmldecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 214
    if-nez p0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "&quot;"

    const-string v1, "\""

    const-string v2, "&lt;"

    const-string v3, "<"

    invoke-static {v2, v3, p0}, Lcom/ta/common/TAStringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ta/common/TAStringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static htmlencode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\""

    const-string v1, "&quot;"

    const-string v2, "<"

    const-string v3, "&lt;"

    invoke-static {v2, v3, p0}, Lcom/ta/common/TAStringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ta/common/TAStringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static htmlshow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 233
    if-nez p0, :cond_0

    .line 235
    const/4 p0, 0x0

    .line 243
    :goto_0
    return-object p0

    .line 238
    :cond_0
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-static {v0, v1, p0}, Lcom/ta/common/TAStringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 239
    const-string v0, " "

    const-string v1, "&nbsp;"

    invoke-static {v0, v1, p0}, Lcom/ta/common/TAStringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 240
    const-string v0, "\r\n"

    const-string v1, "<br/>"

    invoke-static {v0, v1, p0}, Lcom/ta/common/TAStringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 241
    const-string v0, "\n"

    const-string v1, "<br/>"

    invoke-static {v0, v1, p0}, Lcom/ta/common/TAStringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 242
    const-string v0, "\t"

    const-string v1, "&nbsp;&nbsp;&nbsp;&nbsp;"

    invoke-static {v0, v1, p0}, Lcom/ta/common/TAStringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 243
    goto :goto_0
.end method

.method public static isBlank(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 744
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isChinese(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 689
    const-string v1, "[\u0391-\uffe5]+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 690
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isDouble(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 732
    const-string v1, "^[-\\+]?[.\\d]*$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 733
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 578
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 579
    :cond_0
    const/4 v0, 0x0

    .line 580
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/ta/common/TAStringUtils;->emailer:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 556
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v2

    .line 559
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 561
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 562
    .local v0, "c":C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    .line 564
    const/4 v2, 0x0

    goto :goto_0

    .line 559
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isHandset(Ljava/lang/String;)Z
    .locals 9
    .param p0, "handset"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 655
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 676
    :cond_0
    :goto_0
    return v5

    .line 659
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_0

    .line 663
    const-string v0, "^[0123456789]+$"

    .line 664
    .local v0, "check":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 665
    .local v4, "regex":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 666
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 667
    .local v2, "isMatched":Z
    if-eqz v2, :cond_0

    move v5, v6

    .line 669
    goto :goto_0

    .line 674
    .end local v0    # "check":Ljava/lang/String;
    .end local v2    # "isMatched":Z
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "regex":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v1

    .line 676
    .local v1, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 719
    const-string v1, "^[-\\+]?[\\d]*$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 720
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isLenghtStrLentht(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "lenght"    # I

    .prologue
    .line 758
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 759
    const/4 v0, 0x1

    .line 761
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotNull(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 412
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 701
    const-string v2, "[0-9]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 702
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 703
    .local v0, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 705
    const/4 v2, 0x0

    .line 707
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isPhoneNumberValid(Ljava/lang/String;)Z
    .locals 2
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-static {p0}, Lcom/ta/common/TAStringUtils;->trimmy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 787
    new-instance v0, Lcom/ta/common/MobileFormat;

    invoke-direct {v0, p0}, Lcom/ta/common/MobileFormat;-><init>(Ljava/lang/String;)V

    .line 788
    .local v0, "mobile":Lcom/ta/common/MobileFormat;
    invoke-virtual {v0}, Lcom/ta/common/MobileFormat;->isLawful()Z

    move-result v1

    return v1
.end method

.method public static isSMSStrLentht(Ljava/lang/String;)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 772
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x46

    if-gt v0, v1, :cond_0

    .line 773
    const/4 v0, 0x1

    .line 775
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShareStrLentht(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "lenght"    # I

    .prologue
    .line 808
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x78

    if-gt v0, v1, :cond_0

    .line 809
    const/4 v0, 0x1

    .line 811
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isToday(Ljava/lang/String;)Z
    .locals 6
    .param p0, "sdate"    # Ljava/lang/String;

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 534
    .local v0, "b":Z
    invoke-static {p0}, Lcom/ta/common/TAStringUtils;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 535
    .local v2, "time":Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 536
    .local v4, "today":Ljava/util/Date;
    if-eqz v2, :cond_0

    .line 538
    sget-object v5, Lcom/ta/common/TAStringUtils;->dateFormater2:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "nowDate":Ljava/lang/String;
    sget-object v5, Lcom/ta/common/TAStringUtils;->dateFormater2:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "timeDate":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 542
    const/4 v0, 0x1

    .line 545
    .end local v1    # "nowDate":Ljava/lang/String;
    .end local v3    # "timeDate":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 174
    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 175
    :cond_0
    const/4 v2, 0x0

    .line 185
    :goto_0
    return-object v2

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "bf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 178
    .local v1, "index":I
    :goto_1
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 184
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 180
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 182
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public static replaceBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 515
    const-string v0, ""

    .line 516
    .local v0, "dest":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 518
    const-string v3, "\r"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 519
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 520
    .local v1, "m":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :cond_0
    return-object v0
.end method

.method public static replaceSomeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 320
    const-string v0, ""

    .line 323
    .local v0, "dest":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 325
    :try_start_0
    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 326
    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 327
    const-string v1, "&ldquo;"

    const-string v2, "\u201c"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 328
    const-string v1, "&rdquo;"

    const-string v2, "\u201d"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 329
    const-string v1, "&#39;"

    const-string v2, "\'"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 330
    const-string v1, "&nbsp;"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 331
    const-string v1, "<br\\s*/>"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 332
    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 333
    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 334
    const-string v1, "&lsquo;"

    const-string v2, "\u300a"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 335
    const-string v1, "&rsquo;"

    const-string v2, "\u300b"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 336
    const-string v1, "&middot;"

    const-string v2, "\u00b7"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 337
    const-string v1, "&mdash;"

    const-string v2, "\u2014"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 338
    const-string v1, "&hellip;"

    const-string v2, "\u2026"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 339
    const-string v1, "&amp;"

    const-string v2, "\u00d7"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 340
    const-string v1, "\\s*"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 341
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 342
    const-string v1, "<p>"

    const-string v2, "\n      "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 343
    const-string v1, "</p>"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 344
    const-string v1, "<div.*?>"

    const-string v2, "\n      "

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 345
    const-string v1, "</div>"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 346
    move-object v0, p0

    .line 353
    :cond_0
    :goto_0
    return-object v0

    .line 348
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "splitsign"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 149
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 150
    :cond_0
    const/4 v2, 0x0

    .line 158
    :goto_0
    return-object v2

    .line 151
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 157
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-array v2, v3, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static subString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 60
    const-string v3, "Unicode"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 61
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 62
    .local v2, "n":I
    const/4 v1, 0x2

    .line 63
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    if-lt v2, p1, :cond_2

    .line 79
    :cond_0
    rem-int/lit8 v3, v1, 0x2

    if-ne v3, v4, :cond_1

    .line 82
    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v0, v3

    if-eqz v3, :cond_5

    .line 83
    add-int/lit8 v1, v1, -0x1

    .line 88
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Unicode"

    invoke-direct {v3, v0, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v3

    .line 66
    :cond_2
    rem-int/lit8 v3, v1, 0x2

    if-ne v3, v4, :cond_4

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 63
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_4
    aget-byte v3, v0, v1

    if-eqz v3, :cond_3

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 86
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static toBool(Ljava/lang/String;)Z
    .locals 1
    .param p0, "b"    # Ljava/lang/String;

    .prologue
    .line 641
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 645
    :goto_0
    return v0

    .line 642
    :catch_0
    move-exception v0

    .line 645
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toDBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 99
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 109
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2

    .line 101
    :cond_0
    aget-char v2, v0, v1

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_2

    .line 103
    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 99
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_2
    aget-char v2, v0, v1

    const v3, 0xff00

    if-le v2, v3, :cond_1

    aget-char v2, v0, v1

    const v3, 0xff5f

    if-ge v2, v3, :cond_1

    .line 107
    aget-char v2, v0, v1

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    goto :goto_1
.end method

.method public static toDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "sdate"    # Ljava/lang/String;

    .prologue
    .line 434
    :try_start_0
    sget-object v1, Lcom/ta/common/TAStringUtils;->dateFormater:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 437
    :goto_0
    return-object v1

    .line 435
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static toInt(Ljava/lang/Object;)I
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 609
    if-nez p0, :cond_0

    .line 611
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ta/common/TAStringUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 594
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 598
    .end local p1    # "defValue":I
    :goto_0
    return p1

    .line 595
    .restart local p1    # "defValue":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static toLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 257
    if-nez p0, :cond_1

    .line 259
    const/4 p0, 0x0

    .line 294
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 261
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    if-gtz p1, :cond_2

    .line 263
    const-string p0, ""

    goto :goto_0

    .line 267
    :cond_2
    :try_start_0
    const-string v3, "GBK"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v3, p1, :cond_0

    .line 274
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 276
    .local v0, "buff":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 278
    .local v2, "index":I
    add-int/lit8 p1, p1, -0x3

    .line 279
    :goto_2
    if-gtz p1, :cond_3

    .line 293
    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 281
    :cond_3
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 282
    .local v1, "c":C
    const/16 v3, 0x80

    if-ge v1, v3, :cond_4

    .line 284
    add-int/lit8 p1, p1, -0x1

    .line 290
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 287
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 288
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 271
    .end local v0    # "buff":Ljava/lang/StringBuffer;
    .end local v1    # "c":C
    .end local v2    # "index":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "obj"    # Ljava/lang/String;

    .prologue
    .line 624
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 628
    :goto_0
    return-wide v0

    .line 625
    :catch_0
    move-exception v0

    .line 628
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static trimmy(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 502
    const-string v0, ""

    .line 503
    .local v0, "dest":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 505
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 506
    const-string v1, "\\+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 507
    move-object v0, p0

    .line 509
    :cond_0
    return-object v0
.end method
