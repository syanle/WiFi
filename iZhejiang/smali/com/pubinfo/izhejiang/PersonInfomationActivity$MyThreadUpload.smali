.class public Lcom/pubinfo/izhejiang/PersonInfomationActivity$MyThreadUpload;
.super Ljava/lang/Thread;
.source "PersonInfomationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/PersonInfomationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThreadUpload"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;


# direct methods
.method public constructor <init>(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$MyThreadUpload;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 443
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 444
    iget-object v0, p0, Lcom/pubinfo/izhejiang/PersonInfomationActivity$MyThreadUpload;->this$0:Lcom/pubinfo/izhejiang/PersonInfomationActivity;

    # invokes: Lcom/pubinfo/izhejiang/PersonInfomationActivity;->Commit()V
    invoke-static {v0}, Lcom/pubinfo/izhejiang/PersonInfomationActivity;->access$1(Lcom/pubinfo/izhejiang/PersonInfomationActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 448
    return-void

    .line 445
    :catch_0
    move-exception v0

    goto :goto_0
.end method
