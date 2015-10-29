.class Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SsidFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field iv_info:Landroid/widget/ImageView;

.field iv_strength:Landroid/widget/ImageView;

.field rl:Landroid/widget/RelativeLayout;

.field rl_wifi_item:Landroid/widget/RelativeLayout;

.field final synthetic this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

.field tv_attention:Landroid/widget/TextView;

.field tv_connected:Landroid/widget/TextView;

.field tv_ssid:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$ViewHolder;-><init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)V

    return-void
.end method
