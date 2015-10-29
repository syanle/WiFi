.class Lcom/cat/adapter/DownloadListAdapter$1;
.super Lcom/ta/util/download/DownLoadCallback;
.source "DownloadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cat/adapter/DownloadListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cat/adapter/DownloadListAdapter;


# direct methods
.method constructor <init>(Lcom/cat/adapter/DownloadListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cat/adapter/DownloadListAdapter$1;->this$0:Lcom/cat/adapter/DownloadListAdapter;

    .line 33
    invoke-direct {p0}, Lcom/ta/util/download/DownLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoading(Ljava/lang/String;JJJ)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "totalSize"    # J
    .param p4, "currentSize"    # J
    .param p6, "speed"    # J

    .prologue
    .line 48
    invoke-super/range {p0 .. p7}, Lcom/ta/util/download/DownLoadCallback;->onLoading(Ljava/lang/String;JJJ)V

    .line 49
    const-wide/16 v4, 0x64

    mul-long/2addr v4, p4

    div-long v0, v4, p2

    .line 50
    .local v0, "downloadPercent":J
    iget-object v4, p0, Lcom/cat/adapter/DownloadListAdapter$1;->this$0:Lcom/cat/adapter/DownloadListAdapter;

    # getter for: Lcom/cat/adapter/DownloadListAdapter;->downloadList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/cat/adapter/DownloadListAdapter;->access$2(Lcom/cat/adapter/DownloadListAdapter;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, "taskListItem":Landroid/view/View;
    new-instance v3, Lcom/cat/adapter/ViewHolder;

    invoke-direct {v3, v2}, Lcom/cat/adapter/ViewHolder;-><init>(Landroid/view/View;)V

    .line 52
    .local v3, "viewHolder":Lcom/cat/adapter/ViewHolder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "kbs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 53
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-virtual {v3, p1, v4, v5}, Lcom/cat/adapter/ViewHolder;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v4, p0, Lcom/cat/adapter/DownloadListAdapter$1;->this$0:Lcom/cat/adapter/DownloadListAdapter;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "speed"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "kbps"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 56
    const-string v6, "downloadPercent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-static {v4, v5}, Lcom/ta/util/TALogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter$1;->this$0:Lcom/cat/adapter/DownloadListAdapter;

    # getter for: Lcom/cat/adapter/DownloadListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cat/adapter/DownloadListAdapter;->access$1(Lcom/cat/adapter/DownloadListAdapter;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5b8c\u6210"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter$1;->this$0:Lcom/cat/adapter/DownloadListAdapter;

    invoke-virtual {v0, p1}, Lcom/cat/adapter/DownloadListAdapter;->removeItem(Ljava/lang/String;)V

    .line 41
    return-void
.end method
