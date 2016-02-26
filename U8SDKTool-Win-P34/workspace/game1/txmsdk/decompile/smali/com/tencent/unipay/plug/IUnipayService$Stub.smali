.class public abstract Lcom/tencent/unipay/plug/IUnipayService$Stub;
.super Landroid/os/Binder;
.source "IUnipayService.java"

# interfaces
.implements Lcom/tencent/unipay/plug/IUnipayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/unipay/plug/IUnipayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/unipay/plug/IUnipayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.unipay.plug.IUnipayService"

.field static final TRANSACTION_GameGetInfo:I = 0x1f

.field static final TRANSACTION_GoodsGetInfo:I = 0x20

.field static final TRANSACTION_Initialize:I = 0x1

.field static final TRANSACTION_MPSaveGameCoin:I = 0xd

.field static final TRANSACTION_MPSaveGoods:I = 0xe

.field static final TRANSACTION_MonthGetInfo:I = 0x21

.field static final TRANSACTION_OpenServiceMonthCard:I = 0x10

.field static final TRANSACTION_OpenServiceNoChangeWithAuto:I = 0x17

.field static final TRANSACTION_OpenServiceWithNum:I = 0x9

.field static final TRANSACTION_OpenServiceWithNumEx:I = 0x11

.field static final TRANSACTION_OpenServiceWithoutNum:I = 0xa

.field static final TRANSACTION_OpenServiceWithoutNumEx:I = 0x12

.field static final TRANSACTION_SaveByGroup:I = 0x13

.field static final TRANSACTION_SaveByVmall:I = 0x14

.field static final TRANSACTION_SaveGameCoinWithNum:I = 0x6

.field static final TRANSACTION_SaveGameCoinWithoutNum:I = 0x7

.field static final TRANSACTION_SaveGameWithNumEx:I = 0x15

.field static final TRANSACTION_SaveGameWithoutNumEx:I = 0x16

.field static final TRANSACTION_SaveGoods:I = 0x8

.field static final TRANSACTION_SubscribeGetInfo:I = 0x22

.field static final TRANSACTION_UnipayH5PayInit:I = 0x1d

.field static final TRANSACTION_UnipayLaunchGamePay:I = 0x18

.field static final TRANSACTION_UnipayLaunchGoodsPay:I = 0x19

.field static final TRANSACTION_UnipayLaunchMonthRequest:I = 0x1a

.field static final TRANSACTION_UnipayLaunchNetRequest:I = 0x1c

.field static final TRANSACTION_UnipayLaunchSubscribeRequest:I = 0x1b

.field static final TRANSACTION_UnipayLaunchWebRequest:I = 0x23

.field static final TRANSACTION_UnipayPreLaunchPay:I = 0x1e

.field static final TRANSACTION_getPaySDKVersion:I = 0xc

.field static final TRANSACTION_registerCallback:I = 0x5

.field static final TRANSACTION_setEnv:I = 0x3

.field static final TRANSACTION_setLogEnable:I = 0x4

.field static final TRANSACTION_setNumberVisible:I = 0xb

.field static final TRANSACTION_setOfferId:I = 0x2

.field static final TRANSACTION_setPropUnit:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.tencent.unipay.plug.IUnipayService"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plug/IUnipayService;
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
    const-string v1, "com.tencent.unipay.plug.IUnipayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/tencent/unipay/plug/IUnipayService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/tencent/unipay/plug/IUnipayService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/tencent/unipay/plug/IUnipayService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/tencent/unipay/plug/IUnipayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 23
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
    .line 38
    sparse-switch p1, :sswitch_data_69c

    .line 745
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_7
    return v2

    .line 42
    :sswitch_8
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_7

    .line 47
    :sswitch_11
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->Initialize()V

    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    const/4 v2, 0x1

    goto :goto_7

    .line 54
    :sswitch_20
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->setOfferId(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v2, 0x1

    goto :goto_7

    .line 63
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_35
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->setEnv(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    const/4 v2, 0x1

    goto :goto_7

    .line 72
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_4a
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_62

    const/4 v3, 0x1

    .line 75
    .local v3, "_arg0":Z
    :goto_58
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->setLogEnable(Z)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v2, 0x1

    goto :goto_7

    .line 74
    .end local v3    # "_arg0":Z
    :cond_62
    const/4 v3, 0x0

    goto :goto_58

    .line 81
    :sswitch_64
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBack;

    move-result-object v3

    .line 84
    .local v3, "_arg0":Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->registerCallback(Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBack;)V

    .line 85
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v2, 0x1

    goto :goto_7

    .line 90
    .end local v3    # "_arg0":Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBack;
    :sswitch_7d
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 102
    .local v7, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_be

    const/4 v12, 0x1

    .line 112
    .local v12, "_arg9":Z
    :goto_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .local v13, "_arg10":[B
    move-object/from16 v2, p0

    .line 113
    invoke-virtual/range {v2 .. v13}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->SaveGameCoinWithNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)V

    .line 114
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 110
    .end local v12    # "_arg9":Z
    .end local v13    # "_arg10":[B
    :cond_be
    const/4 v12, 0x0

    goto :goto_af

    .line 119
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":Ljava/lang/String;
    :sswitch_c0
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 127
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 129
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 131
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 133
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 135
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 137
    .restart local v10    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .local v11, "_arg8":[B
    move-object/from16 v2, p0

    .line 138
    invoke-virtual/range {v2 .. v11}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->SaveGameCoinWithoutNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 144
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":[B
    :sswitch_f6
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 150
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 152
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 156
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 158
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 160
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 162
    .restart local v10    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .restart local v11    # "_arg8":[B
    move-object/from16 v2, p0

    .line 163
    invoke-virtual/range {v2 .. v11}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->SaveGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 169
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":[B
    :sswitch_12c
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 173
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 175
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 177
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 179
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 181
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 183
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 185
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 187
    .restart local v10    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 189
    .restart local v11    # "_arg8":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 191
    .local v12, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_171

    const/4 v13, 0x1

    .line 193
    .local v13, "_arg10":Z
    :goto_162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .local v14, "_arg11":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 194
    invoke-virtual/range {v2 .. v14}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->OpenServiceWithNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ZLjava/lang/String;)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 191
    .end local v13    # "_arg10":Z
    .end local v14    # "_arg11":Ljava/lang/String;
    :cond_171
    const/4 v13, 0x0

    goto :goto_162

    .line 200
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":[B
    .end local v12    # "_arg9":Ljava/lang/String;
    :sswitch_173
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 206
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 208
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 210
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 212
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 214
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 216
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 218
    .restart local v10    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 220
    .restart local v11    # "_arg8":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "_arg9":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 221
    invoke-virtual/range {v2 .. v12}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->OpenServiceWithoutNum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 227
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":[B
    .end local v12    # "_arg9":Ljava/lang/String;
    :sswitch_1ad
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c6

    const/4 v3, 0x1

    .line 230
    .local v3, "_arg0":Z
    :goto_1bb
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->setNumberVisible(Z)V

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 229
    .end local v3    # "_arg0":Z
    :cond_1c6
    const/4 v3, 0x0

    goto :goto_1bb

    .line 236
    :sswitch_1c8
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->getPaySDKVersion()Ljava/lang/String;

    move-result-object v17

    .line 238
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 244
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_1e0
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 250
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 252
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 254
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 256
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 258
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 260
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 262
    .restart local v10    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 264
    .local v11, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 266
    .local v12, "_arg9":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 268
    .local v13, "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 270
    .restart local v14    # "_arg11":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 272
    .local v15, "_arg12":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .local v16, "_arg13":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 273
    invoke-virtual/range {v2 .. v16}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->MPSaveGameCoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 279
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":Ljava/lang/String;
    .end local v12    # "_arg9":[B
    .end local v13    # "_arg10":Ljava/lang/String;
    .end local v14    # "_arg11":Ljava/lang/String;
    .end local v15    # "_arg12":Ljava/lang/String;
    .end local v16    # "_arg13":Ljava/lang/String;
    :sswitch_22a
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 283
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 285
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 287
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 289
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 291
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 293
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 295
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 297
    .restart local v10    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 299
    .local v11, "_arg8":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 301
    .local v12, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 303
    .restart local v13    # "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 305
    .restart local v14    # "_arg11":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "_arg12":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 306
    invoke-virtual/range {v2 .. v15}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->MPSaveGoods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 312
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":[B
    .end local v12    # "_arg9":Ljava/lang/String;
    .end local v13    # "_arg10":Ljava/lang/String;
    .end local v14    # "_arg11":Ljava/lang/String;
    .end local v15    # "_arg12":Ljava/lang/String;
    :sswitch_270
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 315
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->setPropUnit(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 321
    .end local v3    # "_arg0":Ljava/lang/String;
    :sswitch_286
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 325
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 327
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 329
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 331
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 333
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 335
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 337
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 339
    .restart local v10    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 341
    .local v11, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 343
    .local v12, "_arg9":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 345
    .restart local v13    # "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 347
    .restart local v14    # "_arg11":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2d3

    const/4 v15, 0x1

    .line 349
    .local v15, "_arg12":Z
    :goto_2c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "_arg13":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 350
    invoke-virtual/range {v2 .. v16}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->OpenServiceMonthCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 347
    .end local v15    # "_arg12":Z
    .end local v16    # "_arg13":Ljava/lang/String;
    :cond_2d3
    const/4 v15, 0x0

    goto :goto_2c4

    .line 356
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":Ljava/lang/String;
    .end local v12    # "_arg9":[B
    .end local v13    # "_arg10":Ljava/lang/String;
    .end local v14    # "_arg11":Ljava/lang/String;
    :sswitch_2d5
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 360
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 362
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 364
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 366
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 368
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 370
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 372
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 374
    .restart local v10    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 376
    .restart local v11    # "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 378
    .restart local v12    # "_arg9":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 380
    .restart local v13    # "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_31e

    const/4 v14, 0x1

    .line 382
    .local v14, "_arg11":Z
    :goto_30f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .local v15, "_arg12":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 383
    invoke-virtual/range {v2 .. v15}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->OpenServiceWithNumEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ZLjava/lang/String;)V

    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 380
    .end local v14    # "_arg11":Z
    .end local v15    # "_arg12":Ljava/lang/String;
    :cond_31e
    const/4 v14, 0x0

    goto :goto_30f

    .line 389
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":Ljava/lang/String;
    .end local v12    # "_arg9":[B
    .end local v13    # "_arg10":Ljava/lang/String;
    :sswitch_320
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 393
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 395
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 397
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 399
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 401
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 403
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 405
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 407
    .restart local v10    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 409
    .restart local v11    # "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 411
    .restart local v12    # "_arg9":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "_arg10":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 412
    invoke-virtual/range {v2 .. v13}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->OpenServiceWithoutNumEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 418
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":Ljava/lang/String;
    .end local v12    # "_arg9":[B
    .end local v13    # "_arg10":Ljava/lang/String;
    :sswitch_35e
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 422
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 424
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 426
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 428
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 430
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 432
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 434
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg7":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 435
    invoke-virtual/range {v2 .. v10}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->SaveByGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 441
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    :sswitch_390
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 445
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 447
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 449
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 451
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 453
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 455
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 457
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg7":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 458
    invoke-virtual/range {v2 .. v10}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->SaveByVmall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 464
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    :sswitch_3c2
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 468
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 470
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 472
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 474
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 476
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 478
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 480
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 482
    .restart local v10    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 484
    .restart local v11    # "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_40b

    const/4 v12, 0x1

    .line 486
    .local v12, "_arg9":Z
    :goto_3f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 488
    .local v13, "_arg10":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 490
    .local v14, "_arg11":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "_arg12":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 491
    invoke-virtual/range {v2 .. v15}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->SaveGameWithNumEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BLjava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 484
    .end local v12    # "_arg9":Z
    .end local v13    # "_arg10":[B
    .end local v14    # "_arg11":Ljava/lang/String;
    .end local v15    # "_arg12":Ljava/lang/String;
    :cond_40b
    const/4 v12, 0x0

    goto :goto_3f4

    .line 497
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":Ljava/lang/String;
    :sswitch_40d
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 501
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 503
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 505
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 507
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 509
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 511
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 513
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 515
    .restart local v10    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    .line 517
    .local v11, "_arg8":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 519
    .local v12, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .local v13, "_arg10":Ljava/lang/String;
    move-object/from16 v2, p0

    .line 520
    invoke-virtual/range {v2 .. v13}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->SaveGameWithoutNumEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 526
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":[B
    .end local v12    # "_arg9":Ljava/lang/String;
    .end local v13    # "_arg10":Ljava/lang/String;
    :sswitch_44b
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 530
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 532
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 534
    .restart local v5    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 536
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 538
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 540
    .restart local v8    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 542
    .restart local v9    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 544
    .restart local v10    # "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 546
    .local v11, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 548
    .local v12, "_arg9":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 550
    .restart local v13    # "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_49c

    const/4 v14, 0x1

    .line 552
    .local v14, "_arg11":Z
    :goto_485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 554
    .restart local v15    # "_arg12":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_49e

    const/16 v16, 0x1

    .local v16, "_arg13":Z
    :goto_491
    move-object/from16 v2, p0

    .line 555
    invoke-virtual/range {v2 .. v16}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->OpenServiceNoChangeWithAuto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ZLjava/lang/String;Z)V

    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 550
    .end local v14    # "_arg11":Z
    .end local v15    # "_arg12":Ljava/lang/String;
    .end local v16    # "_arg13":Z
    :cond_49c
    const/4 v14, 0x0

    goto :goto_485

    .line 554
    .restart local v14    # "_arg11":Z
    .restart local v15    # "_arg12":Ljava/lang/String;
    :cond_49e
    const/16 v16, 0x0

    goto :goto_491

    .line 561
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Ljava/lang/String;
    .end local v9    # "_arg6":Ljava/lang/String;
    .end local v10    # "_arg7":Ljava/lang/String;
    .end local v11    # "_arg8":Ljava/lang/String;
    .end local v12    # "_arg9":[B
    .end local v13    # "_arg10":Ljava/lang/String;
    .end local v14    # "_arg11":Z
    .end local v15    # "_arg12":Ljava/lang/String;
    :sswitch_4a1
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4cb

    .line 564
    sget-object v2, Lcom/tencent/unipay/request/UnipayGameRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/unipay/request/UnipayGameRequest;

    .line 570
    .local v3, "_arg0":Lcom/tencent/unipay/request/UnipayGameRequest;
    :goto_4b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    move-result-object v4

    .line 571
    .local v4, "_arg1":Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->UnipayLaunchGamePay(Lcom/tencent/unipay/request/UnipayGameRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 567
    .end local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayGameRequest;
    .end local v4    # "_arg1":Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    :cond_4cb
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayGameRequest;
    goto :goto_4b8

    .line 577
    .end local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayGameRequest;
    :sswitch_4cd
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4f7

    .line 580
    sget-object v2, Lcom/tencent/unipay/request/UnipayGoodsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/unipay/request/UnipayGoodsRequest;

    .line 586
    .local v3, "_arg0":Lcom/tencent/unipay/request/UnipayGoodsRequest;
    :goto_4e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    move-result-object v4

    .line 587
    .restart local v4    # "_arg1":Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->UnipayLaunchGoodsPay(Lcom/tencent/unipay/request/UnipayGoodsRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 589
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 583
    .end local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayGoodsRequest;
    .end local v4    # "_arg1":Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    :cond_4f7
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayGoodsRequest;
    goto :goto_4e4

    .line 593
    .end local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayGoodsRequest;
    :sswitch_4f9
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_523

    .line 596
    sget-object v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/unipay/request/UnipayMonthRequest;

    .line 602
    .local v3, "_arg0":Lcom/tencent/unipay/request/UnipayMonthRequest;
    :goto_510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    move-result-object v4

    .line 603
    .restart local v4    # "_arg1":Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->UnipayLaunchMonthRequest(Lcom/tencent/unipay/request/UnipayMonthRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 599
    .end local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayMonthRequest;
    .end local v4    # "_arg1":Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    :cond_523
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayMonthRequest;
    goto :goto_510

    .line 609
    .end local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayMonthRequest;
    :sswitch_525
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_54f

    .line 612
    sget-object v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/unipay/request/UnipaySubscribeRequest;

    .line 618
    .local v3, "_arg0":Lcom/tencent/unipay/request/UnipaySubscribeRequest;
    :goto_53c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    move-result-object v4

    .line 619
    .restart local v4    # "_arg1":Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->UnipayLaunchSubscribeRequest(Lcom/tencent/unipay/request/UnipaySubscribeRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 615
    .end local v3    # "_arg0":Lcom/tencent/unipay/request/UnipaySubscribeRequest;
    .end local v4    # "_arg1":Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    :cond_54f
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Lcom/tencent/unipay/request/UnipaySubscribeRequest;
    goto :goto_53c

    .line 625
    .end local v3    # "_arg0":Lcom/tencent/unipay/request/UnipaySubscribeRequest;
    :sswitch_551
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_57b

    .line 628
    sget-object v2, Lcom/tencent/unipay/request/UnipayNetRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/unipay/request/UnipayNetRequest;

    .line 634
    .local v3, "_arg0":Lcom/tencent/unipay/request/UnipayNetRequest;
    :goto_568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    move-result-object v4

    .line 635
    .local v4, "_arg1":Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->UnipayLaunchNetRequest(Lcom/tencent/unipay/request/UnipayNetRequest;Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 631
    .end local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayNetRequest;
    .end local v4    # "_arg1":Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    :cond_57b
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayNetRequest;
    goto :goto_568

    .line 641
    .end local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayNetRequest;
    :sswitch_57d
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->UnipayH5PayInit()Ljava/lang/String;

    move-result-object v17

    .line 643
    .restart local v17    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 645
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 649
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_595
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay;

    move-result-object v3

    .line 652
    .local v3, "_arg0":Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->UnipayPreLaunchPay(Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay;)V

    .line 653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 658
    .end local v3    # "_arg0":Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay;
    :sswitch_5af
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5dd

    .line 663
    sget-object v2, Lcom/tencent/unipay/request/UnipayGameRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/unipay/request/UnipayGameRequest;

    .line 669
    .local v4, "_arg1":Lcom/tencent/unipay/request/UnipayGameRequest;
    :goto_5ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    move-result-object v5

    .line 670
    .local v5, "_arg2":Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->GameGetInfo(Ljava/lang/String;Lcom/tencent/unipay/request/UnipayGameRequest;Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;)V

    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 666
    .end local v4    # "_arg1":Lcom/tencent/unipay/request/UnipayGameRequest;
    .end local v5    # "_arg2":Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    :cond_5dd
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Lcom/tencent/unipay/request/UnipayGameRequest;
    goto :goto_5ca

    .line 676
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/tencent/unipay/request/UnipayGameRequest;
    :sswitch_5df
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 680
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_60d

    .line 681
    sget-object v2, Lcom/tencent/unipay/request/UnipayGoodsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/unipay/request/UnipayGoodsRequest;

    .line 687
    .local v4, "_arg1":Lcom/tencent/unipay/request/UnipayGoodsRequest;
    :goto_5fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    move-result-object v5

    .line 688
    .restart local v5    # "_arg2":Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->GoodsGetInfo(Ljava/lang/String;Lcom/tencent/unipay/request/UnipayGoodsRequest;Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 684
    .end local v4    # "_arg1":Lcom/tencent/unipay/request/UnipayGoodsRequest;
    .end local v5    # "_arg2":Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    :cond_60d
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Lcom/tencent/unipay/request/UnipayGoodsRequest;
    goto :goto_5fa

    .line 694
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/tencent/unipay/request/UnipayGoodsRequest;
    :sswitch_60f
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 698
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_63d

    .line 699
    sget-object v2, Lcom/tencent/unipay/request/UnipayMonthRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/unipay/request/UnipayMonthRequest;

    .line 705
    .local v4, "_arg1":Lcom/tencent/unipay/request/UnipayMonthRequest;
    :goto_62a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    move-result-object v5

    .line 706
    .restart local v5    # "_arg2":Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->MonthGetInfo(Ljava/lang/String;Lcom/tencent/unipay/request/UnipayMonthRequest;Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;)V

    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 702
    .end local v4    # "_arg1":Lcom/tencent/unipay/request/UnipayMonthRequest;
    .end local v5    # "_arg2":Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    :cond_63d
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Lcom/tencent/unipay/request/UnipayMonthRequest;
    goto :goto_62a

    .line 712
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/tencent/unipay/request/UnipayMonthRequest;
    :sswitch_63f
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 716
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_66d

    .line 717
    sget-object v2, Lcom/tencent/unipay/request/UnipaySubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/unipay/request/UnipaySubscribeRequest;

    .line 723
    .local v4, "_arg1":Lcom/tencent/unipay/request/UnipaySubscribeRequest;
    :goto_65a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    move-result-object v5

    .line 724
    .restart local v5    # "_arg2":Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->SubscribeGetInfo(Ljava/lang/String;Lcom/tencent/unipay/request/UnipaySubscribeRequest;Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;)V

    .line 725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 720
    .end local v4    # "_arg1":Lcom/tencent/unipay/request/UnipaySubscribeRequest;
    .end local v5    # "_arg2":Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    :cond_66d
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Lcom/tencent/unipay/request/UnipaySubscribeRequest;
    goto :goto_65a

    .line 730
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Lcom/tencent/unipay/request/UnipaySubscribeRequest;
    :sswitch_66f
    const-string v2, "com.tencent.unipay.plug.IUnipayService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_699

    .line 733
    sget-object v2, Lcom/tencent/unipay/request/UnipayPayBaseRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    .line 739
    .local v3, "_arg0":Lcom/tencent/unipay/request/UnipayPayBaseRequest;
    :goto_686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    move-result-object v4

    .line 740
    .local v4, "_arg1":Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->UnipayLaunchWebRequest(Lcom/tencent/unipay/request/UnipayPayBaseRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 741
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 736
    .end local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayPayBaseRequest;
    .end local v4    # "_arg1":Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    :cond_699
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Lcom/tencent/unipay/request/UnipayPayBaseRequest;
    goto :goto_686

    .line 38
    nop

    :sswitch_data_69c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_20
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_64
        0x6 -> :sswitch_7d
        0x7 -> :sswitch_c0
        0x8 -> :sswitch_f6
        0x9 -> :sswitch_12c
        0xa -> :sswitch_173
        0xb -> :sswitch_1ad
        0xc -> :sswitch_1c8
        0xd -> :sswitch_1e0
        0xe -> :sswitch_22a
        0xf -> :sswitch_270
        0x10 -> :sswitch_286
        0x11 -> :sswitch_2d5
        0x12 -> :sswitch_320
        0x13 -> :sswitch_35e
        0x14 -> :sswitch_390
        0x15 -> :sswitch_3c2
        0x16 -> :sswitch_40d
        0x17 -> :sswitch_44b
        0x18 -> :sswitch_4a1
        0x19 -> :sswitch_4cd
        0x1a -> :sswitch_4f9
        0x1b -> :sswitch_525
        0x1c -> :sswitch_551
        0x1d -> :sswitch_57d
        0x1e -> :sswitch_595
        0x1f -> :sswitch_5af
        0x20 -> :sswitch_5df
        0x21 -> :sswitch_60f
        0x22 -> :sswitch_63f
        0x23 -> :sswitch_66f
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
