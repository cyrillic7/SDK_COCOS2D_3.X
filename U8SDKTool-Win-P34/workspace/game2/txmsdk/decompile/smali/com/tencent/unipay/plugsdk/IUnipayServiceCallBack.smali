.class public interface abstract Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBack;
.super Ljava/lang/Object;
.source "IUnipayServiceCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract UnipayCallBack(IIIIILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UnipayNeedLogin()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
