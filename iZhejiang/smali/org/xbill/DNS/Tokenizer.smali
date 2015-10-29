.class public Lorg/xbill/DNS/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Tokenizer$Token;,
        Lorg/xbill/DNS/Tokenizer$TokenizerException;
    }
.end annotation


# static fields
.field public static final COMMENT:I = 0x5

.field public static final EOF:I = 0x0

.field public static final EOL:I = 0x1

.field public static final IDENTIFIER:I = 0x3

.field public static final QUOTED_STRING:I = 0x4

.field public static final WHITESPACE:I = 0x2

.field private static delim:Ljava/lang/String;

.field private static quotes:Ljava/lang/String;


# instance fields
.field private current:Lorg/xbill/DNS/Tokenizer$Token;

.field private delimiters:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private is:Ljava/io/PushbackInputStream;

.field private line:I

.field private multiline:I

.field private quoting:Z

.field private sb:Ljava/lang/StringBuffer;

.field private ungottenToken:Z

.field private wantClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, " \t\n;()\""

    sput-object v0, Lorg/xbill/DNS/Tokenizer;->delim:Ljava/lang/String;

    .line 35
    const-string v0, "\""

    sput-object v0, Lorg/xbill/DNS/Tokenizer;->quotes:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->wantClose:Z

    .line 177
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    instance-of v1, p1, Ljava/io/BufferedInputStream;

    if-nez v1, :cond_0

    .line 148
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    move-object p1, v0

    .line 149
    .end local v0    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    .line 150
    iput-boolean v3, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    .line 151
    iput v3, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    .line 152
    iput-boolean v3, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    .line 153
    sget-object v1, Lorg/xbill/DNS/Tokenizer;->delim:Ljava/lang/String;

    iput-object v1, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    .line 154
    new-instance v1, Lorg/xbill/DNS/Tokenizer$Token;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Tokenizer$Token;-><init>(Lorg/xbill/DNS/Tokenizer$Token;)V

    iput-object v1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    .line 155
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    .line 156
    const-string v1, "<none>"

    iput-object v1, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    .line 157
    const/4 v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    .line 167
    return-void
.end method

.method private _getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 382
    .local v0, "next":Lorg/xbill/DNS/Tokenizer$Token;
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 384
    :cond_0
    iget-object v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    return-object v1
.end method

.method private checkUnbalancedParens()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 220
    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-lez v0, :cond_0

    .line 221
    const-string v0, "unbalanced parentheses"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 222
    :cond_0
    return-void
.end method

.method private getChar()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    .line 182
    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 183
    .local v0, "c":I
    const/16 v2, 0xd

    if-ne v0, v2, :cond_1

    .line 184
    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 185
    .local v1, "next":I
    if-eq v1, v3, :cond_0

    .line 186
    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 187
    :cond_0
    const/16 v0, 0xa

    .line 189
    .end local v1    # "next":I
    :cond_1
    if-ne v0, v3, :cond_2

    .line 190
    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    .line 191
    :cond_2
    return v0
.end method

.method private remainingStrings()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 564
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v1

    .line 565
    .local v1, "t":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v1}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->unget()V

    .line 572
    if-nez v0, :cond_2

    .line 573
    const/4 v2, 0x0

    .line 574
    :goto_1
    return-object v2

    .line 567
    :cond_0
    if-nez v0, :cond_1

    .line 568
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 569
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_1
    iget-object v2, v1, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 574
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private skipWhitespace()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, "skipped":I
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v0

    .line 208
    .local v0, "c":I
    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    .line 209
    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-gtz v2, :cond_1

    .line 210
    :cond_0
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    .line 211
    return v1

    .line 214
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 206
    goto :goto_0
.end method

.method private ungetChar(I)V
    .locals 1
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 199
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 200
    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->wantClose:Z

    if-eqz v0, :cond_0

    .line 701
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 691
    new-instance v0, Lorg/xbill/DNS/Tokenizer$TokenizerException;

    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    invoke-direct {v0, v1, v2, p1}, Lorg/xbill/DNS/Tokenizer$TokenizerException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 710
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->close()V

    .line 711
    return-void
.end method

.method public get()Lorg/xbill/DNS/Tokenizer$Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, v0, v0}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method public get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;
    .locals 10
    .param p1, "wantWhitespace"    # Z
    .param p2, "wantComment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 238
    iget-boolean v3, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    if-eqz v3, :cond_3

    .line 239
    iput-boolean v5, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    .line 240
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v3, v3, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 241
    if-eqz p1, :cond_3

    .line 242
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    .line 335
    :goto_0
    return-object v3

    .line 243
    :cond_0
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v3, v3, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 244
    if-eqz p2, :cond_3

    .line 245
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    goto :goto_0

    .line 247
    :cond_1
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v3, v3, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v3, v8, :cond_2

    .line 248
    iget v3, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    .line 249
    :cond_2
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    goto :goto_0

    .line 252
    :cond_3
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    move-result v1

    .line 253
    .local v1, "skipped":I
    if-lez v1, :cond_4

    if-eqz p1, :cond_4

    .line 254
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    const/4 v4, 0x2

    # invokes: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v3, v4, v7}, Lorg/xbill/DNS/Tokenizer$Token;->access$1(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    goto :goto_0

    .line 255
    :cond_4
    const/4 v2, 0x3

    .line 256
    .local v2, "type":I
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 258
    :goto_1
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v0

    .line 259
    .local v0, "c":I
    if-eq v0, v6, :cond_5

    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_16

    .line 260
    :cond_5
    if-ne v0, v6, :cond_8

    .line 261
    iget-boolean v3, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-eqz v3, :cond_6

    .line 262
    const-string v3, "EOF in quoted string"

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 264
    :cond_6
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 265
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    # invokes: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v3, v5, v7}, Lorg/xbill/DNS/Tokenizer$Token;->access$1(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    goto :goto_0

    .line 267
    :cond_7
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget-object v4, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    # invokes: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v3, v2, v4}, Lorg/xbill/DNS/Tokenizer$Token;->access$1(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    goto :goto_0

    .line 269
    :cond_8
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_15

    if-eq v2, v9, :cond_15

    .line 270
    const/16 v3, 0x28

    if-ne v0, v3, :cond_9

    .line 271
    iget v3, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    .line 272
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    goto :goto_1

    .line 274
    :cond_9
    const/16 v3, 0x29

    if-ne v0, v3, :cond_b

    .line 275
    iget v3, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-gtz v3, :cond_a

    .line 276
    const-string v3, "invalid close parenthesis"

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 279
    :cond_a
    iget v3, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    .line 280
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    goto :goto_1

    .line 282
    :cond_b
    const/16 v3, 0x22

    if-ne v0, v3, :cond_d

    .line 283
    iget-boolean v3, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-nez v3, :cond_c

    .line 284
    iput-boolean v8, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    .line 285
    sget-object v3, Lorg/xbill/DNS/Tokenizer;->quotes:Ljava/lang/String;

    iput-object v3, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    .line 286
    const/4 v2, 0x4

    .line 287
    goto :goto_1

    .line 288
    :cond_c
    iput-boolean v5, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    .line 289
    sget-object v3, Lorg/xbill/DNS/Tokenizer;->delim:Ljava/lang/String;

    iput-object v3, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    .line 290
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    goto :goto_1

    .line 293
    :cond_d
    const/16 v3, 0xa

    if-ne v0, v3, :cond_e

    .line 294
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    # invokes: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v3, v8, v7}, Lorg/xbill/DNS/Tokenizer$Token;->access$1(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    goto/16 :goto_0

    .line 295
    :cond_e
    const/16 v3, 0x3b

    if-ne v0, v3, :cond_14

    .line 297
    :goto_2
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v0

    .line 298
    const/16 v3, 0xa

    if-eq v0, v3, :cond_f

    if-ne v0, v6, :cond_10

    .line 302
    :cond_f
    if-eqz p2, :cond_11

    .line 303
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    .line 304
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    const/4 v4, 0x5

    iget-object v5, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    # invokes: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v3, v4, v5}, Lorg/xbill/DNS/Tokenizer$Token;->access$1(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    goto/16 :goto_0

    .line 300
    :cond_10
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 305
    :cond_11
    if-ne v0, v6, :cond_12

    .line 306
    if-eq v2, v9, :cond_12

    .line 308
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->checkUnbalancedParens()V

    .line 309
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    # invokes: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v3, v5, v7}, Lorg/xbill/DNS/Tokenizer$Token;->access$1(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    goto/16 :goto_0

    .line 310
    :cond_12
    iget v3, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-lez v3, :cond_13

    .line 311
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    .line 312
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_1

    .line 315
    :cond_13
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    # invokes: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v3, v8, v7}, Lorg/xbill/DNS/Tokenizer$Token;->access$1(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    goto/16 :goto_0

    .line 317
    :cond_14
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 319
    :cond_15
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    .line 331
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_1a

    if-eq v2, v9, :cond_1a

    .line 332
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->checkUnbalancedParens()V

    .line 333
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    # invokes: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v3, v5, v7}, Lorg/xbill/DNS/Tokenizer$Token;->access$1(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    goto/16 :goto_0

    .line 321
    :cond_16
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_19

    .line 322
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v0

    .line 323
    if-ne v0, v6, :cond_17

    .line 324
    const-string v3, "unterminated escape sequence"

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 325
    :cond_17
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 329
    :cond_18
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 326
    :cond_19
    iget-boolean v3, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-eqz v3, :cond_18

    const/16 v3, 0xa

    if-ne v0, v3, :cond_18

    .line 327
    const-string v3, "newline in quoted string"

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 335
    :cond_1a
    iget-object v3, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget-object v4, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuffer;

    # invokes: Lorg/xbill/DNS/Tokenizer$Token;->set(ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;
    invoke-static {v3, v2, v4}, Lorg/xbill/DNS/Tokenizer$Token;->access$1(Lorg/xbill/DNS/Tokenizer$Token;ILjava/lang/StringBuffer;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public getAddress(I)Ljava/net/InetAddress;
    .locals 3
    .param p1, "family"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    const-string v2, "an address"

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, "next":Ljava/lang/String;
    :try_start_0
    invoke-static {v1, p1}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getBase32String(Lorg/xbill/DNS/utils/base32;)[B
    .locals 3
    .param p1, "b32"    # Lorg/xbill/DNS/utils/base32;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    const-string v2, "a base32 string"

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "next":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/utils/base32;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 679
    .local v0, "array":[B
    if-nez v0, :cond_0

    .line 680
    const-string v2, "invalid base32 encoding"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 681
    :cond_0
    return-object v0
.end method

.method public getBase64()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getBase64(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getBase64(Z)[B
    .locals 3
    .param p1, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->remainingStrings()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 591
    if-eqz p1, :cond_0

    .line 592
    const-string v2, "expected base64 encoded string"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 594
    :cond_0
    const/4 v0, 0x0

    .line 599
    :cond_1
    return-object v0

    .line 596
    :cond_2
    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 597
    .local v0, "array":[B
    if-nez v0, :cond_1

    .line 598
    const-string v2, "invalid base64 encoding"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getEOL()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 552
    .local v0, "next":Lorg/xbill/DNS/Tokenizer$Token;
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-eqz v1, :cond_0

    .line 553
    const-string v1, "expected EOL or EOF"

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 555
    :cond_0
    return-void
.end method

.method public getHex()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getHex(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getHex(Z)[B
    .locals 3
    .param p1, "required"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->remainingStrings()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 629
    if-eqz p1, :cond_0

    .line 630
    const-string v2, "expected hex encoded string"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 632
    :cond_0
    const/4 v0, 0x0

    .line 637
    :cond_1
    return-object v0

    .line 634
    :cond_2
    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 635
    .local v0, "array":[B
    if-nez v0, :cond_1

    .line 636
    const-string v2, "invalid hex encoding"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getHexString()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    const-string v2, "a hex string"

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, "next":Ljava/lang/String;
    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    .line 663
    .local v0, "array":[B
    if-nez v0, :cond_0

    .line 664
    const-string v2, "invalid hex encoding"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 665
    :cond_0
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    const-string v0, "an identifier"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    const-string v2, "an integer"

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, "next":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 409
    const-string v2, "expected an integer"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 411
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "expected an integer"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 4
    .param p1, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    const-string v3, "a name"

    invoke-direct {p0, v3}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "next":Ljava/lang/String;
    :try_start_0
    invoke-static {v2, p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 516
    .local v1, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_0

    .line 517
    new-instance v3, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v3, v1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v3
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v1    # "name":Lorg/xbill/DNS/Name;
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    invoke-virtual {v0}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v3

    throw v3

    .line 518
    .end local v0    # "e":Lorg/xbill/DNS/TextParseException;
    .restart local v1    # "name":Lorg/xbill/DNS/Name;
    :cond_0
    return-object v1
.end method

.method public getString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 373
    .local v0, "next":Lorg/xbill/DNS/Tokenizer$Token;
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v1

    if-nez v1, :cond_0

    .line 374
    const-string v1, "expected a string"

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1

    .line 376
    :cond_0
    iget-object v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    return-object v1
.end method

.method public getTTL()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    const-string v2, "a TTL value"

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "next":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "expected a TTL value"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getTTLLike()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    const-string v2, "a TTL-like value"

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Tokenizer;->_getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "next":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Lorg/xbill/DNS/TTL;->parse(Ljava/lang/String;Z)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "expected a TTL-like value"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2
.end method

.method public getUInt16()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    .line 444
    .local v0, "l":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 445
    :cond_0
    const-string v2, "expected an 16 bit unsigned integer"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 446
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method public getUInt32()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    .line 428
    .local v0, "l":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 429
    :cond_0
    const-string v2, "expected an 32 bit unsigned integer"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 430
    :cond_1
    return-wide v0
.end method

.method public getUInt8()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    .line 460
    .local v0, "l":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0xff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 461
    :cond_0
    const-string v2, "expected an 8 bit unsigned integer"

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v2

    throw v2

    .line 462
    :cond_1
    long-to-int v2, v0

    return v2
.end method

.method public unget()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 356
    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    if-eqz v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 358
    const-string v1, "Cannot unget multiple tokens"

    .line 357
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v0, v1, :cond_1

    .line 360
    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    .line 361
    :cond_1
    iput-boolean v1, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    .line 362
    return-void
.end method
