.class public interface abstract Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadsOrBuilder;
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
    name = "RoadsOrBuilder"
.end annotation


# virtual methods
.method public abstract getRoad(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;
.end method

.method public abstract getRoadCount()I
.end method

.method public abstract getRoadList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$Road;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRoadOrBuilder(I)Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;
.end method

.method public abstract getRoadOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/core/ReverseGeocodingProtoBuf$RoadOrBuilder;",
            ">;"
        }
    .end annotation
.end method
