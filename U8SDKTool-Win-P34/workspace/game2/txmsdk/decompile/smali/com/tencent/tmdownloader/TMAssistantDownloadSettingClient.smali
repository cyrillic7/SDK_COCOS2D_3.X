.class public Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;
.super Lcom/tencent/tmassistant/common/b;
.source "ProGuard"


# static fields
.field protected static final DOWNDLOADSDKSERVICENAME:Ljava/lang/String; = "com.tencent.tmdownloader.TMAssistantDownloadService"

.field protected static final TAG:Ljava/lang/String; = "TMAssistantDownloadSettingClient"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 35
    const-string v0, "com.tencent.tmdownloader.TMAssistantDownloadService"

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/tmassistant/common/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected getBindServiceIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;->mDwonloadServiceName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    return-object v0
.end method

.method public declared-synchronized getVersion()I
    .registers 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/tencent/tmassistant/common/b;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistant/aidl/d;

    .line 47
    if-eqz v0, :cond_f

    .line 49
    invoke-interface {v0}, Lcom/tencent/tmassistant/aidl/d;->a()I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    move-result v0

    .line 53
    :goto_d
    monitor-exit p0

    return v0

    .line 51
    :cond_f
    :try_start_f
    invoke-super {p0}, Lcom/tencent/tmassistant/common/b;->initTMAssistantDownloadSDK()Z
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_14

    .line 53
    const/4 v0, 0x0

    goto :goto_d

    .line 46
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAllDownloadFinished()Z
    .registers 5

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    const-string v0, "TMAssistantDownloadSettingClient"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const/4 v1, 0x0

    .line 120
    invoke-super {p0}, Lcom/tencent/tmassistant/common/b;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistant/aidl/d;

    .line 121
    if-eqz v0, :cond_3d

    .line 123
    invoke-interface {v0}, Lcom/tencent/tmassistant/aidl/d;->b()Z

    move-result v0

    .line 124
    const-string v1, "TMAssistantDownloadSettingClient"

    const-string v2, "isAllDownloadFinished"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_1c
    const-string v1, "TMAssistantDownloadSettingClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllDownloadFinished ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v1, "TMAssistantDownloadSettingClient"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_49

    .line 131
    monitor-exit p0

    return v0

    .line 126
    :cond_3d
    :try_start_3d
    invoke-super {p0}, Lcom/tencent/tmassistant/common/b;->initTMAssistantDownloadSDK()Z

    .line 127
    const-string v0, "TMAssistantDownloadSettingClient"

    const-string v2, "initTMAssistantDownloadSDK"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_49

    move v0, v1

    goto :goto_1c

    .line 118
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDownloadSDKServiceInvalid()V
    .registers 1

    .prologue
    .line 138
    return-void
.end method

.method protected registerServiceCallback()V
    .registers 4

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/tencent/tmassistant/aidl/d;

    iget-object v2, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;->mClientKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;->mServiceCallback:Landroid/os/IInterface;

    check-cast v1, Lcom/tencent/tmassistant/aidl/a;

    invoke-interface {v0, v2, v1}, Lcom/tencent/tmassistant/aidl/d;->a(Ljava/lang/String;Lcom/tencent/tmassistant/aidl/a;)V

    .line 150
    return-void
.end method

.method public declared-synchronized setDownloadSDKMaxTaskNum(I)V
    .registers 5

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    const-string v0, "TMAssistantDownloadSettingClient"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "TMAssistantDownloadSettingClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxTaskNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    if-lt p1, v0, :cond_27

    const/16 v0, 0xa

    if-le p1, v0, :cond_37

    .line 94
    :cond_27
    const-string v0, "TMAssistantDownloadSettingClient"

    const-string v1, "maxTaskNum < 1 || maxTaskNum > 10"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "TMAssistantDownloadSettingClient"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_51

    .line 109
    :goto_35
    monitor-exit p0

    return-void

    .line 99
    :cond_37
    :try_start_37
    invoke-super {p0}, Lcom/tencent/tmassistant/common/b;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistant/aidl/d;

    .line 100
    if-eqz v0, :cond_54

    .line 102
    invoke-interface {v0, p1}, Lcom/tencent/tmassistant/aidl/d;->a(I)V

    .line 103
    const-string v0, "TMAssistantDownloadSettingClient"

    const-string v1, "setServiceSetingMaxTaskNum"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_49
    const-string v0, "TMAssistantDownloadSettingClient"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_37 .. :try_end_50} :catchall_51

    goto :goto_35

    .line 88
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :cond_54
    :try_start_54
    invoke-super {p0}, Lcom/tencent/tmassistant/common/b;->initTMAssistantDownloadSDK()Z

    .line 106
    const-string v0, "TMAssistantDownloadSettingClient"

    const-string v1, "initTMAssistantDownloadSDK"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_51

    goto :goto_49
.end method

.method public declared-synchronized setDownloadSDKWifiOnly(Z)V
    .registers 5

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    const-string v0, "TMAssistantDownloadSettingClient"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "TMAssistantDownloadSettingClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDownloadWifiOnly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-super {p0}, Lcom/tencent/tmassistant/common/b;->getServiceInterface()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistant/aidl/d;

    .line 69
    if-eqz v0, :cond_3b

    .line 71
    invoke-interface {v0, p1}, Lcom/tencent/tmassistant/aidl/d;->b(Z)V

    .line 72
    const-string v0, "TMAssistantDownloadSettingClient"

    const-string v1, "setDownloadWifiOnly"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_32
    const-string v0, "TMAssistantDownloadSettingClient"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_46

    .line 78
    monitor-exit p0

    return-void

    .line 74
    :cond_3b
    :try_start_3b
    invoke-super {p0}, Lcom/tencent/tmassistant/common/b;->initTMAssistantDownloadSDK()Z

    .line 75
    const-string v0, "TMAssistantDownloadSettingClient"

    const-string v1, "initTMAssistantDownloadSDK"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_46

    goto :goto_32

    .line 66
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected stubAsInterface(Landroid/os/IBinder;)V
    .registers 3

    .prologue
    .line 143
    invoke-static {p1}, Lcom/tencent/tmassistant/aidl/e;->a(Landroid/os/IBinder;)Lcom/tencent/tmassistant/aidl/d;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;->mServiceInterface:Landroid/os/IInterface;

    .line 144
    return-void
.end method

.method protected unRegisterServiceCallback()V
    .registers 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/tencent/tmassistant/aidl/d;

    iget-object v2, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;->mClientKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;->mServiceCallback:Landroid/os/IInterface;

    check-cast v1, Lcom/tencent/tmassistant/aidl/a;

    invoke-interface {v0, v2, v1}, Lcom/tencent/tmassistant/aidl/d;->b(Ljava/lang/String;Lcom/tencent/tmassistant/aidl/a;)V

    .line 161
    return-void
.end method
