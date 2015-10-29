.class public Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "TestFragmentAdapter.java"

# interfaces
.implements Lcom/pubinfo/freewifialliance/view/adpter/IconPagerAdapter;


# static fields
.field protected static final CONTENT:[I

.field protected static final ICONS:[I


# instance fields
.field private mCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 18
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;->CONTENT:[I

    .line 19
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;->ICONS:[I

    .line 24
    return-void

    .line 18
    :array_0
    .array-data 4
        0x7f0200ae
        0x7f0200b0
        0x7f0200af
        0x7f0200ad
    .end array-data

    .line 19
    :array_1
    .array-data 4
        0x7f020047
        0x7f020047
        0x7f020047
        0x7f020047
    .end array-data
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 26
    sget-object v0, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;->CONTENT:[I

    array-length v0, v0

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;->mCount:I

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;->mCount:I

    return v0
.end method

.method public getIconResId(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 54
    sget-object v0, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;->ICONS:[I

    sget-object v1, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;->ICONS:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 34
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 35
    sget-object v0, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;->CONTENT:[I

    sget-object v1, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;->CONTENT:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pubinfo/freewifialliance/view/TestFragment;->newInstance(II)Lcom/pubinfo/freewifialliance/view/TestFragment;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;->CONTENT:[I

    sget-object v1, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;->CONTENT:[I

    array-length v1, v1

    rem-int v1, p1, v1

    aget v0, v0, v1

    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/TestFragment;->newInstance(I)Lcom/pubinfo/freewifialliance/view/TestFragment;

    move-result-object v0

    goto :goto_0
.end method

.method public setCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 58
    if-lez p1, :cond_0

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    .line 59
    iput p1, p0, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;->mCount:I

    .line 60
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/adpter/TestFragmentAdapter;->notifyDataSetChanged()V

    .line 62
    :cond_0
    return-void
.end method
