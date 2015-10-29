.class Lcom/pubinfo/izhejiang/ConnectActivity$8;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/ConnectActivity;->setStatus(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

.field private final synthetic val$content:Ljava/lang/String;

.field private final synthetic val$drawable:I

.field private final synthetic val$i:I

.field private final synthetic val$logourl:Ljava/lang/String;

.field private final synthetic val$msg:Ljava/lang/String;

.field private final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/ConnectActivity;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iput p2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$drawable:I

    iput-object p3, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$content:Ljava/lang/String;

    iput p5, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$i:I

    iput-object p6, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$type:Ljava/lang/String;

    iput-object p7, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$logourl:Ljava/lang/String;

    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/ConnectActivity$8;)Lcom/pubinfo/izhejiang/ConnectActivity;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0x7f020032

    const v5, 0x7f02002e

    const v4, 0x7f02002d

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 872
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/ConnectActivity;->hideWifiLoading()V

    .line 873
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_tag:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_tag:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 875
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_tag:Landroid/widget/ImageView;

    iget v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$drawable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 876
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv_msg:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->btn_commit:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->btn_commit:Landroid/widget/Button;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$i:I

    if-nez v0, :cond_5

    .line 880
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    const-string v1, "yes"

    iput-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->tag_yesno:Ljava/lang/String;

    .line 881
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$type:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_logo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 883
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_logo:Landroid/widget/RelativeLayout;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 884
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_type:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 885
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_type:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 886
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv_safety:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 887
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv_safety:Landroid/widget/ImageView;

    .line 888
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$type:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 890
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv_safety:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 891
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv_safety:Landroid/widget/ImageView;

    .line 892
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 893
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$logourl:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$logourl:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 894
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_logo:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$logourl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 895
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->mDownloader:Lcom/cat/list/ImageDownloader;

    if-nez v0, :cond_2

    .line 896
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    new-instance v1, Lcom/cat/list/ImageDownloader;

    invoke-direct {v1}, Lcom/cat/list/ImageDownloader;-><init>()V

    iput-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->mDownloader:Lcom/cat/list/ImageDownloader;

    .line 899
    :cond_2
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->mDownloader:Lcom/cat/list/ImageDownloader;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$logourl:Ljava/lang/String;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_logo:Landroid/widget/RelativeLayout;

    .line 900
    const-string v3, "/Awifi"

    iget-object v4, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    .line 901
    new-instance v5, Lcom/pubinfo/izhejiang/ConnectActivity$8$1;

    invoke-direct {v5, p0}, Lcom/pubinfo/izhejiang/ConnectActivity$8$1;-><init>(Lcom/pubinfo/izhejiang/ConnectActivity$8;)V

    .line 899
    invoke-virtual/range {v0 .. v5}, Lcom/cat/list/ImageDownloader;->imageDownload(Ljava/lang/String;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;Lcom/cat/list/OnImageDownload;)V

    goto :goto_0

    .line 929
    :cond_3
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_logo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 930
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_logo:Landroid/widget/RelativeLayout;

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 931
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_type:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 932
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_type:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 934
    :cond_4
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$type:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_logo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 936
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_logo:Landroid/widget/RelativeLayout;

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 937
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_type:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 938
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_type:Landroid/widget/ImageView;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 939
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv_safety:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 940
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv_safety:Landroid/widget/ImageView;

    .line 941
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 943
    :cond_5
    iget v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->val$i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 944
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    const-string v1, "no"

    iput-object v1, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->tag_yesno:Ljava/lang/String;

    .line 945
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_logo:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 946
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->rl_logo:Landroid/widget/RelativeLayout;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 947
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_type:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 948
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->iv_type:Landroid/widget/ImageView;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 949
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv_safety:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 950
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$8;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv_safety:Landroid/widget/ImageView;

    .line 951
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method
