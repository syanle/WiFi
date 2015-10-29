.class public Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;
.super Ljava/lang/Object;
.source "WlanRoamingAuthProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultInfos"
.end annotation


# instance fields
.field public failInfo:Ljava/lang/String;

.field public logoffUrl:Ljava/lang/String;

.field public reserve:Ljava/lang/Object;

.field final synthetic this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol$ResultInfos;->this$0:Lcom/iwifi/sdk/chinanet/wispr/WlanRoamingAuthProtocol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
