.class public abstract Lcom/pubinfo/izhejiang/controller/MyFun;
.super Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;
.source "MyFun.java"

# interfaces
.implements Lcom/cat/protocol/DoUserInfoInterface;


# instance fields
.field final c:Ljava/util/Calendar;

.field data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ThinkAndroidBaseFragment;-><init>()V

    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/controller/MyFun;->c:Ljava/util/Calendar;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/MyFun;->c:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/MyFun;->c:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 22
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pubinfo/izhejiang/controller/MyFun;->c:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/controller/MyFun;->data:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method protected getUserInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "authid"    # Ljava/lang/String;
    .param p2, "countrycode"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/controller/MyFun;->diffTime()V

    .line 30
    new-instance v0, Lcom/cat/impl/DoUserInfoConn;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/cat/impl/DoUserInfoConn;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cat/protocol/DoUserInfoInterface;Landroid/content/Context;)V

    .line 31
    return-void
.end method
