.class public Lcom/tencent/msdk/weixin/BaseWXEntryActivity;
.super Landroid/app/Activity;
.source "BaseWXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private messageExt:Ljava/lang/String;

.field private platformId:Ljava/lang/String;

.field private wx_card_list:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private TestPlatform(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    if-nez p1, :cond_a

    .line 55
    sget-object v2, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->TAG:Ljava/lang/String;

    const-string v3, "wx intent is NULL"

    invoke-static {v2, v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_9
    return-void

    .line 60
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 61
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_24

    .line 62
    sget-object v2, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->TAG:Ljava/lang/String;

    const-string v3, "wx getExtras is NULL"

    invoke-static {v2, v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_18

    goto :goto_9

    .line 66
    .end local v1    # "extras":Landroid/os/Bundle;
    :catch_18
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    sget-object v2, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->TAG:Ljava/lang/String;

    const-string v3, "intent content end"

    invoke-static {v2, v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 65
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_24
    :try_start_24
    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Landroid/os/Bundle;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_18

    goto :goto_1c
.end method

.method private initEntry()V
    .registers 5

    .prologue
    .line 87
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 89
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 91
    :try_start_20
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2d} :catch_2e

    .line 95
    :goto_2d
    return-void

    .line 92
    :catch_2e
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method private setPlatformInfo(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    if-eqz p1, :cond_28

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 76
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "platformId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->platformId:Ljava/lang/String;

    .line 78
    const-string v2, "_wxobject_message_ext"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->messageExt:Ljava/lang/String;

    .line 79
    const-string v2, "_wxapi_add_card_to_wx_card_list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->wx_card_list:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    .line 84
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_28
    :goto_28
    return-void

    .line 81
    :catch_29
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->requestWindowFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 39
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->TestPlatform(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->setPlatformInfo(Landroid/content/Intent;)V

    .line 41
    invoke-direct {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->initEntry()V

    .line 42
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 47
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->TestPlatform(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->setPlatformInfo(Landroid/content/Intent;)V

    .line 50
    invoke-direct {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->initEntry()V

    .line 51
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .registers 12
    .param p1, "req"    # Lcom/tencent/mm/sdk/modelbase/BaseReq;

    .prologue
    .line 99
    iget-object v8, p1, Lcom/tencent/mm/sdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    if-nez v8, :cond_92

    .line 100
    const-string v8, "OpenID Null"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 107
    :goto_9
    iget-object v8, p1, Lcom/tencent/mm/sdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    if-nez v8, :cond_11

    .line 108
    const-string v8, ""

    iput-object v8, p1, Lcom/tencent/mm/sdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    .line 111
    :cond_11
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 112
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 115
    .local v1, "i":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    const/high16 v8, 0x20000000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    const-string v8, "wx_callback"

    const-string v9, "onReq"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReq"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->messageExt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 119
    instance-of v8, p1, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;

    if-eqz v8, :cond_bd

    .line 120
    const-string v8, "wx_mediaTagName"

    const-string v9, "wgWXGameRecommend"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, p1

    .line 121
    check-cast v2, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;

    .line 122
    .local v2, "launchReq":Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;
    const-string v8, "messageExt"

    iget-object v9, v2, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->messageExt:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v8, "country"

    iget-object v9, v2, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->country:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v8, "lang"

    iget-object v9, v2, Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;->lang:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    .end local v2    # "launchReq":Lcom/tencent/mm/sdk/modelmsg/LaunchFromWX$Req;
    :cond_69
    :goto_69
    const-string v8, "wx_transaction"

    iget-object v9, p1, Lcom/tencent/mm/sdk/modelbase/BaseReq;->transaction:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v8, "wx_openId"

    iget-object v9, p1, Lcom/tencent/mm/sdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v8, "platformId"

    iget-object v9, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->platformId:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v8, "\u6253\u5370\u6700\u7ec8\u7ed9msdk \u7684intent ---- s\n"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 144
    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Landroid/content/Intent;)V

    .line 145
    const-string v8, "\u6253\u5370\u6700\u7ec8\u7ed9msdk \u7684intent ---- e\n"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, v1}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->finish()V

    .line 148
    return-void

    .line 101
    .end local v1    # "i":Landroid/content/Intent;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_92
    const-string v8, ""

    iget-object v9, p1, Lcom/tencent/mm/sdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a3

    .line 102
    const-string v8, "OpenID is empty"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 104
    :cond_a3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OpenID : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/tencent/mm/sdk/modelbase/BaseReq;->openId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 125
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_bd
    instance-of v8, p1, Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;

    if-eqz v8, :cond_69

    move-object v7, p1

    .line 126
    check-cast v7, Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;

    .line 127
    .local v7, "smReq":Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;
    iget-object v8, v7, Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    iget-object v0, v8, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;

    check-cast v0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;

    .line 128
    .local v0, "appObj":Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;
    iget-object v4, v0, Lcom/tencent/mm/sdk/modelmsg/WXAppExtendObject;->extInfo:Ljava/lang/String;

    .line 129
    .local v4, "mediaTagName":Ljava/lang/String;
    const-string v8, "wx_mediaTagName"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v3, v7, Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    .line 131
    .local v3, "mediaMsg":Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;
    const-string v8, "country"

    iget-object v9, v7, Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;->country:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v8, "lang"

    iget-object v9, v7, Lcom/tencent/mm/sdk/modelmsg/ShowMessageFromWX$Req;->lang:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mediaMsg.messageExt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->messageExt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 134
    iget-object v8, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->messageExt:Ljava/lang/String;

    invoke-static {v8}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10a

    .line 135
    const-string v8, "messageExt"

    iget-object v9, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->messageExt:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_69

    .line 137
    :cond_10a
    const-string v8, "messageExt"

    iget-object v9, v3, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->messageExt:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_69
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .registers 12
    .param p1, "resp"    # Lcom/tencent/mm/sdk/modelbase/BaseResp;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 153
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 156
    .local v2, "i":Landroid/content/Intent;
    :try_start_c
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 158
    .local v4, "launchActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    const/high16 v8, 0x20000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 161
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getComponent"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getComponent"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 164
    const-string v8, "wx_callback"

    const-string v9, "onResp"

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v8, "wx_errCode"

    iget v9, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    const-string v8, "wx_errStr"

    iget-object v9, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errStr:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v8, "wx_respType"

    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    const-string v8, "wx_transaction"

    iget-object v9, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v8, "wx_openId"

    iget-object v9, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->openId:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v8, "platformId"

    iget-object v9, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->platformId:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    instance-of v8, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    if-eqz v8, :cond_bd

    .line 173
    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    move-object v7, v0

    .line 174
    .local v7, "res":Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v7, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 175
    const-string v8, "wx_token"

    iget-object v9, v7, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    .end local v7    # "res":Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;
    :cond_bd
    const-string v8, "wechatAddCardToWXCardPackage"

    iget-object v9, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 179
    const-string v8, "wxapi_add_card_to_wx_card_list"

    iget-object v9, p0, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->wx_card_list:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    :cond_ce
    const-string v8, "msdkwebpage"

    iget-object v9, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->transaction:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_db

    .line 184
    invoke-virtual {p0, v3}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    :cond_db
    invoke-virtual {p0}, Lcom/tencent/msdk/weixin/BaseWXEntryActivity;->finish()V
    :try_end_de
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_de} :catch_df

    .line 191
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "launchActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_de
    return-void

    .line 187
    :catch_df
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_de
.end method
