.class Lcom/umeng/socialize/view/wigets/SwitchButton$a;
.super Lcom/umeng/socialize/view/wigets/d;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/view/wigets/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field private static final k:F = 400.0f


# instance fields
.field final synthetic j:Lcom/umeng/socialize/view/wigets/SwitchButton;


# direct methods
.method private constructor <init>(Lcom/umeng/socialize/view/wigets/SwitchButton;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->j:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-direct {p0}, Lcom/umeng/socialize/view/wigets/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/socialize/view/wigets/SwitchButton;Lcom/umeng/socialize/view/wigets/SwitchButton$a;)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/SwitchButton$a;-><init>(Lcom/umeng/socialize/view/wigets/SwitchButton;)V

    return-void
.end method


# virtual methods
.method protected a(F)V
    .locals 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->j:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v0, p1}, Lcom/umeng/socialize/view/wigets/SwitchButton;->a(Lcom/umeng/socialize/view/wigets/SwitchButton;F)V

    .line 416
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->j:Lcom/umeng/socialize/view/wigets/SwitchButton;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->j:Lcom/umeng/socialize/view/wigets/SwitchButton;

    iget-object v2, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->j:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v2}, Lcom/umeng/socialize/view/wigets/SwitchButton;->e(Lcom/umeng/socialize/view/wigets/SwitchButton;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/umeng/socialize/view/wigets/SwitchButton;->b(Lcom/umeng/socialize/view/wigets/SwitchButton;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/wigets/SwitchButton;->c(Lcom/umeng/socialize/view/wigets/SwitchButton;F)V

    .line 417
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->j:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-virtual {v0}, Lcom/umeng/socialize/view/wigets/SwitchButton;->invalidate()V

    .line 418
    return-void
.end method

.method protected b()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->c:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->c()V

    .line 396
    iget v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->f:F

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->j:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v1}, Lcom/umeng/socialize/view/wigets/SwitchButton;->f(Lcom/umeng/socialize/view/wigets/SwitchButton;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 397
    iput-boolean v2, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->c:Z

    .line 398
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->j:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v0}, Lcom/umeng/socialize/view/wigets/SwitchButton;->f(Lcom/umeng/socialize/view/wigets/SwitchButton;)F

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->f:F

    .line 399
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->j:Lcom/umeng/socialize/view/wigets/SwitchButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/socialize/view/wigets/SwitchButton;->c(Lcom/umeng/socialize/view/wigets/SwitchButton;Z)V

    .line 409
    :goto_0
    iget v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->f:F

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->a(F)V

    .line 411
    :cond_0
    return-void

    .line 400
    :cond_1
    iget v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->f:F

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->j:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v1}, Lcom/umeng/socialize/view/wigets/SwitchButton;->g(Lcom/umeng/socialize/view/wigets/SwitchButton;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 401
    iput-boolean v2, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->c:Z

    .line 402
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->j:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v0}, Lcom/umeng/socialize/view/wigets/SwitchButton;->g(Lcom/umeng/socialize/view/wigets/SwitchButton;)F

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->f:F

    .line 403
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->j:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v0, v2}, Lcom/umeng/socialize/view/wigets/SwitchButton;->c(Lcom/umeng/socialize/view/wigets/SwitchButton;Z)V

    goto :goto_0

    .line 405
    :cond_2
    iget-wide v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->i:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->i:J

    .line 406
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->d:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 407
    iget-wide v2, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->i:J

    .line 406
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public b(Z)V
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    .line 381
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 382
    long-to-float v0, v1

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->e:F

    .line 383
    if-eqz p1, :cond_0

    const/high16 v0, -0x3c380000    # -400.0f

    :goto_0
    iput v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->g:F

    .line 384
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->j:Lcom/umeng/socialize/view/wigets/SwitchButton;

    invoke-static {v0}, Lcom/umeng/socialize/view/wigets/SwitchButton;->e(Lcom/umeng/socialize/view/wigets/SwitchButton;)F

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->f:F

    .line 385
    const-wide/16 v3, 0x10

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->i:J

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->c:Z

    .line 388
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->d:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->d:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/umeng/socialize/view/wigets/SwitchButton$a;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 390
    return-void

    .line 383
    :cond_0
    const/high16 v0, 0x43c80000    # 400.0f

    goto :goto_0
.end method
