.class public Lcom/ta/util/extend/TimestampUtils;
.super Ljava/lang/Object;
.source "TimestampUtils.java"


# static fields
.field private static day:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-wide/16 v0, 0x7

    sput-wide v0, Lcom/ta/util/extend/TimestampUtils;->day:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareTimestamp(JJ)Z
    .locals 7
    .param p0, "currentTimestap"    # J
    .param p2, "oldTimestap"    # J

    .prologue
    .line 81
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 82
    .local v0, "isExceed":Ljava/lang/Boolean;
    invoke-static {p0, p1, p2, p3}, Lcom/ta/util/extend/TimestampUtils;->gapTimestamp(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0x15180

    sget-wide v5, Lcom/ta/util/extend/TimestampUtils;->day:J

    mul-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 84
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static formatTimestamp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 103
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    :cond_0
    const-string v1, ""

    .line 109
    :goto_0
    return-object v1

    .line 107
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "00000000000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "tempTimeStamp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static gapTimestamp(JJ)J
    .locals 2
    .param p0, "currentTimestap"    # J
    .param p2, "oldTimestap"    # J

    .prologue
    .line 91
    sub-long v0, p0, p2

    return-wide v0
.end method

.method public static getIntTimestamp()J
    .locals 3

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    .line 64
    .local v0, "unixTimeGMT":J
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 69
    :goto_0
    return-wide v0

    .line 65
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getTimeState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "timestamp"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 123
    if-eqz p0, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 125
    :cond_0
    const-string v6, ""

    .line 187
    :goto_0
    return-object v6

    .line 130
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/ta/util/extend/TimestampUtils;->formatTimestamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 132
    .local v0, "_timestamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/32 v8, 0xea60

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 134
    const-string v6, "\u521a\u521a"

    goto :goto_0

    .line 135
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    const-wide/32 v8, 0x1b7740

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const-wide/16 v9, 0x3c

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    const-string v7, "\u5206\u949f\u524d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 141
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 142
    .local v4, "now":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 143
    .local v2, "c":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 144
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 145
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 146
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 148
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "\u4eca\u5929 HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 149
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 151
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 152
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 153
    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_5

    .line 155
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "\u6628\u5929 HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 156
    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 157
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_5
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 159
    const/4 v5, 0x0

    .line 160
    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    if-eqz p1, :cond_6

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 162
    new-instance v5, Ljava/text/SimpleDateFormat;

    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct {v5, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_1
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 166
    :cond_6
    new-instance v5, Ljava/text/SimpleDateFormat;

    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v6, "M\u6708d\u65e5 HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_1

    .line 172
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_7
    const/4 v5, 0x0

    .line 173
    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    if-eqz p1, :cond_8

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 175
    new-instance v5, Ljava/text/SimpleDateFormat;

    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct {v5, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 181
    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_2
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 179
    :cond_8
    new-instance v5, Ljava/text/SimpleDateFormat;

    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    const-string v6, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_2

    .line 184
    .end local v0    # "_timestamp":J
    .end local v2    # "c":Ljava/util/Calendar;
    .end local v4    # "now":Ljava/util/Calendar;
    .end local v5    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v3

    .line 186
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    const-string v6, ""

    goto/16 :goto_0
.end method

.method public static getTimestamp()Ljava/lang/String;
    .locals 6

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 44
    .local v1, "unixTime":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 50
    .local v3, "unixTimeGMT":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 45
    .end local v3    # "unixTimeGMT":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    .restart local v3    # "unixTimeGMT":Ljava/lang/String;
    goto :goto_0
.end method
