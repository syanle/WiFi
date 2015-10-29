.class public Lcom/iwifi/sdk/tools/XMLData;
.super Ljava/lang/Object;
.source "XMLData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;
    }
.end annotation


# instance fields
.field public attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public characters:Ljava/lang/String;

.field public nextTag:Ljava/lang/String;

.field public preTag:Ljava/lang/String;

.field public tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/iwifi/sdk/tools/XMLData;->tagName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/iwifi/sdk/tools/XMLData;->characters:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/iwifi/sdk/tools/XMLData;->preTag:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/iwifi/sdk/tools/XMLData;->nextTag:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/iwifi/sdk/tools/XMLData;->attributes:Ljava/util/ArrayList;

    .line 5
    return-void
.end method

.method public static newPullData()Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;

    invoke-direct {v0}, Lcom/iwifi/sdk/tools/XMLData$XMLAttributes;-><init>()V

    return-object v0
.end method
