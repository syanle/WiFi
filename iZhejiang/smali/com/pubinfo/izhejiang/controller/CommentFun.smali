.class public abstract Lcom/pubinfo/izhejiang/controller/CommentFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;
.source "CommentFun.java"

# interfaces
.implements Lcom/cat/protocol/DoCommentInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "authid"    # Ljava/lang/String;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/CommentFun;->diffTime()V

    .line 25
    new-instance v0, Lcom/cat/impl/DoCommentConn;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cat/impl/DoCommentConn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoCommentInterface;Landroid/content/Context;)V

    .line 26
    return-void
.end method
