.class public interface abstract Lcom/mapabc/mapapi/geocoder/GeocodingProtoBuf$GeocodingRequestOrBuilder;
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
    name = "GeocodingRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getCommon()Lcom/mapabc/mapapi/core/CommonProtoBuf$Common;
.end method

.method public abstract getCommonOrBuilder()Lcom/mapabc/mapapi/core/CommonProtoBuf$CommonOrBuilder;
.end method

.method public abstract getPoiNumber()Ljava/lang/String;
.end method

.method public abstract getVer()Ljava/lang/String;
.end method

.method public abstract hasAddress()Z
.end method

.method public abstract hasCommon()Z
.end method

.method public abstract hasPoiNumber()Z
.end method

.method public abstract hasVer()Z
.end method
