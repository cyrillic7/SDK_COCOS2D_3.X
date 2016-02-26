.class public Lcom/tencent/msdk/control/SwitcherManager;
.super Ljava/lang/Object;
.source "SwitcherManager.java"


# static fields
.field private static final WG_LOCAL_LOG_REPORT:Ljava/lang/String; = "WGLocalLogReport"

.field private static final WG_PUSH_MSDK:Ljava/lang/String; = "WGPushMSDK"

.field private static volatile mInstance:Lcom/tencent/msdk/control/SwitcherManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsForeignNet:Z

.field private mSwitchJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/control/SwitcherManager;->mInstance:Lcom/tencent/msdk/control/SwitcherManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/control/SwitcherManager;->mIsForeignNet:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/control/SwitcherManager;->mSwitchJson:Lorg/json/JSONObject;

    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/control/SwitcherManager;
    .registers 2

    .prologue
    .line 27
    sget-object v0, Lcom/tencent/msdk/control/SwitcherManager;->mInstance:Lcom/tencent/msdk/control/SwitcherManager;

    if-nez v0, :cond_13

    .line 28
    const-class v1, Lcom/tencent/msdk/control/SwitcherManager;

    monitor-enter v1

    .line 29
    :try_start_7
    sget-object v0, Lcom/tencent/msdk/control/SwitcherManager;->mInstance:Lcom/tencent/msdk/control/SwitcherManager;

    if-nez v0, :cond_12

    .line 30
    new-instance v0, Lcom/tencent/msdk/control/SwitcherManager;

    invoke-direct {v0}, Lcom/tencent/msdk/control/SwitcherManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/control/SwitcherManager;->mInstance:Lcom/tencent/msdk/control/SwitcherManager;

    .line 32
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 34
    :cond_13
    sget-object v0, Lcom/tencent/msdk/control/SwitcherManager;->mInstance:Lcom/tencent/msdk/control/SwitcherManager;

    return-object v0

    .line 32
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private getSwitchData()Ljava/lang/String;
    .registers 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tencent/msdk/control/SwitcherManager;->mContext:Landroid/content/Context;

    const-string v1, "cloud_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isExisted()Z
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/msdk/control/SwitcherManager;->mContext:Landroid/content/Context;

    const-string v1, "switch_first_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isHaveFunc(Ljava/lang/String;)Z
    .registers 6
    .param p1, "func"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    :try_start_2
    iget-object v3, p0, Lcom/tencent/msdk/control/SwitcherManager;->mSwitchJson:Lorg/json/JSONObject;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/tencent/msdk/control/SwitcherManager;->mSwitchJson:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/tencent/msdk/control/SwitcherManager;->mSwitchJson:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_13} :catch_17

    move-result v3

    if-ne v1, v3, :cond_1d

    .line 112
    :goto_16
    return v1

    .line 108
    :catch_17
    move-exception v0

    .line 109
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v1, v2

    .line 110
    goto :goto_16

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1d
    move v1, v2

    .line 112
    goto :goto_16
.end method

.method private readSwitchFromPreference()V
    .registers 3

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/tencent/msdk/control/SwitcherManager;->getSwitchData()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 84
    const-string v1, "SwitcherMng readSwitchData value is null"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 88
    :goto_b
    return-void

    .line 87
    :cond_c
    invoke-direct {p0, v0}, Lcom/tencent/msdk/control/SwitcherManager;->setCloudSwitch(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private saveDefaultData()V
    .registers 3

    .prologue
    .line 52
    const-string v0, "{}"

    .line 53
    .local v0, "defaultSwitch":Ljava/lang/String;
    invoke-direct {p0}, Lcom/tencent/msdk/control/SwitcherManager;->isExisted()Z

    move-result v1

    if-nez v1, :cond_b

    .line 54
    invoke-direct {p0, v0}, Lcom/tencent/msdk/control/SwitcherManager;->saveFirstWriteData(Ljava/lang/String;)V

    .line 56
    :cond_b
    return-void
.end method

.method private saveFirstWriteData(Ljava/lang/String;)V
    .registers 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/msdk/control/SwitcherManager;->mContext:Landroid/content/Context;

    const-string v1, "switch_first_state"

    const/4 v2, 0x1

    const-string v3, "cloud_switch"

    invoke-static {v0, v1, v2, v3, p1}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->putDouble(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Lcom/tencent/msdk/control/SwitcherManager;->setCloudSwitch(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private setCloudSwitch(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 94
    if-eqz p1, :cond_9

    .line 96
    :try_start_2
    new-instance v1, Lcom/tencent/msdk/remote/api/SafeJSONObject;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/remote/api/SafeJSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/msdk/control/SwitcherManager;->mSwitchJson:Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_9} :catch_a

    .line 101
    :cond_9
    :goto_9
    return-void

    .line 97
    :catch_a
    move-exception v0

    .line 98
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9
.end method


# virtual methods
.method public currentUseMsdkPush(Ljava/lang/String;)Z
    .registers 7
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    :try_start_2
    new-instance v0, Lcom/tencent/msdk/remote/api/SafeJSONObject;

    invoke-direct {v0, p1}, Lcom/tencent/msdk/remote/api/SafeJSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "currentValue":Lorg/json/JSONObject;
    if-eqz v0, :cond_20

    const-string v4, "WGPushMSDK"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "WGPushMSDK"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_16} :catch_1a

    move-result v4

    if-ne v2, v4, :cond_20

    .line 125
    .end local v0    # "currentValue":Lorg/json/JSONObject;
    :goto_19
    return v2

    .line 121
    :catch_1a
    move-exception v1

    .line 122
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move v2, v3

    .line 123
    goto :goto_19

    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "currentValue":Lorg/json/JSONObject;
    :cond_20
    move v2, v3

    .line 125
    goto :goto_19
.end method

.method public init(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tencent/msdk/control/SwitcherManager;->mContext:Landroid/content/Context;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/control/SwitcherManager;->mIsForeignNet:Z

    .line 71
    invoke-direct {p0}, Lcom/tencent/msdk/control/SwitcherManager;->saveDefaultData()V

    .line 72
    invoke-direct {p0}, Lcom/tencent/msdk/control/SwitcherManager;->readSwitchFromPreference()V

    .line 75
    return-void
.end method

.method public isUseLocalLogReport()Z
    .registers 2

    .prologue
    .line 47
    const-string v0, "WGLocalLogReport"

    invoke-direct {p0, v0}, Lcom/tencent/msdk/control/SwitcherManager;->isHaveFunc(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUseMsdkPush()Z
    .registers 2

    .prologue
    .line 38
    const-string v0, "WGPushMSDK"

    invoke-direct {p0, v0}, Lcom/tencent/msdk/control/SwitcherManager;->isHaveFunc(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setIsForeignUser(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/tencent/msdk/control/SwitcherManager;->mIsForeignNet:Z

    .line 79
    return-void
.end method

.method public updateSwitchData(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/tencent/msdk/control/SwitcherManager;->isUseMsdkPush()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/tencent/msdk/control/SwitcherManager;->currentUseMsdkPush(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 137
    :cond_c
    iget-object v0, p0, Lcom/tencent/msdk/control/SwitcherManager;->mContext:Landroid/content/Context;

    const-string v1, "cloud_switch"

    invoke-static {v0, v1, p1}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/tencent/msdk/control/SwitcherManager;->setCloudSwitch(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msdkpush:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/msdk/control/SwitcherManager;->isUseMsdkPush()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localreport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/msdk/control/SwitcherManager;->isUseLocalLogReport()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsForeignNet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/msdk/control/SwitcherManager;->mIsForeignNet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 140
    return-void
.end method
