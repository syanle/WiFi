.class public Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$APNPARAMS;
.super Ljava/lang/Object;
.source "PubStaticUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "APNPARAMS"
.end annotation


# static fields
.field public static final CTNET:Ljava/lang/String; = "ctnet"

.field public static final CTWAP:Ljava/lang/String; = "ctwap"

.field public static final DIANXIN_CTWAP_PROXY:Ljava/lang/String; = "10.0.0.200"

.field public static final NOMATCH:Ljava/lang/String; = "nomatch"

.field public static final YIDONG_CTWAP_PROXY:Ljava/lang/String; = "10.0.0.172"


# instance fields
.field final synthetic this$0:Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;


# direct methods
.method public constructor <init>(Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/util/PubStaticUtil$APNPARAMS;->this$0:Lcom/pubinfo/wifi_core/core/util/PubStaticUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
