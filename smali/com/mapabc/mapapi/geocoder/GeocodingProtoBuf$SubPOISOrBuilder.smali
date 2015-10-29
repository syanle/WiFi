.class public interface abstract Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOISOrBuilder;
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
    name = "SubPOISOrBuilder"
.end annotation


# virtual methods
.method public abstract getSubpoi(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;
.end method

.method public abstract getSubpoiCount()I
.end method

.method public abstract getSubpoiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOI;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSubpoiOrBuilder(I)Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;
.end method

.method public abstract getSubpoiOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$SubPOIOrBuilder;",
            ">;"
        }
    .end annotation
.end method
