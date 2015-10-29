.class public Lcom/umeng/socialize/common/ResContainer$a;
.super Ljava/lang/Object;
.source "ResContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/common/ResContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/umeng/socialize/common/ResContainer$ResType;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/common/ResContainer$a;->c:Z

    .line 145
    iput-object p1, p0, Lcom/umeng/socialize/common/ResContainer$a;->a:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 146
    iput-object p2, p0, Lcom/umeng/socialize/common/ResContainer$a;->b:Ljava/lang/String;

    .line 147
    return-void
.end method
