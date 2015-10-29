.class public interface abstract Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$POISOrBuilder;
.super Ljava/lang/Object;
.source "ReverseGeocodingProtoBuf.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "POISOrBuilder"
.end annotation


# virtual methods
.method public abstract getPoi(I)Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;
.end method

.method public abstract getPoiCount()I
.end method

.method public abstract getPoiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POI;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPoiOrBuilder(I)Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;
.end method

.method public abstract getPoiOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/core/CommonProtoBuf$POIOrBuilder;",
            ">;"
        }
    .end annotation
.end method
