.class public interface abstract Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
.super Ljava/lang/Object;
.source "IUnipayServiceCallBackPro.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;
    }
.end annotation


# virtual methods
.method public abstract UnipayCallBack(Lcom/tencent/unipay/plugsdk/UnipayResponse;)V
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
