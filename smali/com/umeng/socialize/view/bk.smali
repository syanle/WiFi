.class Lcom/umeng/socialize/view/bk;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ShareActivity;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ShareActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/bk;->a:Lcom/umeng/socialize/view/ShareActivity;

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 864
    iget-object v0, p0, Lcom/umeng/socialize/view/bk;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->p(Lcom/umeng/socialize/view/ShareActivity;)V

    .line 865
    iget-object v0, p0, Lcom/umeng/socialize/view/bk;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    iget-object v0, p0, Lcom/umeng/socialize/view/bk;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/umeng/socialize/view/bk;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->s(Lcom/umeng/socialize/view/ShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    .line 869
    invoke-virtual {v0, v2}, Lcom/umeng/socialize/bean/QQShareMsg;->b(Ljava/lang/String;)V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/bk;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->m(Lcom/umeng/socialize/view/ShareActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/umeng/socialize/view/bk;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->s(Lcom/umeng/socialize/view/ShareActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/umeng/socialize/view/bk;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->y(Lcom/umeng/socialize/view/ShareActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 891
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/bk;->a:Lcom/umeng/socialize/view/ShareActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/ShareActivity;->b(Lcom/umeng/socialize/view/ShareActivity;I)V

    .line 892
    iget-object v0, p0, Lcom/umeng/socialize/view/bk;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0, v2}, Lcom/umeng/socialize/view/ShareActivity;->a(Lcom/umeng/socialize/view/ShareActivity;Lcom/umeng/socialize/media/UMediaObject;)V

    .line 893
    return-void

    .line 877
    :pswitch_0
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    .line 878
    invoke-virtual {v0, v2}, Lcom/umeng/socialize/bean/QQShareMsg;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 882
    :pswitch_1
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    .line 883
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/QQShareMsg;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 874
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
