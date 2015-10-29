.class public interface abstract Lcn/com/chinatelecom/ctpass/aidl/AIDLCallback;
.super Ljava/lang/Object;
.source "AIDLCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/chinatelecom/ctpass/aidl/AIDLCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract connectCTPassServiceCallBack(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
