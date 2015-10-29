.class public interface abstract Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingOrBuilder;
.super Ljava/lang/Object;
.source "GeocodingProtoBuf.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GeocodingOrBuilder"
.end annotation


# virtual methods
.method public abstract getPoi(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;
.end method

.method public abstract getPoiCount()I
.end method

.method public abstract getPoiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOI;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPoiOrBuilder(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;
.end method

.method public abstract getPoiOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeoPOIOrBuilder;",
            ">;"
        }
    .end annotation
.end method
