.class public Lcom/cat/data/TimeDifference;
.super Ljava/lang/Object;
.source "TimeDifference.java"


# instance fields
.field private timedifference:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTimedifference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/cat/data/TimeDifference;->timedifference:Ljava/lang/String;

    return-object v0
.end method

.method public setTimedifference(Ljava/lang/String;)V
    .locals 0
    .param p1, "timedifference"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/cat/data/TimeDifference;->timedifference:Ljava/lang/String;

    .line 17
    return-void
.end method
