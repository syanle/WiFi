.class public Lorg/xbill/DNS/Generator;
.super Ljava/lang/Object;
.source "Generator.java"


# instance fields
.field private current:J

.field public final dclass:I

.field public end:J

.field public final namePattern:Ljava/lang/String;

.field public final origin:Lorg/xbill/DNS/Name;

.field public final rdataPattern:Ljava/lang/String;

.field public start:J

.field public step:J

.field public final ttl:J

.field public final type:I


# direct methods
.method public constructor <init>(JJJLjava/lang/String;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)V
    .locals 2
    .param p1, "start"    # J
    .param p3, "end"    # J
    .param p5, "step"    # J
    .param p7, "namePattern"    # Ljava/lang/String;
    .param p8, "type"    # I
    .param p9, "dclass"    # I
    .param p10, "ttl"    # J
    .param p12, "rdataPattern"    # Ljava/lang/String;
    .param p13, "origin"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_1

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 79
    const-string v1, "invalid range specification"

    .line 78
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    invoke-static {p8}, Lorg/xbill/DNS/Generator;->supportedType(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    invoke-static {p9}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 84
    iput-wide p1, p0, Lorg/xbill/DNS/Generator;->start:J

    .line 85
    iput-wide p3, p0, Lorg/xbill/DNS/Generator;->end:J

    .line 86
    iput-wide p5, p0, Lorg/xbill/DNS/Generator;->step:J

    .line 87
    iput-object p7, p0, Lorg/xbill/DNS/Generator;->namePattern:Ljava/lang/String;

    .line 88
    iput p8, p0, Lorg/xbill/DNS/Generator;->type:I

    .line 89
    iput p9, p0, Lorg/xbill/DNS/Generator;->dclass:I

    .line 90
    iput-wide p10, p0, Lorg/xbill/DNS/Generator;->ttl:J

    .line 91
    iput-object p12, p0, Lorg/xbill/DNS/Generator;->rdataPattern:Ljava/lang/String;

    .line 92
    iput-object p13, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    .line 93
    iput-wide p1, p0, Lorg/xbill/DNS/Generator;->current:J

    .line 94
    return-void
.end method

.method private substitute(Ljava/lang/String;J)Ljava/lang/String;
    .locals 22
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v5, 0x0

    .line 99
    .local v5, "escaped":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 100
    .local v12, "str":[B
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    .local v11, "sb":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v6, v0, :cond_0

    .line 206
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    return-object v20

    .line 103
    :cond_0
    aget-byte v20, v12, v6

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v4, v0

    .line 104
    .local v4, "c":C
    if-eqz v5, :cond_1

    .line 105
    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    const/4 v5, 0x0

    .line 102
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/16 v20, 0x5c

    move/from16 v0, v20

    if-ne v4, v0, :cond_3

    .line 108
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 109
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    .line 110
    const-string v21, "invalid escape character"

    .line 109
    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 111
    :cond_2
    const/4 v5, 0x1

    .line 112
    goto :goto_1

    :cond_3
    const/16 v20, 0x24

    move/from16 v0, v20

    if-ne v4, v0, :cond_1d

    .line 113
    const/4 v7, 0x0

    .line 114
    .local v7, "negative":Z
    const-wide/16 v9, 0x0

    .line 115
    .local v9, "offset":J
    const-wide/16 v16, 0x0

    .line 116
    .local v16, "width":J
    const-wide/16 v2, 0xa

    .line 117
    .local v2, "base":J
    const/4 v15, 0x0

    .line 118
    .local v15, "wantUpperCase":Z
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    add-int/lit8 v20, v6, 0x1

    aget-byte v20, v12, v20

    const/16 v21, 0x24

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 121
    add-int/lit8 v6, v6, 0x1

    aget-byte v20, v12, v6

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v4, v0

    .line 122
    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 124
    :cond_4
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    add-int/lit8 v20, v6, 0x1

    aget-byte v20, v12, v20

    const/16 v21, 0x7b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 126
    add-int/lit8 v6, v6, 0x1

    .line 127
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    add-int/lit8 v20, v6, 0x1

    aget-byte v20, v12, v20

    const/16 v21, 0x2d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 128
    const/4 v7, 0x1

    .line 129
    add-int/lit8 v6, v6, 0x1

    .line 131
    :cond_5
    :goto_2
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    .line 142
    :cond_6
    if-eqz v7, :cond_7

    .line 143
    neg-long v9, v9

    .line 145
    :cond_7
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v4, v0, :cond_8

    .line 146
    :goto_3
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    .line 160
    :cond_8
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v4, v0, :cond_10

    .line 161
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 162
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    .line 163
    const-string v21, "invalid base"

    .line 162
    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 132
    :cond_9
    add-int/lit8 v6, v6, 0x1

    aget-byte v20, v12, v6

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v4, v0

    .line 133
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-eq v4, v0, :cond_6

    const/16 v20, 0x7d

    move/from16 v0, v20

    if-eq v4, v0, :cond_6

    .line 135
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v4, v0, :cond_a

    const/16 v20, 0x39

    move/from16 v0, v20

    if-le v4, v0, :cond_b

    .line 136
    :cond_a
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    .line 137
    const-string v21, "invalid offset"

    .line 136
    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 138
    :cond_b
    add-int/lit8 v20, v4, -0x30

    move/from16 v0, v20

    int-to-char v4, v0

    .line 139
    const-wide/16 v20, 0xa

    mul-long v9, v9, v20

    .line 140
    int-to-long v0, v4

    move-wide/from16 v20, v0

    add-long v9, v9, v20

    goto :goto_2

    .line 147
    :cond_c
    add-int/lit8 v6, v6, 0x1

    aget-byte v20, v12, v6

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v4, v0

    .line 148
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-eq v4, v0, :cond_8

    const/16 v20, 0x7d

    move/from16 v0, v20

    if-eq v4, v0, :cond_8

    .line 150
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v4, v0, :cond_d

    const/16 v20, 0x39

    move/from16 v0, v20

    if-le v4, v0, :cond_e

    .line 152
    :cond_d
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    .line 153
    const-string v21, "invalid width"

    .line 151
    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 154
    :cond_e
    add-int/lit8 v20, v4, -0x30

    move/from16 v0, v20

    int-to-char v4, v0

    .line 155
    const-wide/16 v20, 0xa

    mul-long v16, v16, v20

    .line 156
    int-to-long v0, v4

    move-wide/from16 v20, v0

    add-long v16, v16, v20

    goto/16 :goto_3

    .line 164
    :cond_f
    add-int/lit8 v6, v6, 0x1

    aget-byte v20, v12, v6

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-char v4, v0

    .line 165
    const/16 v20, 0x6f

    move/from16 v0, v20

    if-ne v4, v0, :cond_12

    .line 166
    const-wide/16 v2, 0x8

    .line 178
    :cond_10
    :goto_4
    add-int/lit8 v20, v6, 0x1

    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_11

    add-int/lit8 v20, v6, 0x1

    aget-byte v20, v12, v20

    const/16 v21, 0x7d

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_15

    .line 179
    :cond_11
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    .line 180
    const-string v21, "invalid modifiers"

    .line 179
    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 167
    :cond_12
    const/16 v20, 0x78

    move/from16 v0, v20

    if-ne v4, v0, :cond_13

    .line 168
    const-wide/16 v2, 0x10

    goto :goto_4

    .line 169
    :cond_13
    const/16 v20, 0x58

    move/from16 v0, v20

    if-ne v4, v0, :cond_14

    .line 170
    const-wide/16 v2, 0x10

    .line 171
    const/4 v15, 0x1

    .line 172
    goto :goto_4

    .line 173
    :cond_14
    const/16 v20, 0x64

    move/from16 v0, v20

    if-eq v4, v0, :cond_10

    .line 174
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    .line 175
    const-string v21, "invalid base"

    .line 174
    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 181
    :cond_15
    add-int/lit8 v6, v6, 0x1

    .line 183
    :cond_16
    add-long v13, p2, v9

    .line 184
    .local v13, "v":J
    const-wide/16 v20, 0x0

    cmp-long v20, v13, v20

    if-gez v20, :cond_17

    .line 185
    new-instance v20, Lorg/xbill/DNS/TextParseException;

    .line 186
    const-string v21, "invalid offset expansion"

    .line 185
    invoke-direct/range {v20 .. v21}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 188
    :cond_17
    const-wide/16 v20, 0x8

    cmp-long v20, v2, v20

    if-nez v20, :cond_1a

    .line 189
    invoke-static {v13, v14}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, "number":Ljava/lang/String;
    :goto_5
    if-eqz v15, :cond_18

    .line 195
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 196
    :cond_18
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-eqz v20, :cond_19

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v16, v20

    if-lez v20, :cond_19

    .line 197
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    sub-int v18, v20, v21

    .local v18, "zeros":I
    move/from16 v19, v18

    .line 198
    .end local v18    # "zeros":I
    .local v19, "zeros":I
    :goto_6
    add-int/lit8 v18, v19, -0x1

    .end local v19    # "zeros":I
    .restart local v18    # "zeros":I
    if-gtz v19, :cond_1c

    .line 201
    .end local v18    # "zeros":I
    :cond_19
    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 190
    .end local v8    # "number":Ljava/lang/String;
    :cond_1a
    const-wide/16 v20, 0x10

    cmp-long v20, v2, v20

    if-nez v20, :cond_1b

    .line 191
    invoke-static {v13, v14}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "number":Ljava/lang/String;
    goto :goto_5

    .line 193
    .end local v8    # "number":Ljava/lang/String;
    :cond_1b
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "number":Ljava/lang/String;
    goto :goto_5

    .line 199
    .restart local v18    # "zeros":I
    :cond_1c
    const/16 v20, 0x30

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v19, v18

    .end local v18    # "zeros":I
    .restart local v19    # "zeros":I
    goto :goto_6

    .line 203
    .end local v2    # "base":J
    .end local v7    # "negative":Z
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "offset":J
    .end local v13    # "v":J
    .end local v15    # "wantUpperCase":Z
    .end local v16    # "width":J
    .end local v19    # "zeros":I
    :cond_1d
    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method public static supportedType(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-static {p0}, Lorg/xbill/DNS/Type;->check(I)V

    .line 52
    const/16 v1, 0xc

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0x27

    if-eq p0, v1, :cond_0

    .line 53
    if-eq p0, v0, :cond_0

    const/16 v1, 0x1c

    if-eq p0, v1, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 52
    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public expand()[Lorg/xbill/DNS/Record;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v9, "list":Ljava/util/List;
    iget-wide v7, p0, Lorg/xbill/DNS/Generator;->start:J

    .local v7, "i":J
    :goto_0
    iget-wide v1, p0, Lorg/xbill/DNS/Generator;->end:J

    cmp-long v1, v7, v1

    if-ltz v1, :cond_0

    .line 240
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xbill/DNS/Record;

    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/xbill/DNS/Record;

    return-object v1

    .line 234
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Generator;->namePattern:Ljava/lang/String;

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->current:J

    invoke-direct {p0, v1, v2, v3}, Lorg/xbill/DNS/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    .line 235
    .local v10, "namestr":Ljava/lang/String;
    iget-object v1, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    invoke-static {v10, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 236
    .local v0, "name":Lorg/xbill/DNS/Name;
    iget-object v1, p0, Lorg/xbill/DNS/Generator;->rdataPattern:Ljava/lang/String;

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->current:J

    invoke-direct {p0, v1, v2, v3}, Lorg/xbill/DNS/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "rdata":Ljava/lang/String;
    iget v1, p0, Lorg/xbill/DNS/Generator;->type:I

    iget v2, p0, Lorg/xbill/DNS/Generator;->dclass:I

    iget-wide v3, p0, Lorg/xbill/DNS/Generator;->ttl:J

    .line 238
    iget-object v6, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    .line 237
    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-wide v1, p0, Lorg/xbill/DNS/Generator;->step:J

    add-long/2addr v7, v1

    goto :goto_0
.end method

.method public nextRecord()Lorg/xbill/DNS/Record;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    iget-wide v1, p0, Lorg/xbill/DNS/Generator;->current:J

    iget-wide v3, p0, Lorg/xbill/DNS/Generator;->end:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 222
    :goto_0
    return-object v1

    .line 218
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Generator;->namePattern:Ljava/lang/String;

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->current:J

    invoke-direct {p0, v1, v2, v3}, Lorg/xbill/DNS/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, "namestr":Ljava/lang/String;
    iget-object v1, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    invoke-static {v7, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 220
    .local v0, "name":Lorg/xbill/DNS/Name;
    iget-object v1, p0, Lorg/xbill/DNS/Generator;->rdataPattern:Ljava/lang/String;

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->current:J

    invoke-direct {p0, v1, v2, v3}, Lorg/xbill/DNS/Generator;->substitute(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "rdata":Ljava/lang/String;
    iget-wide v1, p0, Lorg/xbill/DNS/Generator;->current:J

    iget-wide v3, p0, Lorg/xbill/DNS/Generator;->step:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/xbill/DNS/Generator;->current:J

    .line 222
    iget v1, p0, Lorg/xbill/DNS/Generator;->type:I

    iget v2, p0, Lorg/xbill/DNS/Generator;->dclass:I

    iget-wide v3, p0, Lorg/xbill/DNS/Generator;->ttl:J

    iget-object v6, p0, Lorg/xbill/DNS/Generator;->origin:Lorg/xbill/DNS/Name;

    invoke-static/range {v0 .. v6}, Lorg/xbill/DNS/Record;->fromString(Lorg/xbill/DNS/Name;IIJLjava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "$GENERATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->start:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->end:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    iget-wide v1, p0, Lorg/xbill/DNS/Generator;->step:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->step:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xbill/DNS/Generator;->namePattern:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/xbill/DNS/Generator;->ttl:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    iget v1, p0, Lorg/xbill/DNS/Generator;->dclass:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "noPrintIN"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 258
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/xbill/DNS/Generator;->dclass:I

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/xbill/DNS/Generator;->type:I

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xbill/DNS/Generator;->rdataPattern:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
