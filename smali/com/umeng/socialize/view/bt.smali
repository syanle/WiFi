.class Lcom/umeng/socialize/view/bt;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ShareActivity;

.field private final synthetic b:Landroid/widget/ProgressBar;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ShareActivity;Landroid/widget/ProgressBar;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/bt;->a:Lcom/umeng/socialize/view/ShareActivity;

    iput-object p2, p0, Lcom/umeng/socialize/view/bt;->b:Landroid/widget/ProgressBar;

    iput p3, p0, Lcom/umeng/socialize/view/bt;->c:I

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I[B)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 475
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p2

    .line 474
    invoke-static {p2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 477
    const/16 v1, 0x96

    const/16 v2, 0x96

    const/4 v3, 0x1

    .line 476
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 478
    iget-object v2, p0, Lcom/umeng/socialize/view/bt;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v2, v2, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 479
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/bt;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/umeng/socialize/view/bt;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->m(Lcom/umeng/socialize/view/ShareActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 486
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    iget-object v0, p0, Lcom/umeng/socialize/view/bt;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public onComplete([B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 449
    iget-object v0, p0, Lcom/umeng/socialize/view/bt;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->l(Lcom/umeng/socialize/view/ShareActivity;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    if-eqz p1, :cond_0

    .line 451
    iget-object v0, p0, Lcom/umeng/socialize/view/bt;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/view/ShareActivity;->setImageBytes([B)V

    .line 452
    iget v0, p0, Lcom/umeng/socialize/view/bt;->c:I

    invoke-direct {p0, v0, p1}, Lcom/umeng/socialize/view/bt;->a(I[B)V

    .line 463
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/bt;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 470
    return-void

    .line 455
    :cond_1
    if-eqz p1, :cond_2

    .line 456
    iget v0, p0, Lcom/umeng/socialize/view/bt;->c:I

    invoke-direct {p0, v0, p1}, Lcom/umeng/socialize/view/bt;->a(I[B)V

    goto :goto_0

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/view/bt;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/umeng/socialize/view/bt;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 459
    iget-object v0, p0, Lcom/umeng/socialize/view/bt;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/umeng/socialize/view/bt;->a:Lcom/umeng/socialize/view/ShareActivity;

    invoke-static {v0}, Lcom/umeng/socialize/view/ShareActivity;->m(Lcom/umeng/socialize/view/ShareActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/umeng/socialize/view/bt;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/umeng/socialize/view/bt;->a:Lcom/umeng/socialize/view/ShareActivity;

    iget-object v0, v0, Lcom/umeng/socialize/view/ShareActivity;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    return-void
.end method
