.class public abstract Lcom/umeng/socialize/view/abs/f;
.super Landroid/widget/LinearLayout;
.source "BaseView.java"

# interfaces
.implements Lcom/umeng/socialize/view/abs/SocializeView;


# static fields
.field protected static final a:Ljava/lang/String; = "com.umeng.view.SocialView"


# instance fields
.field private b:Lcom/umeng/socialize/view/abs/SocializeErrorHandler;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput v0, p0, Lcom/umeng/socialize/view/abs/f;->c:I

    .line 25
    iput v0, p0, Lcom/umeng/socialize/view/abs/f;->d:I

    .line 27
    iput-boolean v0, p0, Lcom/umeng/socialize/view/abs/f;->e:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput v0, p0, Lcom/umeng/socialize/view/abs/f;->c:I

    .line 25
    iput v0, p0, Lcom/umeng/socialize/view/abs/f;->d:I

    .line 27
    iput-boolean v0, p0, Lcom/umeng/socialize/view/abs/f;->e:Z

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 183
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 184
    check-cast p1, Landroid/view/ViewGroup;

    .line 185
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 187
    if-lez v3, :cond_2

    move v2, v0

    move v1, v0

    .line 190
    :goto_0
    if-lt v2, v3, :cond_0

    .line 198
    :goto_1
    iget v0, p0, Lcom/umeng/socialize/view/abs/f;->d:I

    if-lt v1, v0, :cond_1

    .line 202
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/umeng/socialize/view/abs/f;->d:I

    .line 203
    iget v0, p0, Lcom/umeng/socialize/view/abs/f;->d:I

    .line 207
    :goto_2
    return v0

    .line 191
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    .line 193
    if-le v0, v1, :cond_3

    .line 190
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 199
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 207
    :cond_2
    iget v0, p0, Lcom/umeng/socialize/view/abs/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/socialize/view/abs/f;->d:I

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/umeng/socialize/view/abs/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/socialize/view/abs/f;->c:I

    .line 122
    return-void
.end method

.method protected a(II)V
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/umeng/socialize/view/abs/f;->e:Z

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/view/abs/f;->e:Z

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/umeng/socialize/view/abs/f;->onViewRendered(II)V

    .line 118
    :cond_0
    return-void
.end method

.method public assignId(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/view/abs/f;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/abs/f;->setId(I)V

    .line 137
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/umeng/socialize/view/abs/f;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 126
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/f;->a()V

    .line 127
    return v0

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Landroid/view/View;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method protected d()Landroid/view/View;
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 171
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 172
    check-cast v0, Landroid/view/View;

    .line 174
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method protected e()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/umeng/socialize/view/abs/f;->c:I

    .line 179
    iput v0, p0, Lcom/umeng/socialize/view/abs/f;->d:I

    .line 180
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/f;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 77
    check-cast v0, Landroid/app/Activity;

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorHandler()Lcom/umeng/socialize/view/abs/SocializeErrorHandler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/f;->b:Lcom/umeng/socialize/view/abs/SocializeErrorHandler;

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/umeng/socialize/view/abs/f;->a(II)V

    .line 111
    return-void
.end method

.method public onViewLoad()V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/f;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/f;->removeAllViews()V

    .line 158
    :cond_0
    return-void
.end method

.method public onViewRendered(II)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onViewUpdate()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 85
    const-string v1, "com.umeng.view.SocialView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onWindowVisibilityChanged    "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "Vis"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-nez p1, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/f;->onViewLoad()V

    .line 105
    :goto_1
    return-void

    .line 85
    :cond_0
    const-string v0, "Hide"

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/socialize/view/abs/f;->onViewUpdate()V

    goto :goto_1

    .line 95
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/view/abs/f;->e:Z

    goto :goto_1
.end method

.method public setErrorHandler(Lcom/umeng/socialize/view/abs/SocializeErrorHandler;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/umeng/socialize/view/abs/f;->b:Lcom/umeng/socialize/view/abs/SocializeErrorHandler;

    .line 62
    return-void
.end method

.method public showError(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/f;->b:Lcom/umeng/socialize/view/abs/SocializeErrorHandler;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/f;->b:Lcom/umeng/socialize/view/abs/SocializeErrorHandler;

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/view/abs/SocializeErrorHandler;->a(Landroid/content/Context;Ljava/lang/Exception;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v0, "com.umeng.view.SocialView"

    const-string v1, ""

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showErrorToast(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/f;->f:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/f;->f:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/view/abs/f;->f:Landroid/widget/Toast;

    .line 44
    iget-object v0, p0, Lcom/umeng/socialize/view/abs/f;->f:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 45
    return-void
.end method
