.class Lcom/pubinfo/izhejiang/ConnectActivity$11;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/ConnectActivity;->setConectTime(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

.field private final synthetic val$time:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/ConnectActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$11;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iput-object p2, p0, Lcom/pubinfo/izhejiang/ConnectActivity$11;->val$time:Ljava/lang/String;

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 986
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$11;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v0, v0, Lcom/pubinfo/izhejiang/ConnectActivity;->tv2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$11;->val$time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    return-void
.end method
