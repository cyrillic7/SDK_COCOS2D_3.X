.class public interface abstract Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract ConnService(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)Z
.end method

.method public abstract ConnServiceNew(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)I
.end method

.method public abstract acceptAllMessage()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract acceptMessage(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract appExit()I
.end method

.method public abstract checkJoinedUnion(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract checkMiTalkStatus()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract checkVipIsScubscribed(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract deleteMe()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract getRemoteViews(Ljava/lang/String;)Landroid/widget/RemoteViews;
.end method

.method public abstract getUnionList()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract getVipList()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract isMiAccountLogin()Landroid/os/Bundle;
.end method

.method public abstract joinUnion(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract loadGameFriends()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract loadGameInfo()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract loadGameMe()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract loadGameMessage()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract loadLeaderBoard(Ljava/lang/String;II)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract loadLotteryPrize()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract messageBlock(Z)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract miCardPay(Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract miGetAccountInfo(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;
.end method

.method public abstract miLogin(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;
.end method

.method public abstract miLogout(Ljava/lang/String;)V
.end method

.method public abstract miUniPay(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Ljava/lang/String;)I
.end method

.method public abstract miUniPayOffline(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract miUniPayOnline(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;Ljava/lang/String;Landroid/os/Bundle;)I
.end method

.method public abstract miWindow()I
.end method

.method public abstract openAppReport(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)V
.end method

.method public abstract openAppReportForInit(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)V
.end method

.method public abstract openMiTalkUpdateSite()V
.end method

.method public abstract registCallback(Lcom/xiaomi/gamecenter/sdk/IServiceCallback;Ljava/lang/String;)V
.end method

.method public abstract sendGameMessage(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I[B[Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract sendInviteMessage(Ljava/lang/String;ZLjava/lang/String;[Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract sendInviteMessageNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract sendLogToService(Ljava/lang/String;)V
.end method

.method public abstract sendTextMsgToFriend()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract shareToMiTalkForImgAndUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract shareToMiliao(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract shareToMiliaoForLargeImg(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract subscribeVip(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract syncResult(Ljava/lang/String;II[B[B)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract syncResults([Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;I[B[B)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract unregistCallBack(Lcom/xiaomi/gamecenter/sdk/IServiceCallback;Ljava/lang/String;)V
.end method

.method public abstract updateMe(II[B[B)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract updateResult(Ljava/lang/String;II[B[BLjava/lang/String;ILjava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract updateResults([Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;I[B[BLjava/lang/String;ILjava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method

.method public abstract useHeart(IZ)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
.end method
