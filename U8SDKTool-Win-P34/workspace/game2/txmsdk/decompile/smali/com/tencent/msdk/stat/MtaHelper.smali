.class public Lcom/tencent/msdk/stat/MtaHelper;
.super Ljava/lang/Object;
.source "MtaHelper.java"


# instance fields
.field private context:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCurrentLoginPlatform(I)Ljava/lang/String;
    .registers 3
    .param p1, "platId"    # I

    .prologue
    .line 57
    sget v0, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    if-ne p1, v0, :cond_7

    .line 58
    const-string v0, "Weixin"

    .line 62
    :goto_6
    return-object v0

    .line 59
    :cond_7
    sget v0, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-ne p1, v0, :cond_e

    .line 60
    const-string v0, "QQ"

    goto :goto_6

    .line 62
    :cond_e
    const-string v0, ""

    goto :goto_6
.end method


# virtual methods
.method public enableCrashReport(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 53
    invoke-static {p1}, Lcom/tencent/stat/StatConfig;->setAutoExceptionCaught(Z)V

    .line 54
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "qqAppId"    # Ljava/lang/String;
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "isDebug"    # Z

    .prologue
    .line 24
    iput-object p1, p0, Lcom/tencent/msdk/stat/MtaHelper;->context:Landroid/app/Activity;

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aqc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "appkey":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGGetChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/stat/StatConfig;->setInstallChannel(Ljava/lang/String;)V

    .line 29
    invoke-static {p4}, Lcom/tencent/stat/StatConfig;->setDebugEnable(Z)V

    .line 32
    :try_start_1f
    iget-object v2, p0, Lcom/tencent/msdk/stat/MtaHelper;->context:Landroid/app/Activity;

    const-string v3, "2.0.0"

    invoke-static {v2, v0, v3}, Lcom/tencent/stat/StatService;->startStatService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_26
    .catch Lcom/tencent/stat/MtaSDkException; {:try_start_1f .. :try_end_26} :catch_27

    .line 36
    :goto_26
    return-void

    .line 33
    :catch_27
    move-exception v1

    .line 34
    .local v1, "e":Lcom/tencent/stat/MtaSDkException;
    invoke-virtual {v1}, Lcom/tencent/stat/MtaSDkException;->printStackTrace()V

    goto :goto_26
.end method

.method public onLogin(Ljava/lang/String;I)V
    .registers 6
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "platId"    # I

    .prologue
    .line 39
    const-string v1, "MtaHelper login"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 41
    .local v0, "p":Ljava/util/Properties;
    const-string v1, "loginType"

    invoke-direct {p0, p2}, Lcom/tencent/msdk/stat/MtaHelper;->getCurrentLoginPlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "msdkVersion"

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGGetVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "regChannel"

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGGetRegisterChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "openId"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v1, p0, Lcom/tencent/msdk/stat/MtaHelper;->context:Landroid/app/Activity;

    const-string v2, "wgLogin"

    invoke-static {v1, v2, v0}, Lcom/tencent/stat/StatService;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    .line 48
    iget-object v1, p0, Lcom/tencent/msdk/stat/MtaHelper;->context:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/tencent/stat/StatService;->reportQQ(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "platId"    # I

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MtaHelper reportEvent  name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; body:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 68
    .local v0, "p":Ljava/util/Properties;
    if-nez p2, :cond_29

    .line 69
    const-string p2, ""

    .line 71
    :cond_29
    const-string v1, "loginType"

    invoke-direct {p0, p3}, Lcom/tencent/msdk/stat/MtaHelper;->getCurrentLoginPlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "evtBody"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Lcom/tencent/msdk/stat/MtaHelper;->context:Landroid/app/Activity;

    invoke-static {v1, p1, v0}, Lcom/tencent/stat/StatService;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    .line 75
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/HashMap;I)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "platId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 79
    .local v4, "p":Ljava/util/Properties;
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 80
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 81
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "val":Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 87
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :cond_31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MtaHelper reportEvent  name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; body:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/Properties;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 88
    const-string v6, "loginType"

    invoke-direct {p0, p3}, Lcom/tencent/msdk/stat/MtaHelper;->getCurrentLoginPlatform(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v6, p0, Lcom/tencent/msdk/stat/MtaHelper;->context:Landroid/app/Activity;

    invoke-static {v6, p1, v4}, Lcom/tencent/stat/StatService;->trackCustomKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)V

    .line 90
    return-void
.end method
