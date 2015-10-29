.class Lcom/pubinfo/izhejiang/NFCDemo$2;
.super Ljava/lang/Object;
.source "NFCDemo.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/izhejiang/NFCDemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pubinfo/izhejiang/NFCDemo;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/NFCDemo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/NFCDemo$2;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 134
    const-string v1, "--ServiceConnected--"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo$2;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    invoke-static {p2}, Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL$Stub;->asInterface(Landroid/os/IBinder;)Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pubinfo/izhejiang/NFCDemo;->access$4(Lcom/pubinfo/izhejiang/NFCDemo;Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;)V

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo$2;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    # getter for: Lcom/pubinfo/izhejiang/NFCDemo;->mCTPassAIDLService:Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/NFCDemo;->access$0(Lcom/pubinfo/izhejiang/NFCDemo;)Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo$2;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    # getter for: Lcom/pubinfo/izhejiang/NFCDemo;->mCTPassAIDLService:Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/NFCDemo;->access$0(Lcom/pubinfo/izhejiang/NFCDemo;)Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;

    move-result-object v1

    iget-object v2, p0, Lcom/pubinfo/izhejiang/NFCDemo$2;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    # getter for: Lcom/pubinfo/izhejiang/NFCDemo;->mCallback:Lcn/com/chinatelecom/ctpass/aidl/AIDLCallback$Stub;
    invoke-static {v2}, Lcom/pubinfo/izhejiang/NFCDemo;->access$5(Lcom/pubinfo/izhejiang/NFCDemo;)Lcn/com/chinatelecom/ctpass/aidl/AIDLCallback$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;->registerCallback(Lcn/com/chinatelecom/ctpass/aidl/AIDLCallback;)V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo$2;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    # getter for: Lcom/pubinfo/izhejiang/NFCDemo;->mCTPassAIDLService:Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/NFCDemo;->access$0(Lcom/pubinfo/izhejiang/NFCDemo;)Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    :try_start_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/NFCDemo$2;->this$0:Lcom/pubinfo/izhejiang/NFCDemo;

    # getter for: Lcom/pubinfo/izhejiang/NFCDemo;->mCTPassAIDLService:Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;
    invoke-static {v1}, Lcom/pubinfo/izhejiang/NFCDemo;->access$0(Lcom/pubinfo/izhejiang/NFCDemo;)Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/chinatelecom/ctpass/aidl/ServiceAIDL;->connectCTPassService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 129
    const-string v0, "--ServiceDisconnected--"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method
