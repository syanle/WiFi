.class Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;
.super Ljava/lang/Thread;
.source "WifiConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/freewifialliance/service/WifiConnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Worker"
.end annotation


# instance fields
.field private exit:Ljava/lang/Integer;

.field private final process:Ljava/lang/Process;


# direct methods
.method private constructor <init>(Ljava/lang/Process;)V
    .locals 0
    .param p1, "process"    # Ljava/lang/Process;

    .prologue
    .line 757
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 758
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;->process:Ljava/lang/Process;

    .line 759
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Process;Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;)V
    .locals 0

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;-><init>(Ljava/lang/Process;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;->exit:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/pubinfo/freewifialliance/service/WifiConnService$Worker;->exit:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :goto_0
    return-void

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "ignore":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
