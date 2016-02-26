.class public abstract Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;
.super Landroid/os/Binder;
.source "IUnipayServiceCallBackPro.java"

# interfaces
.implements Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.unipay.plugsdk.IUnipayServiceCallBackPro"

.field static final TRANSACTION_UnipayCallBack:I = 0x2

.field static final TRANSACTION_UnipayNeedLogin:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.tencent.unipay.plugsdk.IUnipayServiceCallBackPro"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.tencent.unipay.plugsdk.IUnipayServiceCallBackPro"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_38

    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 42
    :sswitch_9
    const-string v2, "com.tencent.unipay.plugsdk.IUnipayServiceCallBackPro"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v2, "com.tencent.unipay.plugsdk.IUnipayServiceCallBackPro"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;->UnipayNeedLogin()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 54
    :sswitch_1b
    const-string v2, "com.tencent.unipay.plugsdk.IUnipayServiceCallBackPro"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_35

    .line 57
    sget-object v2, Lcom/tencent/unipay/plugsdk/UnipayResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;

    .line 62
    .local v0, "_arg0":Lcom/tencent/unipay/plugsdk/UnipayResponse;
    :goto_2e
    invoke-virtual {p0, v0}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;->UnipayCallBack(Lcom/tencent/unipay/plugsdk/UnipayResponse;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 60
    .end local v0    # "_arg0":Lcom/tencent/unipay/plugsdk/UnipayResponse;
    :cond_35
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/tencent/unipay/plugsdk/UnipayResponse;
    goto :goto_2e

    .line 38
    nop

    :sswitch_data_38
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1b
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
