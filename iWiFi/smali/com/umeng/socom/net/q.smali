.class Lcom/umeng/socom/net/q;
.super Ljava/lang/Object;
.source "ResUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socom/net/q;->a:Ljava/io/File;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/umeng/socom/net/q;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/umeng/socom/net/p;->a(Ljava/io/File;)V

    .line 135
    return-void
.end method
