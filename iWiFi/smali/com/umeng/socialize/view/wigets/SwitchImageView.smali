.class public Lcom/umeng/socialize/view/wigets/SwitchImageView;
.super Landroid/widget/ImageView;
.source "SwitchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field private c:Z

.field private d:Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;

.field private e:Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;

.field private f:I

.field private g:I

.field private h:Landroid/view/animation/Animation;

.field private i:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    iput-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a:Z

    .line 22
    iput-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->b:Z

    .line 134
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->h:Landroid/view/animation/Animation;

    .line 135
    new-instance v0, Lcom/umeng/socialize/view/wigets/f;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/wigets/f;-><init>(Lcom/umeng/socialize/view/wigets/SwitchImageView;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->i:Landroid/view/animation/Animation$AnimationListener;

    .line 33
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a:Z

    .line 22
    iput-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->b:Z

    .line 134
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->h:Landroid/view/animation/Animation;

    .line 135
    new-instance v0, Lcom/umeng/socialize/view/wigets/f;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/wigets/f;-><init>(Lcom/umeng/socialize/view/wigets/SwitchImageView;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->i:Landroid/view/animation/Animation$AnimationListener;

    .line 41
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a:Z

    .line 22
    iput-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->b:Z

    .line 134
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->h:Landroid/view/animation/Animation;

    .line 135
    new-instance v0, Lcom/umeng/socialize/view/wigets/f;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/wigets/f;-><init>(Lcom/umeng/socialize/view/wigets/SwitchImageView;)V

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->i:Landroid/view/animation/Animation$AnimationListener;

    .line 50
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/view/wigets/SwitchImageView;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->h:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_switchimage_choose"

    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->f:I

    .line 58
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_switchimage_unchoose"

    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->g:I

    .line 59
    iget v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->g:I

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->setImageResource(I)V

    .line 60
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->h:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 61
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->h:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->i:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->d:Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;

    return-object v0
.end method

.method public a(Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->d:Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;

    .line 111
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->b:Z

    if-eq v0, p1, :cond_0

    .line 75
    iput-boolean p1, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->b:Z

    .line 78
    iget-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->b:Z

    if-eqz v0, :cond_1

    .line 79
    iget v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->f:I

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->setImageResource(I)V

    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->invalidate()V

    .line 87
    iget-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->c:Z

    if-eqz v0, :cond_2

    .line 101
    :cond_0
    :goto_1
    return-void

    .line 81
    :cond_1
    iget v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->g:I

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->setImageResource(I)V

    goto :goto_0

    .line 91
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->c:Z

    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->d:Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->d:Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->b:Z

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;->a(Z)V

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->e:Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->e:Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->b:Z

    invoke-interface {v0, v1}, Lcom/umeng/socialize/view/wigets/SwitchImageView$OnCheckedChangeListener;->a(Z)V

    .line 99
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SwitchImageView;->c:Z

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/umeng/socialize/view/wigets/g;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/view/wigets/g;-><init>(Lcom/umeng/socialize/view/wigets/SwitchImageView;)V

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/SwitchImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method
