.class public Lcom/pubinfo/wifi_core/core/net/XMLData;
.super Ljava/lang/Object;
.source "XMLData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/wifi_core/core/net/XMLData$XMLAttributes;
    }
.end annotation


# instance fields
.field public attributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pubinfo/wifi_core/core/net/XMLData$XMLAttributes;",
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
    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/net/XMLData;->tagName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/net/XMLData;->characters:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/net/XMLData;->preTag:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/net/XMLData;->nextTag:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/pubinfo/wifi_core/core/net/XMLData;->attributes:Ljava/util/ArrayList;

    .line 5
    return-void
.end method

.method public static newPullData()Lcom/pubinfo/wifi_core/core/net/XMLData$XMLAttributes;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/pubinfo/wifi_core/core/net/XMLData$XMLAttributes;

    invoke-direct {v0}, Lcom/pubinfo/wifi_core/core/net/XMLData$XMLAttributes;-><init>()V

    return-object v0
.end method
