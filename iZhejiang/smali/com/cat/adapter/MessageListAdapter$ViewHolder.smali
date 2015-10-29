.class final Lcom/cat/adapter/MessageListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cat/adapter/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewHolder"
.end annotation


# instance fields
.field msgContent:Lcom/pubinfo/izhejiang/ExpandableTextView2;

.field msgTime:Landroid/widget/TextView;

.field msgTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/cat/adapter/MessageListAdapter;

.field typeIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/cat/adapter/MessageListAdapter;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cat/adapter/MessageListAdapter$ViewHolder;->this$0:Lcom/cat/adapter/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
