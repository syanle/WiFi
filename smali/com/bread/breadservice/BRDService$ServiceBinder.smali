.class public Lcom/bread/breadservice/BRDService$ServiceBinder;
.super Landroid/os/Binder;
.source "BRDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bread/breadservice/BRDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bread/breadservice/BRDService;


# direct methods
.method public constructor <init>(Lcom/bread/breadservice/BRDService;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bread/breadservice/BRDService$ServiceBinder;->this$0:Lcom/bread/breadservice/BRDService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/bread/breadservice/BRDService;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bread/breadservice/BRDService$ServiceBinder;->this$0:Lcom/bread/breadservice/BRDService;

    return-object v0
.end method
