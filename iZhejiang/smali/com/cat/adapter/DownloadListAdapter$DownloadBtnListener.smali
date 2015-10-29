.class Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;
.super Ljava/lang/Object;
.source "DownloadListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cat/adapter/DownloadListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadBtnListener"
.end annotation


# instance fields
.field private mViewHolder:Lcom/cat/adapter/ViewHolder;

.field final synthetic this$0:Lcom/cat/adapter/DownloadListAdapter;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cat/adapter/DownloadListAdapter;Ljava/lang/String;Lcom/cat/adapter/ViewHolder;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "viewHolder"    # Lcom/cat/adapter/ViewHolder;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->this$0:Lcom/cat/adapter/DownloadListAdapter;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->url:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->mViewHolder:Lcom/cat/adapter/ViewHolder;

    .line 140
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 149
    :pswitch_0
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->this$0:Lcom/cat/adapter/DownloadListAdapter;

    # getter for: Lcom/cat/adapter/DownloadListAdapter;->downloadManager:Lcom/ta/util/download/DownloadManager;
    invoke-static {v0}, Lcom/cat/adapter/DownloadListAdapter;->access$0(Lcom/cat/adapter/DownloadListAdapter;)Lcom/ta/util/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ta/util/download/DownloadManager;->continueHandler(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->mViewHolder:Lcom/cat/adapter/ViewHolder;

    iget-object v0, v0, Lcom/cat/adapter/ViewHolder;->continueButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->mViewHolder:Lcom/cat/adapter/ViewHolder;

    iget-object v0, v0, Lcom/cat/adapter/ViewHolder;->pauseButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->this$0:Lcom/cat/adapter/DownloadListAdapter;

    # getter for: Lcom/cat/adapter/DownloadListAdapter;->downloadManager:Lcom/ta/util/download/DownloadManager;
    invoke-static {v0}, Lcom/cat/adapter/DownloadListAdapter;->access$0(Lcom/cat/adapter/DownloadListAdapter;)Lcom/ta/util/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ta/util/download/DownloadManager;->pauseHandler(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->mViewHolder:Lcom/cat/adapter/ViewHolder;

    iget-object v0, v0, Lcom/cat/adapter/ViewHolder;->continueButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->mViewHolder:Lcom/cat/adapter/ViewHolder;

    iget-object v0, v0, Lcom/cat/adapter/ViewHolder;->pauseButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 162
    :pswitch_2
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->this$0:Lcom/cat/adapter/DownloadListAdapter;

    # getter for: Lcom/cat/adapter/DownloadListAdapter;->downloadManager:Lcom/ta/util/download/DownloadManager;
    invoke-static {v0}, Lcom/cat/adapter/DownloadListAdapter;->access$0(Lcom/cat/adapter/DownloadListAdapter;)Lcom/ta/util/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ta/util/download/DownloadManager;->deleteHandler(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->this$0:Lcom/cat/adapter/DownloadListAdapter;

    iget-object v1, p0, Lcom/cat/adapter/DownloadListAdapter$DownloadBtnListener;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cat/adapter/DownloadListAdapter;->removeItem(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x7f0a003c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
