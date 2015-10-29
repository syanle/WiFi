.class public Lcom/pubinfo/freewifialliance/data/ChinanetAccount;
.super Ljava/lang/Object;
.source "ChinanetAccount.java"


# instance fields
.field private password:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/data/ChinanetAccount;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/data/ChinanetAccount;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/data/ChinanetAccount;->password:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/data/ChinanetAccount;->user:Ljava/lang/String;

    .line 11
    return-void
.end method
