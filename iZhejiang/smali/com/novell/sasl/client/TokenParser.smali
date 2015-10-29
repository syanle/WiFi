.class Lcom/novell/sasl/client/TokenParser;
.super Ljava/lang/Object;
.source "TokenParser.java"


# static fields
.field private static final STATE_DONE:I = 0x6

.field private static final STATE_LOOKING_FOR_COMMA:I = 0x4

.field private static final STATE_LOOKING_FOR_FIRST_TOKEN:I = 0x1

.field private static final STATE_LOOKING_FOR_TOKEN:I = 0x2

.field private static final STATE_PARSING_ERROR:I = 0x5

.field private static final STATE_SCANNING_TOKEN:I = 0x3


# instance fields
.field private m_curPos:I

.field private m_scanStart:I

.field private m_state:I

.field private m_tokens:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tokens"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/novell/sasl/client/TokenParser;->m_tokens:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    .line 43
    iput v0, p0, Lcom/novell/sasl/client/TokenParser;->m_scanStart:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    .line 45
    return-void
.end method


# virtual methods
.method isValidTokenChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 172
    if-ltz p1, :cond_0

    const/16 v0, 0x20

    if-le p1, v0, :cond_3

    .line 173
    :cond_0
    const/16 v0, 0x3a

    if-lt p1, v0, :cond_1

    const/16 v0, 0x40

    if-le p1, v0, :cond_3

    .line 174
    :cond_1
    const/16 v0, 0x5b

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5d

    if-le p1, v0, :cond_3

    .line 175
    :cond_2
    const/16 v0, 0x2c

    if-eq v0, p1, :cond_3

    .line 176
    const/16 v0, 0x25

    if-eq v0, p1, :cond_3

    .line 177
    const/16 v0, 0x28

    if-eq v0, p1, :cond_3

    .line 178
    const/16 v0, 0x29

    if-eq v0, p1, :cond_3

    .line 179
    const/16 v0, 0x7b

    if-eq v0, p1, :cond_3

    .line 180
    const/16 v0, 0x7d

    if-eq v0, p1, :cond_3

    .line 181
    const/16 v0, 0x7f

    if-ne v0, p1, :cond_4

    .line 182
    :cond_3
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isWhiteSpace(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 198
    const/16 v0, 0x9

    if-eq v0, p1, :cond_0

    .line 199
    const/16 v0, 0xa

    if-eq v0, p1, :cond_0

    .line 200
    const/16 v0, 0xd

    if-eq v0, p1, :cond_0

    .line 201
    const/16 v0, 0x20

    if-ne v0, p1, :cond_1

    .line 202
    :cond_0
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseToken()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/sasl/SaslException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2c

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x5

    .line 59
    const/4 v1, 0x0

    .line 62
    .local v1, "token":Ljava/lang/String;
    iget v2, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    if-ne v2, v7, :cond_2

    .line 63
    const/4 v2, 0x0

    .line 146
    :goto_0
    return-object v2

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/novell/sasl/client/TokenParser;->m_tokens:Ljava/lang/String;

    iget v3, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 68
    .local v0, "currChar":C
    iget v2, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    packed-switch v2, :pswitch_data_0

    .line 124
    :cond_1
    :goto_1
    iget v2, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    add-int/lit8 v2, v2, 0x1

    .line 125
    iput v2, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    .line 65
    .end local v0    # "currChar":C
    :cond_2
    iget v2, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    iget-object v3, p0, Lcom/novell/sasl/client/TokenParser;->m_tokens:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-eqz v1, :cond_0

    .line 128
    :cond_3
    if-nez v1, :cond_4

    .line 130
    iget v2, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    packed-switch v2, :pswitch_data_1

    :cond_4
    :goto_2
    :pswitch_0
    move-object v2, v1

    .line 146
    goto :goto_0

    .line 72
    .restart local v0    # "currChar":C
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/TokenParser;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/TokenParser;->isValidTokenChar(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 78
    iget v2, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    iput v2, p0, Lcom/novell/sasl/client/TokenParser;->m_scanStart:I

    .line 79
    const/4 v2, 0x3

    iput v2, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    goto :goto_1

    .line 83
    :cond_5
    iput v5, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    .line 84
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid token character at position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/TokenParser;->isValidTokenChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/TokenParser;->isWhiteSpace(C)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    iget-object v2, p0, Lcom/novell/sasl/client/TokenParser;->m_tokens:Ljava/lang/String;

    iget v3, p0, Lcom/novell/sasl/client/TokenParser;->m_scanStart:I

    iget v4, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 96
    const/4 v2, 0x4

    iput v2, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    goto :goto_1

    .line 98
    :cond_6
    if-ne v8, v0, :cond_7

    .line 100
    iget-object v2, p0, Lcom/novell/sasl/client/TokenParser;->m_tokens:Ljava/lang/String;

    iget v3, p0, Lcom/novell/sasl/client/TokenParser;->m_scanStart:I

    iget v4, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 101
    iput v6, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    goto :goto_1

    .line 105
    :cond_7
    iput v5, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    .line 106
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid token character at position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/novell/sasl/client/TokenParser;->isWhiteSpace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    if-ne v0, v8, :cond_8

    .line 115
    iput v6, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    goto/16 :goto_1

    .line 118
    :cond_8
    iput v5, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    .line 119
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/SaslException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected a comma, found \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' at postion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 121
    iget v4, p0, Lcom/novell/sasl/client/TokenParser;->m_curPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    .end local v0    # "currChar":C
    :pswitch_4
    iget-object v2, p0, Lcom/novell/sasl/client/TokenParser;->m_tokens:Ljava/lang/String;

    iget v3, p0, Lcom/novell/sasl/client/TokenParser;->m_scanStart:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    iput v7, p0, Lcom/novell/sasl/client/TokenParser;->m_state:I

    goto/16 :goto_2

    .line 142
    :pswitch_5
    new-instance v2, Lorg/apache/harmony/javax/security/sasl/SaslException;

    const-string v3, "Trialing comma"

    invoke-direct {v2, v3}, Lorg/apache/harmony/javax/security/sasl/SaslException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 130
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
