.class Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CirclePageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 544
    new-instance v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState$1;

    invoke-direct {v0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState$1;-><init>()V

    sput-object v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 554
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 533
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;->currentPage:I

    .line 535
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 529
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 530
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 539
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 540
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;->currentPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    return-void
.end method
