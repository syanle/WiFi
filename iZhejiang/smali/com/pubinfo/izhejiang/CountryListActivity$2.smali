.class Lcom/pubinfo/izhejiang/CountryListActivity$2;
.super Ljava/lang/Object;
.source "CountryListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/CountryListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/CountryListActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/CountryListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/CountryListActivity$2;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    return-void

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/pubinfo/izhejiang/CountryListActivity$2;->this$0:Lcom/pubinfo/izhejiang/CountryListActivity;

    invoke-virtual {v0}, Lcom/pubinfo/izhejiang/CountryListActivity;->finish()V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x7f0a002c
        :pswitch_0
    .end packed-switch
.end method
