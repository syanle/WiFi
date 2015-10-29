.class public Lcom/pubinfo/freewifialliance/view/FloatView;
.super Landroid/widget/LinearLayout;
.source "FloatView.java"


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mStartX:F

.field private mStartY:F

.field private mTouchX:F

.field private mTouchY:F

.field private msg:Landroid/widget/TextView;

.field private screenWidth:I

.field private windowManager:Landroid/view/WindowManager;

.field private windowManagerParams:Landroid/view/WindowManager$LayoutParams;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenWidth"    # I

    .prologue
    const/4 v2, -0x2

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/FloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->windowManager:Landroid/view/WindowManager;

    .line 59
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/FloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    check-cast v0, Lcom/pubinfo/freewifialliance/view/FloatApplication;

    .line 60
    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/FloatApplication;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 64
    iput p2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->screenWidth:I

    .line 65
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->msg:Landroid/widget/TextView;

    .line 66
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->icon:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->msg:Landroid/widget/TextView;

    const-string v1, "\u65e0wifi"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->msg:Landroid/widget/TextView;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->icon:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/pubinfo/freewifialliance/view/FloatView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->msg:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/pubinfo/freewifialliance/view/FloatView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    return-void
.end method

.method private updateViewPosition()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->x:F

    iget v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mTouchX:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 125
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->y:F

    iget v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mTouchY:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 127
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v5, 0x42480000    # 50.0f

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 77
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/pubinfo/freewifialliance/view/FloatView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 78
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 79
    .local v1, "statusBarHeight":I
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "statusBarHeight:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->x:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    int-to-float v3, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->y:F

    .line 83
    const-string v2, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currX"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "====currY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 114
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 87
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mTouchX:F

    .line 88
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mTouchY:F

    .line 89
    iget v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->x:F

    iput v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mStartX:F

    .line 90
    iget v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->y:F

    iput v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mStartY:F

    .line 91
    const-string v2, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startX"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mTouchX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "====startY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mTouchY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/FloatView;->updateViewPosition()V

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-direct {p0}, Lcom/pubinfo/freewifialliance/view/FloatView;->updateViewPosition()V

    .line 98
    const/4 v2, 0x0

    iput v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mTouchY:F

    iput v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mTouchX:F

    .line 99
    iget v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->x:F

    iget v3, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mStartX:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    iget v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->y:F

    iget v3, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mStartY:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->screenWidth:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_1

    .line 106
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 110
    :goto_1
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, p0, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->windowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->screenWidth:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 120
    return-void
.end method

.method public setTextInvisiable()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->msg:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    return-void
.end method

.method public setTextVisiable()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/FloatView;->msg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    return-void
.end method
