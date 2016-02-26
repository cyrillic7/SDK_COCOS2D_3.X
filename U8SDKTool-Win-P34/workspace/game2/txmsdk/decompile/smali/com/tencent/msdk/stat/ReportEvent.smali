.class public Lcom/tencent/msdk/stat/ReportEvent;
.super Ljava/lang/Object;
.source "ReportEvent.java"


# static fields
.field private static mMSDKVer:Ljava/lang/String;

.field private static mMTAId:Ljava/lang/String;

.field private static mResolution:Ljava/lang/String;

.field public static sEventHead:Ljava/lang/String;

.field public static sGameStart:J

.field public static sReportEvent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/msdk/stat/ReportEvent;->sReportEvent:Z

    .line 22
    const-string v0, "MSDK"

    sput-object v0, Lcom/tencent/msdk/stat/ReportEvent;->sEventHead:Ljava/lang/String;

    .line 23
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/msdk/stat/ReportEvent;->sGameStart:J

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/stat/ReportEvent;->mMTAId:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/stat/ReportEvent;->mResolution:Ljava/lang/String;

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/stat/ReportEvent;->mMSDKVer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BaseReportEvent(Ljava/lang/String;Lcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/util/HashMap;)Z
    .registers 16
    .param p0, "eventModel"    # Ljava/lang/String;
    .param p1, "eventType"    # Lcom/tencent/msdk/stat/eEVENT_TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/msdk/stat/eEVENT_TYPE;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "tempPara":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_7

    .line 31
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "tempPara":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 33
    .restart local p2    # "tempPara":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSDK_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/msdk/stat/eEVENT_TYPE;->val()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x1

    .line 35
    .local v1, "isOk":Z
    const-wide/16 v4, -0x1

    .line 36
    .local v4, "size":J
    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    move-object v6, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/beacon/event/UserAction;->onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)Z

    move-result v9

    .line 37
    .local v9, "flag":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v8, "builder":Ljava/lang/StringBuilder;
    const-string v2, "{"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 40
    .local v11, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 41
    .local v12, "mapValue":Ljava/lang/String;
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 43
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "mapValue":Ljava/lang/String;
    :cond_7e
    const-string v2, "}"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start reportEvent name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 45
    return v9
.end method

.method public static ReportADEvent(Lcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .param p0, "eventType"    # Lcom/tencent/msdk/stat/eEVENT_TYPE;
    .param p1, "ADId"    # Ljava/lang/String;
    .param p2, "ADType"    # Ljava/lang/String;
    .param p3, "frame"    # I

    .prologue
    .line 59
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/msdk/login/LoginInfoManager;->getInstance()Lcom/tencent/msdk/login/LoginInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/login/LoginInfoManager;->getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v5

    .line 61
    .local v5, "lr":Lcom/tencent/msdk/api/LoginRet;
    const-string v0, "adid"

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "adType"

    invoke-virtual {v6, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "openid"

    iget-object v1, v5, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "accountType"

    iget v1, v5, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "AD"

    invoke-static {v0, p0, v6}, Lcom/tencent/msdk/stat/ReportEvent;->BaseReportEvent(Ljava/lang/String;Lcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/util/HashMap;)Z

    .line 66
    const/4 v0, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/tencent/msdk/stat/ReportEvent;->ReportDOPADEvent(ILcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/msdk/api/LoginRet;)V

    .line 67
    return-void
.end method

.method public static ReportBasicClickEvent(Lcom/tencent/msdk/stat/eEVENT_TYPE;)V
    .registers 3
    .param p0, "eventType"    # Lcom/tencent/msdk/stat/eEVENT_TYPE;

    .prologue
    .line 121
    sget-boolean v0, Lcom/tencent/msdk/stat/ReportEvent;->sReportEvent:Z

    if-eqz v0, :cond_a

    .line 122
    const-string v0, "BASIC"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/tencent/msdk/stat/ReportEvent;->BaseReportEvent(Ljava/lang/String;Lcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/util/HashMap;)Z

    .line 124
    :cond_a
    return-void
.end method

.method public static ReportBasicValue(Lcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/lang/String;)V
    .registers 4
    .param p0, "eventType"    # Lcom/tencent/msdk/stat/eEVENT_TYPE;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v1, "BASIC"

    invoke-static {v1, p0, v0}, Lcom/tencent/msdk/stat/ReportEvent;->BaseReportEvent(Ljava/lang/String;Lcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/util/HashMap;)Z

    .line 130
    return-void
.end method

.method public static ReportDOPADEvent(ILcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/msdk/api/LoginRet;)V
    .registers 9
    .param p0, "operation"    # I
    .param p1, "eventType"    # Lcom/tencent/msdk/stat/eEVENT_TYPE;
    .param p2, "adId"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "frame"    # I
    .param p5, "lr"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "adid"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "dMid"

    invoke-static {}, Lcom/tencent/msdk/stat/ReportEvent;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "dResolution"

    invoke-static {}, Lcom/tencent/msdk/stat/ReportEvent;->getScreenResolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "dType"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "dTypeVer"

    sget-object v2, Lcom/tencent/msdk/stat/ReportEvent;->mMSDKVer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "dScene1"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "dScene2"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "dScene3"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "dOper"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "dOperStat"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "dFrame"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "dOperType"

    invoke-virtual {p1}, Lcom/tencent/msdk/stat/eEVENT_TYPE;->val()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "dResult"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v1, "dTag"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v1, "openid"

    iget-object v2, p5, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "accountType"

    iget v2, p5, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "dAppId"

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, "DOP"

    invoke-static {v1, p1, v0}, Lcom/tencent/msdk/stat/ReportEvent;->BaseReportEvent(Ljava/lang/String;Lcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/util/HashMap;)Z

    .line 118
    return-void
.end method

.method public static ReportNoticeEvent(Lcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/lang/String;)V
    .registers 9
    .param p0, "eventType"    # Lcom/tencent/msdk/stat/eEVENT_TYPE;
    .param p1, "notice_id"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tencent/msdk/login/LoginInfoManager;->getInstance()Lcom/tencent/msdk/login/LoginInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/login/LoginInfoManager;->getLastLoginUserInfo()Lcom/tencent/msdk/api/LoginRet;

    move-result-object v5

    .line 51
    .local v5, "lr":Lcom/tencent/msdk/api/LoginRet;
    const-string v0, "msgid"

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "openid"

    iget-object v1, v5, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "accountType"

    iget v1, v5, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "NOTICE"

    invoke-static {v0, p0, v6}, Lcom/tencent/msdk/stat/ReportEvent;->BaseReportEvent(Ljava/lang/String;Lcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/util/HashMap;)Z

    .line 55
    const/4 v0, 0x2

    const-string v3, "4"

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/tencent/msdk/stat/ReportEvent;->ReportDOPADEvent(ILcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/lang/String;Ljava/lang/String;ILcom/tencent/msdk/api/LoginRet;)V

    .line 56
    return-void
.end method

.method public static ReportPicLength(J)V
    .registers 6
    .param p0, "length"    # J

    .prologue
    .line 134
    sget-boolean v2, Lcom/tencent/msdk/stat/ReportEvent;->sReportEvent:Z

    if-eqz v2, :cond_1a

    .line 135
    const-wide/32 v2, 0xc800

    div-long v0, p0, v2

    .line 136
    .local v0, "perLength":J
    const-wide/16 v2, 0x3d

    cmp-long v2, v0, v2

    if-lez v2, :cond_11

    .line 137
    const-wide/16 v0, 0x3e

    .line 139
    :cond_11
    sget-object v2, Lcom/tencent/msdk/stat/eEVENT_TYPE;->eEVENT_BASIC_PICLENGTH:Lcom/tencent/msdk/stat/eEVENT_TYPE;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/msdk/stat/ReportEvent;->ReportBasicValue(Lcom/tencent/msdk/stat/eEVENT_TYPE;Ljava/lang/String;)V

    .line 141
    .end local v0    # "perLength":J
    :cond_1a
    return-void
.end method

.method public static getMSDKVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/tencent/msdk/stat/ReportEvent;->mMSDKVer:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 93
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->WGGetVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/stat/ReportEvent;->mMSDKVer:Ljava/lang/String;

    .line 95
    :cond_12
    sget-object v0, Lcom/tencent/msdk/stat/ReportEvent;->mMSDKVer:Ljava/lang/String;

    return-object v0
.end method

.method private static getMid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    sget-object v1, Lcom/tencent/msdk/stat/ReportEvent;->mMTAId:Ljava/lang/String;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/tencent/msdk/stat/ReportEvent;->mMTAId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 71
    :cond_12
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 72
    .local v0, "act":Landroid/app/Activity;
    if-eqz v0, :cond_26

    .line 73
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mid/api/MidService;->getMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/msdk/stat/ReportEvent;->mMTAId:Ljava/lang/String;

    .line 76
    :cond_26
    sget-object v1, Lcom/tencent/msdk/stat/ReportEvent;->mMTAId:Ljava/lang/String;

    return-object v1
.end method

.method public static getScreenResolution()Ljava/lang/String;
    .registers 4

    .prologue
    .line 80
    sget-object v2, Lcom/tencent/msdk/stat/ReportEvent;->mResolution:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 81
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 82
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_47

    .line 83
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/msdk/stat/ReportEvent;->mResolution:Ljava/lang/String;

    .line 88
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    :cond_47
    sget-object v2, Lcom/tencent/msdk/stat/ReportEvent;->mResolution:Ljava/lang/String;

    return-object v2
.end method
