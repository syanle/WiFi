.class Lcom/pubinfo/izhejiang/ConnectActivity$5;
.super Ljava/lang/Thread;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/ConnectActivity;->Beginning()V
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
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$5;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    .line 369
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ConnectActivity$5;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/ConnectActivity$5;->this$0:Lcom/pubinfo/izhejiang/ConnectActivity;

    iget-object v1, v1, Lcom/pubinfo/izhejiang/ConnectActivity;->downloadurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pubinfo/izhejiang/ConnectActivity;->loadFile(Ljava/lang/String;)V

    .line 372
    return-void
.end method
