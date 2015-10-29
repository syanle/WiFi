.class Lcom/umeng/socialize/view/ai;
.super Ljava/lang/Object;
.source "FriendSelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/view/ab;

.field private final synthetic b:Lcom/umeng/socialize/bean/UMFriend;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/view/ab;Lcom/umeng/socialize/bean/UMFriend;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/view/ai;->a:Lcom/umeng/socialize/view/ab;

    iput-object p2, p0, Lcom/umeng/socialize/view/ai;->b:Lcom/umeng/socialize/bean/UMFriend;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/umeng/socialize/view/ai;->a:Lcom/umeng/socialize/view/ab;

    invoke-static {v0}, Lcom/umeng/socialize/view/ab;->c(Lcom/umeng/socialize/view/ab;)Lcom/umeng/socialize/view/controller/ShareAtController;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/view/ai;->b:Lcom/umeng/socialize/bean/UMFriend;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/view/controller/ShareAtController;->a(Lcom/umeng/socialize/bean/UMFriend;)V

    .line 305
    return-void
.end method
