.class public Lcom/tencent/msdk/stat/Stat;
.super Ljava/lang/Object;
.source "Stat.java"


# instance fields
.field private beaconHelper:Lcom/tencent/msdk/stat/BeaconHelper;

.field private mtaHelper:Lcom/tencent/msdk/stat/MtaHelper;

.field private openId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/stat/Stat;->openId:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/tencent/msdk/stat/BeaconHelper;

    invoke-direct {v0}, Lcom/tencent/msdk/stat/BeaconHelper;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/stat/Stat;->beaconHelper:Lcom/tencent/msdk/stat/BeaconHelper;

    .line 19
    new-instance v0, Lcom/tencent/msdk/stat/MtaHelper;

    invoke-direct {v0}, Lcom/tencent/msdk/stat/MtaHelper;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/stat/Stat;->mtaHelper:Lcom/tencent/msdk/stat/MtaHelper;

    .line 20
    return-void
.end method


# virtual methods
.method public enableCrashReport(ZZ)V
    .registers 4
    .param p1, "bRdmEnable"    # Z
    .param p2, "mMtaEnable"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/msdk/stat/Stat;->beaconHelper:Lcom/tencent/msdk/stat/BeaconHelper;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/stat/BeaconHelper;->enableCrashReport(Z)V

    .line 52
    iget-object v0, p0, Lcom/tencent/msdk/stat/Stat;->mtaHelper:Lcom/tencent/msdk/stat/MtaHelper;

    invoke-virtual {v0, p2}, Lcom/tencent/msdk/stat/MtaHelper;->enableCrashReport(Z)V

    .line 53
    return-void
.end method

.method public init(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "qqAppId"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v2, ""

    iput-object v2, p0, Lcom/tencent/msdk/stat/Stat;->openId:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGGetChannelId()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "channelId":Ljava/lang/String;
    invoke-static {p1}, Lcom/tencent/msdk/config/ConfigManager;->needStatLog(Landroid/content/Context;)Z

    move-result v1

    .line 27
    .local v1, "openLog":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChannelID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", openLog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/tencent/msdk/stat/Stat;->beaconHelper:Lcom/tencent/msdk/stat/BeaconHelper;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/tencent/msdk/stat/BeaconHelper;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    iget-object v2, p0, Lcom/tencent/msdk/stat/Stat;->mtaHelper:Lcom/tencent/msdk/stat/MtaHelper;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/tencent/msdk/stat/MtaHelper;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 30
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "platId"    # I
    .param p4, "isRealTime"    # Z

    .prologue
    .line 56
    const-string v0, "String called"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/tencent/msdk/stat/Stat;->beaconHelper:Lcom/tencent/msdk/stat/BeaconHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/msdk/stat/BeaconHelper;->reportEvent(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 58
    iget-object v0, p0, Lcom/tencent/msdk/stat/Stat;->mtaHelper:Lcom/tencent/msdk/stat/MtaHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/msdk/stat/MtaHelper;->reportEvent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public reportEvent(Ljava/lang/String;Ljava/util/HashMap;IZ)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "platId"    # I
    .param p4, "isRealTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "HashMap called"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/tencent/msdk/stat/Stat;->beaconHelper:Lcom/tencent/msdk/stat/BeaconHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/msdk/stat/BeaconHelper;->reportEvent(Ljava/lang/String;Ljava/util/HashMap;IZ)V

    .line 64
    iget-object v0, p0, Lcom/tencent/msdk/stat/Stat;->mtaHelper:Lcom/tencent/msdk/stat/MtaHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/msdk/stat/MtaHelper;->reportEvent(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 65
    return-void
.end method

.method public reportGameTimeEvent(I)V
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tencent/msdk/stat/Stat;->beaconHelper:Lcom/tencent/msdk/stat/BeaconHelper;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/stat/BeaconHelper;->reportGameTimeEvent(I)V

    .line 74
    return-void
.end method

.method public reportLogin(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "platId"    # I

    .prologue
    const/4 v2, 0x0

    .line 33
    if-eqz p1, :cond_d

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    if-nez p2, :cond_2e

    .line 34
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "did not report login: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 47
    :goto_2d
    return v2

    .line 39
    :cond_2e
    const-string v0, ""

    iget-object v1, p0, Lcom/tencent/msdk/stat/Stat;->openId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/tencent/msdk/stat/Stat;->openId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 40
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report login: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/tencent/msdk/stat/Stat;->beaconHelper:Lcom/tencent/msdk/stat/BeaconHelper;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/msdk/stat/BeaconHelper;->onLogin(Ljava/lang/String;I)V

    .line 42
    iget-object v0, p0, Lcom/tencent/msdk/stat/Stat;->mtaHelper:Lcom/tencent/msdk/stat/MtaHelper;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/msdk/stat/MtaHelper;->onLogin(Ljava/lang/String;I)V

    .line 44
    iput-object p1, p0, Lcom/tencent/msdk/stat/Stat;->openId:Ljava/lang/String;

    .line 46
    :cond_6c
    const-string v0, "called"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public resetOpenId()V
    .registers 2

    .prologue
    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/stat/Stat;->openId:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public speedTest(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "addrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "Stat speedTest"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/tencent/msdk/stat/Stat;->beaconHelper:Lcom/tencent/msdk/stat/BeaconHelper;

    invoke-virtual {v0, p1}, Lcom/tencent/msdk/stat/BeaconHelper;->speedTest(Ljava/util/ArrayList;)V

    .line 70
    return-void
.end method
