.class final Lcom/autonavi/aps/api/c;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/autonavi/aps/api/APS;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/autonavi/aps/api/APS;->a()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void
.end method
