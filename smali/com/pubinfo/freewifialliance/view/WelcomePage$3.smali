.class Lcom/pubinfo/freewifialliance/view/WelcomePage$3;
.super Ljava/lang/Thread;
.source "WelcomePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/freewifialliance/view/WelcomePage;->Beginning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;


# direct methods
.method constructor <init>(Lcom/pubinfo/freewifialliance/view/WelcomePage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$3;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    .line 554
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$3;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v1, p0, Lcom/pubinfo/freewifialliance/view/WelcomePage$3;->this$0:Lcom/pubinfo/freewifialliance/view/WelcomePage;

    iget-object v1, v1, Lcom/pubinfo/freewifialliance/view/WelcomePage;->downloadurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/view/WelcomePage;->loadFile(Ljava/lang/String;)V

    .line 557
    return-void
.end method
