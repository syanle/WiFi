.class Lcom/pubinfo/freewifialliance/view/WelcomePage$2;
.super Ljava/lang/Thread;
.source "WelcomePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/view/WelcomePage;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/WelcomePage;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iput-object p2, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$2;->val$file:Ljava/io/File;

    .line 535
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 537
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    new-instance v1, Lcom/pubinfo/freewifialliance/update/AWingUpdater;

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v2, v2, Lcom/pubinfo/freewifialliance/view/WelcomePage;->handlers:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/pubinfo/freewifialliance/update/AWingUpdater;-><init>(Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->access$4(Lcom/pubinfo/freewifialliance/view/WelcomePage;Lcom/pubinfo/freewifialliance/update/AWingUpdater;)V

    .line 538
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    # getter for: Lcom/pubinfo/freewifialliance/view/WelcomePage;->awUpdater:Lcom/pubinfo/freewifialliance/update/AWingUpdater;
    invoke-static {v0}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->access$5(Lcom/pubinfo/freewifialliance/view/WelcomePage;)Lcom/pubinfo/freewifialliance/update/AWingUpdater;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    # getter for: Lcom/pubinfo/freewifialliance/view/WelcomePage;->mLocalVersionCode:I
    invoke-static {v1}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->access$6(Lcom/pubinfo/freewifialliance/view/WelcomePage;)I

    move-result v1

    iget-object v2, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    # getter for: Lcom/pubinfo/freewifialliance/view/WelcomePage;->mLocalVersionName:Ljava/lang/String;
    invoke-static {v2}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->access$7(Lcom/pubinfo/freewifialliance/view/WelcomePage;)Ljava/lang/String;

    move-result-object v2

    .line 539
    iget-object v3, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$2;->val$file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$2;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v4, v4, Lcom/pubinfo/freewifialliance/view/WelcomePage;->url:Ljava/lang/String;

    .line 538
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pubinfo/freewifialliance/update/AWingUpdater;->readyForUpdate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void
.end method
