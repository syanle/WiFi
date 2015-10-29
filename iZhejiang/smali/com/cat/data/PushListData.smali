.class public Lcom/cat/data/PushListData;
.super Ljava/lang/Object;
.source "PushListData.java"


# instance fields
.field private date:Ljava/lang/String;

.field private isread:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private pushid:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cat/data/PushListData;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getIsread()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/cat/data/PushListData;->isread:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cat/data/PushListData;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPushid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cat/data/PushListData;->pushid:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cat/data/PushListData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cat/data/PushListData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cat/data/PushListData;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cat/data/PushListData;->date:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setIsread(Ljava/lang/String;)V
    .locals 0
    .param p1, "isread"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cat/data/PushListData;->isread:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cat/data/PushListData;->message:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setPushid(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushid"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cat/data/PushListData;->pushid:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cat/data/PushListData;->title:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cat/data/PushListData;->type:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/cat/data/PushListData;->url:Ljava/lang/String;

    .line 59
    return-void
.end method
