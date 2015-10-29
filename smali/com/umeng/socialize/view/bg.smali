.class Lcom/umeng/socialize/view/bg;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/umeng/socialize/media/UMRichMedia$OnRichMediaDataListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/bf;

.field private final synthetic b:Lcom/umeng/socialize/bean/UMShareMsg;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/bf;Lcom/umeng/socialize/bean/UMShareMsg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/bg;->a:Lcom/umeng/socialize/view/bf;

    iput-object p2, p0, Lcom/umeng/socialize/view/bg;->b:Lcom/umeng/socialize/bean/UMShareMsg;

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/umeng/socialize/media/UMRichMedia;)V
    .locals 4

    .prologue
    .line 670
    if-eqz p1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/umeng/socialize/view/bg;->b:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/UMShareMsg;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/bg;->b:Lcom/umeng/socialize/bean/UMShareMsg;

    iget-object v1, p0, Lcom/umeng/socialize/view/bg;->a:Lcom/umeng/socialize/view/bf;

    invoke-static {v1}, Lcom/umeng/socialize/view/bf;->a(Lcom/umeng/socialize/view/bf;)Lcom/umeng/socialize/view/ShareActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/view/ShareActivity;->t(Lcom/umeng/socialize/view/ShareActivity;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/bean/UMLocation;->build(Landroid/location/Location;)Lcom/umeng/socialize/bean/UMLocation;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mLocation:Lcom/umeng/socialize/bean/UMLocation;

    .line 675
    iget-object v0, p0, Lcom/umeng/socialize/view/bg;->a:Lcom/umeng/socialize/view/bf;

    invoke-static {v0}, Lcom/umeng/socialize/view/bf;->a(Lcom/umeng/socialize/view/bf;)Lcom/umeng/socialize/view/ShareActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/bg;->b:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareMsg(Lcom/umeng/socialize/bean/UMShareMsg;)V

    .line 677
    iget-object v0, p0, Lcom/umeng/socialize/view/bg;->a:Lcom/umeng/socialize/view/bf;

    invoke-static {v0}, Lcom/umeng/socialize/view/bf;->a(Lcom/umeng/socialize/view/bf;)Lcom/umeng/socialize/view/ShareActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->i(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/UMSocialService;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/bg;->a:Lcom/umeng/socialize/view/bf;

    invoke-static {v1}, Lcom/umeng/socialize/view/bf;->a(Lcom/umeng/socialize/view/bf;)Lcom/umeng/socialize/view/ShareActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/view/ShareActivity;->q(Lcom/umeng/socialize/view/ShareActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/view/bg;->a:Lcom/umeng/socialize/view/bf;

    invoke-static {v2}, Lcom/umeng/socialize/view/bf;->a(Lcom/umeng/socialize/view/bf;)Lcom/umeng/socialize/view/ShareActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/socialize/view/ShareActivity;->d(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 678
    iget-object v3, p0, Lcom/umeng/socialize/view/bg;->a:Lcom/umeng/socialize/view/bf;

    invoke-static {v3}, Lcom/umeng/socialize/view/bf;->a(Lcom/umeng/socialize/view/bf;)Lcom/umeng/socialize/view/ShareActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/socialize/view/ShareActivity;->u(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    move-result-object v3

    .line 677
    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/UMSocialService;->directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 679
    return-void
.end method
