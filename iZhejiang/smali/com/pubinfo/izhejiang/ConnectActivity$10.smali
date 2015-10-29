.class Lcom/pubinfo/izhejiang/ConnectActivity$10;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/ConnectActivity;->setAPINFO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/ConnectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$10;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 971
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$10;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->tv3:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$10;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->tv5:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 973
    invoke-static {}, Lcom/cat/data/ComData;->getInstance()Lcom/cat/data/ComData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cat/data/ComData;->getApInfoData()Ljava/util/List;

    move-result-object v1

    .line 974
    .local v1, "listap":Ljava/util/List;, "Ljava/util/List<Lcom/cat/data/ApInfoData;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cat/data/ApInfoData;

    .line 975
    .local v0, "ad":Lcom/cat/data/ApInfoData;
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$10;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->tv1:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cat/data/ApInfoData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$10;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->tv3:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cat/data/ApInfoData;->getLoad()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$10;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->tv4:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cat/data/ApInfoData;->getCurrentconnect()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$10;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->tv5:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/cat/data/ApInfoData;->getAppraisal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    return-void
.end method
