.class public Lcom/tencent/msdk/stat/MsdkStat;
.super Ljava/lang/Object;
.source "MsdkStat.java"


# static fields
.field private static final LOGIN_THRESHOLD_IN_SECOND:J = 0x258L

.field private static final PAUSE_TIME_KEY:Ljava/lang/String; = "msdk_pause_time"

.field private static final RESUME_TIME_KEY:Ljava/lang/String; = "msdk_resume_time"

.field public static final gDefault:Lcom/tencent/msdk/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/msdk/Singleton",
            "<",
            "Lcom/tencent/msdk/stat/MsdkStat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHaveReported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lcom/tencent/msdk/stat/MsdkStat$1;

    invoke-direct {v0}, Lcom/tencent/msdk/stat/MsdkStat$1;-><init>()V

    sput-object v0, Lcom/tencent/msdk/stat/MsdkStat;->gDefault:Lcom/tencent/msdk/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/stat/MsdkStat;->mHaveReported:Z

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/msdk/stat/MsdkStat$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/tencent/msdk/stat/MsdkStat$1;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tencent/msdk/stat/MsdkStat;-><init>()V

    return-void
.end method


# virtual methods
.method public addLoginLog(Lorg/json/JSONObject;Z)V
    .registers 7
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "forceReport"    # Z

    .prologue
    .line 89
    if-nez p1, :cond_8

    .line 90
    const-string v2, "param for MsdkStat.addLoginLog can not be null"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 121
    :goto_7
    return-void

    .line 95
    :cond_8
    const-string v2, "called"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/tencent/msdk/stat/MsdkStat;->needReportLoginInfo()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 99
    :try_start_13
    new-instance v2, Lcom/tencent/msdk/stat/DeviceInfo;

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/msdk/stat/DeviceInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/tencent/msdk/stat/DeviceInfo;->getAllDeviceInfo()Lorg/json/JSONObject;

    move-result-object v0

    .line 101
    .local v0, "deviceInfoJson":Lorg/json/JSONObject;
    if-nez v0, :cond_2b

    .line 102
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "deviceInfoJson":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 104
    .restart local v0    # "deviceInfoJson":Lorg/json/JSONObject;
    :cond_2b
    if-eqz p2, :cond_53

    .line 105
    const-string v2, "isLogin"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 114
    :goto_33
    const-string v2, "deviceInfo"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tencent/msdk/stat/MsdkStat;->setmHaveReported(Z)V
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_3c} :catch_6c

    .line 120
    .end local v0    # "deviceInfoJson":Lorg/json/JSONObject;
    :cond_3c
    :goto_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceinfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_7

    .line 107
    .restart local v0    # "deviceInfoJson":Lorg/json/JSONObject;
    :cond_53
    :try_start_53
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/WeGame;->getFirstStartFlag()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 108
    const-string v2, "isLogin"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 109
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/msdk/WeGame;->setFirstStartFlag(Z)V
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_6b} :catch_6c

    goto :goto_33

    .line 116
    .end local v0    # "deviceInfoJson":Lorg/json/JSONObject;
    :catch_6c
    move-exception v1

    .line 117
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3c

    .line 111
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "deviceInfoJson":Lorg/json/JSONObject;
    :cond_71
    :try_start_71
    const-string v2, "isLogin"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_71 .. :try_end_77} :catch_6c

    goto :goto_33
.end method

.method public clearReportStatus()V
    .registers 3

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/msdk/stat/MsdkStat;->setmHaveReported(Z)V

    .line 128
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "msdk_pause_time"

    invoke-static {v0, v1}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->cleanKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public getResumedTime()J
    .registers 5

    .prologue
    .line 48
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "msdk_resume_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public ismHaveReported()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/tencent/msdk/stat/MsdkStat;->mHaveReported:Z

    return v0
.end method

.method public needReportLoginInfo()Z
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .registers 7

    .prologue
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 34
    .local v0, "currentTimeInSecond":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseed on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "msdk_pause_time"

    invoke-static {v2, v3, v0, v1}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 37
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 42
    .local v0, "currentTimeInSecond":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumed on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "msdk_resume_time"

    invoke-static {v2, v3, v0, v1}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 45
    return-void
.end method

.method public setmHaveReported(Z)V
    .registers 2
    .param p1, "mHaveReported"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/tencent/msdk/stat/MsdkStat;->mHaveReported:Z

    .line 137
    return-void
.end method
