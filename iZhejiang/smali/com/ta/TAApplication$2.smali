.class Lcom/ta/TAApplication$2;
.super Lcom/ta/util/netstate/TANetChangeObserver;
.source "TAApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ta/TAApplication;->doOncreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ta/TAApplication;


# direct methods
.method constructor <init>(Lcom/ta/TAApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ta/TAApplication$2;->this$0:Lcom/ta/TAApplication;

    .line 100
    invoke-direct {p0}, Lcom/ta/util/netstate/TANetChangeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/ta/util/netstate/TANetWorkUtil$netType;)V
    .locals 1
    .param p1, "type"    # Lcom/ta/util/netstate/TANetWorkUtil$netType;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/ta/util/netstate/TANetChangeObserver;->onConnect(Lcom/ta/util/netstate/TANetWorkUtil$netType;)V

    .line 107
    iget-object v0, p0, Lcom/ta/TAApplication$2;->this$0:Lcom/ta/TAApplication;

    invoke-virtual {v0, p1}, Lcom/ta/TAApplication;->onConnect(Lcom/ta/util/netstate/TANetWorkUtil$netType;)V

    .line 108
    return-void
.end method

.method public onDisConnect()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Lcom/ta/util/netstate/TANetChangeObserver;->onDisConnect()V

    .line 115
    iget-object v0, p0, Lcom/ta/TAApplication$2;->this$0:Lcom/ta/TAApplication;

    invoke-virtual {v0}, Lcom/ta/TAApplication;->onDisConnect()V

    .line 117
    return-void
.end method
