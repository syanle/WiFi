.class Lcom/pubinfo/izhejiang/ConnectActivity$9;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/ConnectActivity;->setZAN()V
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
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$9;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 961
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$9;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->tv5:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 962
    .local v0, "conect_count":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 963
    .local v1, "count":I
    iget-object v2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$9;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v2, v2, Lcom/pubinfo/izhejiang/ConnectActivity;->tv5:Landroid/widget/TextView;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    return-void
.end method
