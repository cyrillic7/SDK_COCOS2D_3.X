.class public interface abstract Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay;
.super Ljava/lang/Object;
.source "IUnipayPreLaunchPay.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay$Stub;
    }
.end annotation


# virtual methods
.method public abstract StartActivity(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
