.class Lcom/umeng/socialize/view/controller/e;
.super Ljava/lang/Object;
.source "UserCenterController.java"

# interfaces
.implements Lcom/umeng/socialize/view/controller/UserCenterController$OBListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/controller/UserCenterController;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/controller/UserCenterController;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/controller/e;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/socialize/view/controller/UserCenterController$a;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/e;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/UserCenterController;->a(Lcom/umeng/socialize/view/controller/UserCenterController;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/umeng/socialize/view/controller/e;->a:Lcom/umeng/socialize/view/controller/UserCenterController;

    invoke-static {v0}, Lcom/umeng/socialize/view/controller/UserCenterController;->a(Lcom/umeng/socialize/view/controller/UserCenterController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    return-void

    .line 105
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/view/controller/UserCenterController$OBListener;

    .line 106
    invoke-interface {v0, p1}, Lcom/umeng/socialize/view/controller/UserCenterController$OBListener;->a(Lcom/umeng/socialize/view/controller/UserCenterController$a;)V

    goto :goto_0
.end method
