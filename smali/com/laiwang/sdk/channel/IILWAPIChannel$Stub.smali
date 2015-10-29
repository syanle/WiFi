.class public abstract Lcom/laiwang/sdk/channel/IILWAPIChannel$Stub;
.super Landroid/os/Binder;
.source "IILWAPIChannel.java"

# interfaces
.implements Lcom/laiwang/sdk/channel/IILWAPIChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laiwang/sdk/channel/IILWAPIChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laiwang/sdk/channel/IILWAPIChannel$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.laiwang.sdk.channel.IILWAPIChannel"

.field static final TRANSACTION_introduceMe:I = 0x2

.field static final TRANSACTION_registerME:I = 0x1

.field static final TRANSACTION_requestData:I = 0x4

.field static final TRANSACTION_transportData:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-virtual {p0, p0, v0}, Lcom/laiwang/sdk/channel/IILWAPIChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/laiwang/sdk/channel/IILWAPIChannel;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/laiwang/sdk/channel/IILWAPIChannel;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/laiwang/sdk/channel/IILWAPIChannel;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/laiwang/sdk/channel/IILWAPIChannel$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/laiwang/sdk/channel/IILWAPIChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    sget-object v6, Lcom/laiwang/sdk/openapi/LWAPIAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .line 56
    .local v0, "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/laiwang/sdk/openapi/IILWAPICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/laiwang/sdk/openapi/IILWAPICallback;

    move-result-object v1

    .line 58
    .local v1, "_arg1":Lcom/laiwang/sdk/openapi/IILWAPICallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 60
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/laiwang/sdk/channel/IILWAPIChannel$Stub;->registerME(Lcom/laiwang/sdk/openapi/LWAPIAccount;Lcom/laiwang/sdk/openapi/IILWAPICallback;ILjava/lang/String;)I

    move-result v4

    .line 62
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 53
    .end local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .end local v1    # "_arg1":Lcom/laiwang/sdk/openapi/IILWAPICallback;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    goto :goto_1

    .line 68
    .end local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    :sswitch_2
    const-string v6, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/laiwang/sdk/channel/IILWAPIChannel$Stub;->introduceMe(Ljava/lang/String;)I

    move-result v4

    .line 72
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 78
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":I
    :sswitch_3
    const-string v6, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    sget-object v6, Lcom/laiwang/sdk/openapi/LWAPIAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .line 87
    .local v0, "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    sget-object v6, Lcom/laiwang/sdk/message/LWMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/laiwang/sdk/message/LWMessage;

    .line 94
    .local v1, "_arg1":Lcom/laiwang/sdk/message/LWMessage;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/laiwang/sdk/channel/IILWAPIChannel$Stub;->transportData(Lcom/laiwang/sdk/openapi/LWAPIAccount;Lcom/laiwang/sdk/message/LWMessage;I)I

    move-result v4

    .line 96
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    invoke-virtual {v0, p3, v5}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 84
    .end local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .end local v1    # "_arg1":Lcom/laiwang/sdk/message/LWMessage;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    goto :goto_2

    .line 91
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/laiwang/sdk/message/LWMessage;
    goto :goto_3

    .line 103
    .restart local v2    # "_arg2":I
    .restart local v4    # "_result":I
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 109
    .end local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .end local v1    # "_arg1":Lcom/laiwang/sdk/message/LWMessage;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":I
    :sswitch_4
    const-string v6, "com.laiwang.sdk.channel.IILWAPIChannel"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 112
    sget-object v6, Lcom/laiwang/sdk/openapi/LWAPIAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .line 118
    .restart local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 119
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 125
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/laiwang/sdk/channel/IILWAPIChannel$Stub;->requestData(Lcom/laiwang/sdk/openapi/LWAPIAccount;Landroid/os/Bundle;I)I

    move-result v4

    .line 127
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    if-eqz v0, :cond_6

    .line 130
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {v0, p3, v5}, Lcom/laiwang/sdk/openapi/LWAPIAccount;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 115
    .end local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":I
    .end local v4    # "_result":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/laiwang/sdk/openapi/LWAPIAccount;
    goto :goto_4

    .line 122
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .line 134
    .restart local v2    # "_arg2":I
    .restart local v4    # "_result":I
    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
