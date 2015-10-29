.class Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;
.super Ljava/io/RandomAccessFile;
.source "FileHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/util/http/FileHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressReportingRandomAccessFile"
.end annotation


# instance fields
.field private progress:I

.field final synthetic this$0:Lcom/ta/util/http/FileHttpResponseHandler;


# direct methods
.method public constructor <init>(Lcom/ta/util/http/FileHttpResponseHandler;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p2, "file"    # Ljava/io/File;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    .line 129
    invoke-direct {p0, p2, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->progress:I

    .line 130
    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 138
    iget v0, p0, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->progress:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->progress:I

    .line 139
    iget-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    # getter for: Lcom/ta/util/http/FileHttpResponseHandler;->previousTime:J
    invoke-static {v3}, Lcom/ta/util/http/FileHttpResponseHandler;->access$0(Lcom/ta/util/http/FileHttpResponseHandler;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/ta/util/http/FileHttpResponseHandler;->access$1(Lcom/ta/util/http/FileHttpResponseHandler;J)V

    .line 140
    iget-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    iget v1, p0, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->progress:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    # getter for: Lcom/ta/util/http/FileHttpResponseHandler;->previousFileSize:J
    invoke-static {v3}, Lcom/ta/util/http/FileHttpResponseHandler;->access$2(Lcom/ta/util/http/FileHttpResponseHandler;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/ta/util/http/FileHttpResponseHandler;->access$3(Lcom/ta/util/http/FileHttpResponseHandler;J)V

    .line 141
    iget-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    # getter for: Lcom/ta/util/http/FileHttpResponseHandler;->totalTime:J
    invoke-static {v0}, Lcom/ta/util/http/FileHttpResponseHandler;->access$4(Lcom/ta/util/http/FileHttpResponseHandler;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    iget v1, p0, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->progress:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/ta/util/http/FileHttpResponseHandler$ProgressReportingRandomAccessFile;->this$0:Lcom/ta/util/http/FileHttpResponseHandler;

    # getter for: Lcom/ta/util/http/FileHttpResponseHandler;->totalTime:J
    invoke-static {v3}, Lcom/ta/util/http/FileHttpResponseHandler;->access$4(Lcom/ta/util/http/FileHttpResponseHandler;)J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x3ff0624dd2f1a9fcL    # 1.024

    div-double/2addr v1, v3

    double-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/ta/util/http/FileHttpResponseHandler;->access$5(Lcom/ta/util/http/FileHttpResponseHandler;J)V

    .line 146
    :cond_0
    return-void
.end method
