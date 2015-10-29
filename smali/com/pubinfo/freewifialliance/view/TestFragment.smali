.class public final Lcom/pubinfo/freewifialliance/view/TestFragment;
.super Landroid/support/v4/app/Fragment;
.source "TestFragment.java"


# static fields
.field private static final KEY_CONTENT:Ljava/lang/String; = "TestFragment:Content"


# instance fields
.field private mContent:I

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/TestFragment;->type:I

    .line 22
    return-void
.end method

.method public static newInstance(I)Lcom/pubinfo/freewifialliance/view/TestFragment;
    .locals 1
    .param p0, "content"    # I

    .prologue
    .line 48
    new-instance v0, Lcom/pubinfo/freewifialliance/view/TestFragment;

    invoke-direct {v0}, Lcom/pubinfo/freewifialliance/view/TestFragment;-><init>()V

    .line 56
    .local v0, "fragment":Lcom/pubinfo/freewifialliance/view/TestFragment;
    iput p0, v0, Lcom/pubinfo/freewifialliance/view/TestFragment;->mContent:I

    .line 58
    return-object v0
.end method

.method public static newInstance(II)Lcom/pubinfo/freewifialliance/view/TestFragment;
    .locals 1
    .param p0, "content"    # I
    .param p1, "type"    # I

    .prologue
    .line 62
    new-instance v0, Lcom/pubinfo/freewifialliance/view/TestFragment;

    invoke-direct {v0}, Lcom/pubinfo/freewifialliance/view/TestFragment;-><init>()V

    .line 70
    .local v0, "fragment":Lcom/pubinfo/freewifialliance/view/TestFragment;
    iput p0, v0, Lcom/pubinfo/freewifialliance/view/TestFragment;->mContent:I

    .line 71
    iput p1, v0, Lcom/pubinfo/freewifialliance/view/TestFragment;->type:I

    .line 72
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/TestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 29
    .local v0, "button":Landroid/widget/ImageButton;
    iget v1, p0, Lcom/pubinfo/freewifialliance/view/TestFragment;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 30
    new-instance v1, Lcom/pubinfo/freewifialliance/view/TestFragment$1;

    invoke-direct {v1, p0}, Lcom/pubinfo/freewifialliance/view/TestFragment$1;-><init>(Lcom/pubinfo/freewifialliance/view/TestFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    if-eqz p1, :cond_0

    const-string v0, "TestFragment:Content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "TestFragment:Content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/TestFragment;->mContent:I

    .line 85
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 93
    iget v2, p0, Lcom/pubinfo/freewifialliance/view/TestFragment;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 94
    const v2, 0x7f030001

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    .line 96
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/TestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "imageView":Landroid/widget/ImageView;
    iget v2, p0, Lcom/pubinfo/freewifialliance/view/TestFragment;->mContent:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 99
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/TestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, "layout":Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 102
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 113
    const-string v0, "TestFragment:Content"

    iget v1, p0, Lcom/pubinfo/freewifialliance/view/TestFragment;->mContent:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    return-void
.end method
