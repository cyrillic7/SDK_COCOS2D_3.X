.class public Lcom/tencent/tmdownloader/TMAssistantDownloadManager;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TMAssistantDownloadManager"

.field protected static mInstance:Lcom/tencent/tmdownloader/TMAssistantDownloadManager;

.field protected static mSDKClientList:Ljava/util/ArrayList;

.field protected static mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 23
    sput-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mInstance:Lcom/tencent/tmdownloader/TMAssistantDownloadManager;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKClientList:Ljava/util/ArrayList;

    .line 31
    sput-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mContext:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static declared-synchronized closeAllService(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 188
    const-class v1, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;

    monitor-enter v1

    :try_start_3
    const-string v0, "TMAssistantDownloadManager"

    const-string v2, "enter"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-nez p0, :cond_1c

    .line 191
    const-string v0, "TMAssistantDownloadManager"

    const-string v2, "you must input an application or activity context!"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "TMAssistantDownloadManager"

    const-string v2, "exit"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2f

    .line 242
    :goto_1a
    monitor-exit v1

    return-void

    .line 196
    :cond_1c
    :try_start_1c
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mInstance:Lcom/tencent/tmdownloader/TMAssistantDownloadManager;

    if-nez v0, :cond_32

    .line 197
    const-string v0, "TMAssistantDownloadManager"

    const-string v2, "manager minstance == null"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "TMAssistantDownloadManager"

    const-string v2, "exit"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_2f

    goto :goto_1a

    .line 188
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 202
    :cond_32
    :try_start_32
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKClientList:Ljava/util/ArrayList;

    if-eqz v0, :cond_62

    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_62

    .line 203
    const-string v0, "TMAssistantDownloadManager"

    const-string v2, "mSDKClientList != null && mSDKClientList.size() > 0"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 205
    :cond_4b
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 207
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    .line 208
    if-eqz v0, :cond_4b

    .line 210
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->unInitTMAssistantDownloadSDK()V

    goto :goto_4b

    .line 215
    :cond_5d
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 218
    :cond_62
    invoke-static {}, Lcom/tencent/tmdownloader/internal/downloadclient/MobileQQCloseServiceReceiver;->a()Lcom/tencent/tmdownloader/internal/downloadclient/MobileQQCloseServiceReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tmdownloader/internal/downloadclient/MobileQQCloseServiceReceiver;->b(Landroid/content/Context;)V

    .line 221
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;

    if-eqz v0, :cond_75

    .line 223
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;->unInitTMAssistantDownloadSDK()V

    .line 224
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;

    .line 240
    :cond_75
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mInstance:Lcom/tencent/tmdownloader/TMAssistantDownloadManager;

    .line 241
    const-string v0, "TMAssistantDownloadManager"

    const-string v2, "exit"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_32 .. :try_end_7f} :catchall_2f

    goto :goto_1a
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tencent/tmdownloader/TMAssistantDownloadManager;
    .registers 3

    .prologue
    .line 49
    const-class v1, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mInstance:Lcom/tencent/tmdownloader/TMAssistantDownloadManager;

    if-nez v0, :cond_15

    .line 51
    new-instance v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;

    invoke-direct {v0, p0}, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mInstance:Lcom/tencent/tmdownloader/TMAssistantDownloadManager;

    .line 54
    invoke-static {}, Lcom/tencent/tmdownloader/internal/downloadclient/MobileQQCloseServiceReceiver;->a()Lcom/tencent/tmdownloader/internal/downloadclient/MobileQQCloseServiceReceiver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/tmdownloader/internal/downloadclient/MobileQQCloseServiceReceiver;->a(Landroid/content/Context;)V

    .line 56
    :cond_15
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mInstance:Lcom/tencent/tmdownloader/TMAssistantDownloadManager;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getDownloadSDKClient(Ljava/lang/String;)Lcom/tencent/tmdownloader/TMAssistantDownloadClient;
    .registers 6

    .prologue
    .line 70
    monitor-enter p0

    :try_start_1
    const-string v0, "TMAssistantDownloadManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_21

    .line 73
    :cond_10
    const-string v0, "TMAssistantDownloadManager"

    const-string v1, "clientKey == null || clientKey.length() <= 0"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "TMAssistantDownloadManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_7b

    .line 75
    const/4 v0, 0x0

    .line 97
    :goto_1f
    monitor-exit p0

    return-object v0

    .line 77
    :cond_21
    :try_start_21
    const-string v0, "TMAssistantDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    .line 81
    iget-object v2, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->mClientKey:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3f

    .line 83
    const-string v1, "TMAssistantDownloadManager"

    const-string v2, "SDKClient exists"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "TMAssistantDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnValue(clientItem): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "TMAssistantDownloadManager"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_21 .. :try_end_7a} :catchall_7b

    goto :goto_1f

    .line 70
    :catchall_7b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :cond_7e
    :try_start_7e
    new-instance v0, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    iget-object v1, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->initTMAssistantDownloadSDK()Z

    .line 93
    sget-object v1, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v1, "TMAssistantDownloadManager"

    const-string v2, "add new SDKClient"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "TMAssistantDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnValue(client): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "TMAssistantDownloadManager"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_7e .. :try_end_b3} :catchall_7b

    goto/16 :goto_1f
.end method

.method public declared-synchronized getDownloadSDKSettingClient()Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;
    .registers 4

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    const-string v0, "TMAssistantDownloadManager"

    const-string v1, "enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;

    if-nez v0, :cond_23

    .line 109
    const-string v0, "TMAssistantDownloadManager"

    const-string v1, "mSDKSettingClient is null create a new for TMAssistantDownloadSettingClient"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;

    iget-object v1, p0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mContext:Landroid/content/Context;

    const-string v2, "TMAssistantDownloadSDKManager"

    invoke-direct {v0, v1, v2}, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;

    .line 111
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;->initTMAssistantDownloadSDK()Z

    .line 113
    :cond_23
    const-string v0, "TMAssistantDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returnValue(settingclient): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "TMAssistantDownloadManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    monitor-exit p0

    return-object v0

    .line 106
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseDownloadSDKClient(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 127
    monitor-enter p0

    :try_start_2
    const-string v0, "TMAssistantDownloadManager"

    const-string v2, "enter"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "TMAssistantDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v2, 0x0

    .line 131
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKClientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 132
    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 134
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;

    .line 135
    if-eqz v0, :cond_28

    iget-object v4, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->mClientKey:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v1, :cond_28

    .line 137
    invoke-virtual {v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadClient;->unInitTMAssistantDownloadSDK()V

    .line 138
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 140
    const/4 v0, 0x1

    .line 141
    const-string v2, "TMAssistantDownloadManager"

    const-string v3, "unInitTMAssistantDownloadSDK for TMAssistantDownloadClient"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "TMAssistantDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "TMAssistantDownloadManager"

    const-string v2, "exit"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_2 .. :try_end_6b} :catchall_e6

    move v0, v1

    .line 179
    :goto_6c
    monitor-exit p0

    return v0

    .line 149
    :cond_6e
    :try_start_6e
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;

    if-eqz v0, :cond_ad

    .line 151
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;

    iget-object v0, v0, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;->mClientKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_ad

    .line 153
    sget-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;

    invoke-virtual {v0}, Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;->unInitTMAssistantDownloadSDK()V

    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/TMAssistantDownloadManager;->mSDKSettingClient:Lcom/tencent/tmdownloader/TMAssistantDownloadSettingClient;

    .line 155
    const/4 v0, 0x1

    .line 156
    const-string v2, "TMAssistantDownloadManager"

    const-string v3, "unInitTMAssistantDownloadSDK for TMAssistantDownloadSettingClient"

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "TMAssistantDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "TMAssistantDownloadManager"

    const-string v2, "exit"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 159
    goto :goto_6c

    .line 176
    :cond_ad
    const-string v0, "TMAssistantDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no matched SDKClient for clientKey: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "TMAssistantDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "returnValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "TMAssistantDownloadManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_6e .. :try_end_e4} :catchall_e6

    move v0, v2

    .line 179
    goto :goto_6c

    .line 127
    :catchall_e6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
