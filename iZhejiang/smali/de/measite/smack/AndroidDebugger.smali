.class public Lde/measite/smack/AndroidDebugger;
.super Ljava/lang/Object;
.source "AndroidDebugger.java"

# interfaces
.implements Lorg/jivesoftware/smack/debugger/SmackDebugger;


# static fields
.field public static printInterpreted:Z


# instance fields
.field private connListener:Lorg/jivesoftware/smack/ConnectionListener;

.field private connection:Lorg/jivesoftware/smack/Connection;

.field private dateFormatter:Ljava/text/SimpleDateFormat;

.field private listener:Lorg/jivesoftware/smack/PacketListener;

.field private reader:Ljava/io/Reader;

.field private readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

.field private writer:Ljava/io/Writer;

.field private writerListener:Lorg/jivesoftware/smack/util/WriterListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lde/measite/smack/AndroidDebugger;->printInterpreted:Z

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Connection;Ljava/io/Writer;Ljava/io/Reader;)V
    .locals 3
    .param p1, "connection"    # Lorg/jivesoftware/smack/Connection;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "reader"    # Ljava/io/Reader;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm:ss aaa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lde/measite/smack/AndroidDebugger;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 33
    iput-object v2, p0, Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    .line 35
    iput-object v2, p0, Lde/measite/smack/AndroidDebugger;->listener:Lorg/jivesoftware/smack/PacketListener;

    .line 36
    iput-object v2, p0, Lde/measite/smack/AndroidDebugger;->connListener:Lorg/jivesoftware/smack/ConnectionListener;

    .line 44
    iput-object p1, p0, Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    .line 45
    iput-object p2, p0, Lde/measite/smack/AndroidDebugger;->writer:Ljava/io/Writer;

    .line 46
    iput-object p3, p0, Lde/measite/smack/AndroidDebugger;->reader:Ljava/io/Reader;

    .line 47
    invoke-direct {p0}, Lde/measite/smack/AndroidDebugger;->createDebug()V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lde/measite/smack/AndroidDebugger;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->dateFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$1(Lde/measite/smack/AndroidDebugger;)Lorg/jivesoftware/smack/Connection;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    return-object v0
.end method

.method private createDebug()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lorg/jivesoftware/smack/util/ObservableReader;

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger;->reader:Ljava/io/Reader;

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/util/ObservableReader;-><init>(Ljava/io/Reader;)V

    .line 56
    .local v0, "debugReader":Lorg/jivesoftware/smack/util/ObservableReader;
    new-instance v2, Lde/measite/smack/AndroidDebugger$1;

    invoke-direct {v2, p0}, Lde/measite/smack/AndroidDebugger$1;-><init>(Lde/measite/smack/AndroidDebugger;)V

    iput-object v2, p0, Lde/measite/smack/AndroidDebugger;->readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

    .line 64
    iget-object v2, p0, Lde/measite/smack/AndroidDebugger;->readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/util/ObservableReader;->addReaderListener(Lorg/jivesoftware/smack/util/ReaderListener;)V

    .line 67
    new-instance v1, Lorg/jivesoftware/smack/util/ObservableWriter;

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger;->writer:Ljava/io/Writer;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/util/ObservableWriter;-><init>(Ljava/io/Writer;)V

    .line 68
    .local v1, "debugWriter":Lorg/jivesoftware/smack/util/ObservableWriter;
    new-instance v2, Lde/measite/smack/AndroidDebugger$2;

    invoke-direct {v2, p0}, Lde/measite/smack/AndroidDebugger$2;-><init>(Lde/measite/smack/AndroidDebugger;)V

    iput-object v2, p0, Lde/measite/smack/AndroidDebugger;->writerListener:Lorg/jivesoftware/smack/util/WriterListener;

    .line 76
    iget-object v2, p0, Lde/measite/smack/AndroidDebugger;->writerListener:Lorg/jivesoftware/smack/util/WriterListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/util/ObservableWriter;->addWriterListener(Lorg/jivesoftware/smack/util/WriterListener;)V

    .line 80
    iput-object v0, p0, Lde/measite/smack/AndroidDebugger;->reader:Ljava/io/Reader;

    .line 81
    iput-object v1, p0, Lde/measite/smack/AndroidDebugger;->writer:Ljava/io/Writer;

    .line 86
    new-instance v2, Lde/measite/smack/AndroidDebugger$3;

    invoke-direct {v2, p0}, Lde/measite/smack/AndroidDebugger$3;-><init>(Lde/measite/smack/AndroidDebugger;)V

    iput-object v2, p0, Lde/measite/smack/AndroidDebugger;->listener:Lorg/jivesoftware/smack/PacketListener;

    .line 98
    new-instance v2, Lde/measite/smack/AndroidDebugger$4;

    invoke-direct {v2, p0}, Lde/measite/smack/AndroidDebugger$4;-><init>(Lde/measite/smack/AndroidDebugger;)V

    iput-object v2, p0, Lde/measite/smack/AndroidDebugger;->connListener:Lorg/jivesoftware/smack/ConnectionListener;

    .line 135
    return-void
.end method


# virtual methods
.method public getReader()Ljava/io/Reader;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public getReaderListener()Lorg/jivesoftware/smack/PacketListener;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->listener:Lorg/jivesoftware/smack/PacketListener;

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lde/measite/smack/AndroidDebugger;->writer:Ljava/io/Writer;

    return-object v0
.end method

.method public getWriterListener()Lorg/jivesoftware/smack/PacketListener;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public newConnectionReader(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 3
    .param p1, "newReader"    # Ljava/io/Reader;

    .prologue
    .line 138
    iget-object v1, p0, Lde/measite/smack/AndroidDebugger;->reader:Ljava/io/Reader;

    check-cast v1, Lorg/jivesoftware/smack/util/ObservableReader;

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger;->readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/util/ObservableReader;->removeReaderListener(Lorg/jivesoftware/smack/util/ReaderListener;)V

    .line 139
    new-instance v0, Lorg/jivesoftware/smack/util/ObservableReader;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/util/ObservableReader;-><init>(Ljava/io/Reader;)V

    .line 140
    .local v0, "debugReader":Lorg/jivesoftware/smack/util/ObservableReader;
    iget-object v1, p0, Lde/measite/smack/AndroidDebugger;->readerListener:Lorg/jivesoftware/smack/util/ReaderListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableReader;->addReaderListener(Lorg/jivesoftware/smack/util/ReaderListener;)V

    .line 141
    iput-object v0, p0, Lde/measite/smack/AndroidDebugger;->reader:Ljava/io/Reader;

    .line 142
    iget-object v1, p0, Lde/measite/smack/AndroidDebugger;->reader:Ljava/io/Reader;

    return-object v1
.end method

.method public newConnectionWriter(Ljava/io/Writer;)Ljava/io/Writer;
    .locals 3
    .param p1, "newWriter"    # Ljava/io/Writer;

    .prologue
    .line 146
    iget-object v1, p0, Lde/measite/smack/AndroidDebugger;->writer:Ljava/io/Writer;

    check-cast v1, Lorg/jivesoftware/smack/util/ObservableWriter;

    iget-object v2, p0, Lde/measite/smack/AndroidDebugger;->writerListener:Lorg/jivesoftware/smack/util/WriterListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/util/ObservableWriter;->removeWriterListener(Lorg/jivesoftware/smack/util/WriterListener;)V

    .line 147
    new-instance v0, Lorg/jivesoftware/smack/util/ObservableWriter;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/util/ObservableWriter;-><init>(Ljava/io/Writer;)V

    .line 148
    .local v0, "debugWriter":Lorg/jivesoftware/smack/util/ObservableWriter;
    iget-object v1, p0, Lde/measite/smack/AndroidDebugger;->writerListener:Lorg/jivesoftware/smack/util/WriterListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/ObservableWriter;->addWriterListener(Lorg/jivesoftware/smack/util/WriterListener;)V

    .line 149
    iput-object v0, p0, Lde/measite/smack/AndroidDebugger;->writer:Ljava/io/Writer;

    .line 150
    iget-object v1, p0, Lde/measite/smack/AndroidDebugger;->writer:Ljava/io/Writer;

    return-object v1
.end method

.method public userHasLogged(Ljava/lang/String;)V
    .locals 4
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string v2, ""

    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 156
    .local v0, "isAnonymous":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "User logged ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 157
    if-eqz v0, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 158
    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    iget-object v3, p0, Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 160
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    iget-object v3, p0, Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string v2, "SMACK"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v2, p0, Lde/measite/smack/AndroidDebugger;->connection:Lorg/jivesoftware/smack/Connection;

    iget-object v3, p0, Lde/measite/smack/AndroidDebugger;->connListener:Lorg/jivesoftware/smack/ConnectionListener;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/Connection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 167
    return-void

    .line 157
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
