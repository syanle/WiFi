.class public interface abstract Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$ReverseGeocodingResponseOrBuilder;
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
    name = "ReverseGeocodingResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getSpatial(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;
.end method

.method public abstract getSpatialCount()I
.end method

.method public abstract getSpatialList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Spatial;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSpatialOrBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;
.end method

.method public abstract getSpatialOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$SpatialOrBuilder;",
            ">;"
        }
    .end annotation
.end method
