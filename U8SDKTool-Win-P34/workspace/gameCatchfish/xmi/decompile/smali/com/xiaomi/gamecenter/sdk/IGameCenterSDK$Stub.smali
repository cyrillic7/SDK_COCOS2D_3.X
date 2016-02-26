.class public abstract Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

.field static final TRANSACTION_ConnService:I = 0x1

.field static final TRANSACTION_ConnServiceNew:I = 0x31

.field static final TRANSACTION_acceptAllMessage:I = 0x15

.field static final TRANSACTION_acceptMessage:I = 0x14

.field static final TRANSACTION_appExit:I = 0x2f

.field static final TRANSACTION_checkJoinedUnion:I = 0x26

.field static final TRANSACTION_checkMiTalkStatus:I = 0x24

.field static final TRANSACTION_checkVipIsScubscribed:I = 0x28

.field static final TRANSACTION_deleteMe:I = 0x1c

.field static final TRANSACTION_getRemoteViews:I = 0xc

.field static final TRANSACTION_getUnionList:I = 0x2a

.field static final TRANSACTION_getVipList:I = 0x2b

.field static final TRANSACTION_isMiAccountLogin:I = 0x30

.field static final TRANSACTION_joinUnion:I = 0x25

.field static final TRANSACTION_loadGameFriends:I = 0x10

.field static final TRANSACTION_loadGameInfo:I = 0xe

.field static final TRANSACTION_loadGameMe:I = 0xf

.field static final TRANSACTION_loadGameMessage:I = 0x13

.field static final TRANSACTION_loadLeaderBoard:I = 0x19

.field static final TRANSACTION_loadLotteryPrize:I = 0x1d

.field static final TRANSACTION_messageBlock:I = 0x1a

.field static final TRANSACTION_miCardPay:I = 0x6

.field static final TRANSACTION_miGetAccountInfo:I = 0x7

.field static final TRANSACTION_miLogin:I = 0x2

.field static final TRANSACTION_miLogout:I = 0x3

.field static final TRANSACTION_miUniPay:I = 0xd

.field static final TRANSACTION_miUniPayOffline:I = 0x4

.field static final TRANSACTION_miUniPayOnline:I = 0x5

.field static final TRANSACTION_miWindow:I = 0xb

.field static final TRANSACTION_openAppReport:I = 0xa

.field static final TRANSACTION_openAppReportForInit:I = 0x2e

.field static final TRANSACTION_openMiTalkUpdateSite:I = 0x2c

.field static final TRANSACTION_registCallback:I = 0x8

.field static final TRANSACTION_sendGameMessage:I = 0x12

.field static final TRANSACTION_sendInviteMessage:I = 0x1b

.field static final TRANSACTION_sendInviteMessageNew:I = 0x23

.field static final TRANSACTION_sendLogToService:I = 0x1f

.field static final TRANSACTION_sendTextMsgToFriend:I = 0x29

.field static final TRANSACTION_shareToMiTalkForImgAndUrl:I = 0x2d

.field static final TRANSACTION_shareToMiliao:I = 0x1e

.field static final TRANSACTION_shareToMiliaoForLargeImg:I = 0x22

.field static final TRANSACTION_subscribeVip:I = 0x27

.field static final TRANSACTION_syncResult:I = 0x20

.field static final TRANSACTION_syncResults:I = 0x21

.field static final TRANSACTION_unregistCallBack:I = 0x9

.field static final TRANSACTION_updateMe:I = 0x11

.field static final TRANSACTION_updateResult:I = 0x17

.field static final TRANSACTION_updateResults:I = 0x18

.field static final TRANSACTION_useHeart:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p0, p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_6fe

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_a
    return v9

    :sswitch_b
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->ConnService(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_38

    move v0, v9

    :goto_32
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_36
    move-object v0, v5

    goto :goto_24

    :cond_38
    move v0, v10

    goto :goto_32

    :sswitch_3a
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miLogin(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_53

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_53
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :sswitch_57
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miLogout(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_67
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_99

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;

    move-object v1, v0

    :goto_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9b

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_8d
    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miUniPayOffline(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :cond_99
    move-object v1, v5

    goto :goto_7b

    :cond_9b
    move-object v0, v5

    goto :goto_8d

    :sswitch_9d
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_cf

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;

    move-object v1, v0

    :goto_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d1

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_c3
    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miUniPayOnline(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :cond_cf
    move-object v1, v5

    goto :goto_b1

    :cond_d1
    move-object v0, v5

    goto :goto_c3

    :sswitch_d3
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_105

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;

    move-object v1, v0

    :goto_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_107

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_f9
    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miCardPay(Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :cond_105
    move-object v1, v5

    goto :goto_e7

    :cond_107
    move-object v0, v5

    goto :goto_f9

    :sswitch_109
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miGetAccountInfo(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_123

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_123
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_128
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->registCallback(Lcom/xiaomi/gamecenter/sdk/IServiceCallback;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_141
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/IServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->unregistCallBack(Lcom/xiaomi/gamecenter/sdk/IServiceCallback;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_15a
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_179

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    :goto_16d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->openAppReport(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_179
    move-object v0, v5

    goto :goto_16d

    :sswitch_17b
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miWindow()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_18c
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->getRemoteViews(Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1a6

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_1a6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_1ab
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ce

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    :goto_1be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->miUniPay(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :cond_1ce
    move-object v0, v5

    goto :goto_1be

    :sswitch_1d0
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->loadGameInfo()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1e6

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_1e6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_1eb
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->loadGameMe()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_201

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_201
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_206
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->loadGameFriends()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_21c

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_21c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_221
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->updateMe(II[B[B)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_247

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_247
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_24c
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_286

    move v2, v9

    :goto_25c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->sendGameMessage(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I[B[Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_288

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_286
    move v2, v10

    goto :goto_25c

    :cond_288
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_28d
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->loadGameMessage()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2a3

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_2a3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_2a8
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->acceptMessage(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2c2

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_2c2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_2c7
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->acceptAllMessage()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2dd

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_2dd
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_2e2
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_303

    move v0, v9

    :goto_2f2
    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->useHeart(IZ)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_305

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_303
    move v0, v10

    goto :goto_2f2

    :cond_305
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_30a
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->updateResult(Ljava/lang/String;II[B[BLjava/lang/String;ILjava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_341

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_341
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_346
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->updateResults([Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;I[B[BLjava/lang/String;ILjava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_37d

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_37d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_382
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->loadLeaderBoard(Ljava/lang/String;II)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3a4

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_3a4
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_3a9
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c6

    move v0, v9

    :goto_3b5
    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->messageBlock(Z)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_3c8

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_3c6
    move v0, v10

    goto :goto_3b5

    :cond_3c8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_3cd
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40a

    move v2, v9

    :goto_3dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f8

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    move-object v5, v0

    :cond_3f8
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->sendInviteMessage(Ljava/lang/String;ZLjava/lang/String;[Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_40c

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_40a
    move v2, v10

    goto :goto_3dd

    :cond_40c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_411
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->deleteMe()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_427

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_427
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_42c
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->loadLotteryPrize()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_442

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_442
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_447
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_477

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    :goto_45a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->shareToMiliao(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_479

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_477
    move-object v0, v5

    goto :goto_45a

    :cond_479
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_47e
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->sendLogToService(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_48f
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->syncResult(Ljava/lang/String;II[B[B)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4ba

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_4ba
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_4bf
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->syncResults([Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;I[B[B)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4e9

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_4e9
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_4ee
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_51a

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    :goto_509
    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->shareToMiliaoForLargeImg(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_51c

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_51a
    move-object v0, v5

    goto :goto_509

    :cond_51c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_521
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_551

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    :goto_540
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->sendInviteMessageNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_553

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_551
    move-object v0, v5

    goto :goto_540

    :cond_553
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_558
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->checkMiTalkStatus()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_56e

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_56e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_573
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->joinUnion(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_591

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_591
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_596
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->checkJoinedUnion(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5b0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_5b0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_5b5
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->subscribeVip(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5cf

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_5cf
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_5d4
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->checkVipIsScubscribed(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5ee

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_5ee
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_5f3
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->sendTextMsgToFriend()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_609

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_609
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_60e
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->getUnionList()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_624

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_624
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_629
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->getVipList()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_63f

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_63f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_644
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->openMiTalkUpdateSite()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_651
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_675

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    move-object v5, v0

    :cond_675
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->shareToMiTalkForImgAndUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_687

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_687
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_68c
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6ab

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    :goto_69f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->openAppReportForInit(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_6ab
    move-object v0, v5

    goto :goto_69f

    :sswitch_6ad
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->appExit()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_6be
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->isMiAccountLogin()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6d4

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_6d4
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_6d9
    const-string v0, "com.xiaomi.gamecenter.sdk.IGameCenterSDK"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6fc

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    :goto_6ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->ConnServiceNew(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :cond_6fc
    move-object v0, v5

    goto :goto_6ec

    :sswitch_data_6fe
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3a
        0x3 -> :sswitch_57
        0x4 -> :sswitch_67
        0x5 -> :sswitch_9d
        0x6 -> :sswitch_d3
        0x7 -> :sswitch_109
        0x8 -> :sswitch_128
        0x9 -> :sswitch_141
        0xa -> :sswitch_15a
        0xb -> :sswitch_17b
        0xc -> :sswitch_18c
        0xd -> :sswitch_1ab
        0xe -> :sswitch_1d0
        0xf -> :sswitch_1eb
        0x10 -> :sswitch_206
        0x11 -> :sswitch_221
        0x12 -> :sswitch_24c
        0x13 -> :sswitch_28d
        0x14 -> :sswitch_2a8
        0x15 -> :sswitch_2c7
        0x16 -> :sswitch_2e2
        0x17 -> :sswitch_30a
        0x18 -> :sswitch_346
        0x19 -> :sswitch_382
        0x1a -> :sswitch_3a9
        0x1b -> :sswitch_3cd
        0x1c -> :sswitch_411
        0x1d -> :sswitch_42c
        0x1e -> :sswitch_447
        0x1f -> :sswitch_47e
        0x20 -> :sswitch_48f
        0x21 -> :sswitch_4bf
        0x22 -> :sswitch_4ee
        0x23 -> :sswitch_521
        0x24 -> :sswitch_558
        0x25 -> :sswitch_573
        0x26 -> :sswitch_596
        0x27 -> :sswitch_5b5
        0x28 -> :sswitch_5d4
        0x29 -> :sswitch_5f3
        0x2a -> :sswitch_60e
        0x2b -> :sswitch_629
        0x2c -> :sswitch_644
        0x2d -> :sswitch_651
        0x2e -> :sswitch_68c
        0x2f -> :sswitch_6ad
        0x30 -> :sswitch_6be
        0x31 -> :sswitch_6d9
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
