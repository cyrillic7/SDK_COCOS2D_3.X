.class public abstract Lcom/tencent/tmassistant/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field protected c:Landroid/content/Context;

.field public d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Landroid/os/IInterface;

.field protected h:Landroid/os/IInterface;

.field protected final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/tencent/tmassistant/d;->e:Ljava/lang/String;

    .line 22
    const-string v0, "INIT"

    iput-object v0, p0, Lcom/tencent/tmassistant/d;->f:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/tencent/tmassistant/d;->g:Landroid/os/IInterface;

    .line 32
    iput-object v1, p0, Lcom/tencent/tmassistant/d;->h:Landroid/os/IInterface;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistant/d;->i:Ljava/lang/Object;

    .line 49
    iput-object p1, p0, Lcom/tencent/tmassistant/d;->c:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/tencent/tmassistant/d;->d:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/tencent/tmassistant/d;->e:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Landroid/os/IBinder;)V
.end method

.method protected abstract b()V
.end method

.method protected abstract c()Landroid/content/Intent;
.end method

.method protected abstract d()V
.end method

.method public declared-synchronized e()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 116
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/tencent/tmassistant/d;->f:Ljava/lang/String;

    const-string v2, "FINISH"
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_4f

    if-ne v1, v2, :cond_a

    .line 150
    :cond_8
    :goto_8
    monitor-exit p0

    return v0

    .line 120
    :cond_a
    :try_start_a
    const-string v1, "TMAssistantDownloadSDKClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initTMAssistantDownloadSDK,clientKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmassistant/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mServiceInterface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmassistant/d;->g:Landroid/os/IInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",threadId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "INIT"

    iput-object v1, p0, Lcom/tencent/tmassistant/d;->f:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/tencent/tmassistant/d;->g:Landroid/os/IInterface;

    if-eqz v1, :cond_52

    .line 131
    const-string v1, "FINISH"

    iput-object v1, p0, Lcom/tencent/tmassistant/d;->f:Ljava/lang/String;
    :try_end_4e
    .catchall {:try_start_a .. :try_end_4e} :catchall_4f

    goto :goto_8

    .line 116
    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :cond_52
    const/4 v0, 0x0

    .line 136
    :try_start_53
    iget-object v1, p0, Lcom/tencent/tmassistant/d;->c:Landroid/content/Context;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/tencent/tmassistant/d;->e:Ljava/lang/String;
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_4f

    if-eqz v1, :cond_8

    .line 141
    :try_start_5b
    invoke-virtual {p0}, Lcom/tencent/tmassistant/d;->c()Landroid/content/Intent;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/tencent/tmassistant/d;->c:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_65} :catch_7f
    .catchall {:try_start_5b .. :try_end_65} :catchall_4f

    move-result v0

    .line 148
    :goto_66
    :try_start_66
    const-string v1, "TMAssistantDownloadSDKClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initTMAssistantDownloadSDK bindResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 144
    :catch_7f
    move-exception v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_66 .. :try_end_83} :catchall_4f

    goto :goto_66
.end method

.method public declared-synchronized f()V
    .registers 5

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    const-string v0, "TMAssistantDownloadSDKClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unInitTMAssistantDownloadSDK,clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistant/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mServiceInterface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistant/d;->g:Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/tencent/tmassistant/d;->g:Landroid/os/IInterface;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/tencent/tmassistant/d;->h:Landroid/os/IInterface;
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_61

    if-eqz v0, :cond_44

    .line 169
    :try_start_41
    invoke-virtual {p0}, Lcom/tencent/tmassistant/d;->d()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_5f
    .catchall {:try_start_41 .. :try_end_44} :catchall_61

    .line 177
    :cond_44
    :goto_44
    :try_start_44
    iget-object v0, p0, Lcom/tencent/tmassistant/d;->c:Landroid/content/Context;

    if-eqz v0, :cond_53

    if-eqz p0, :cond_53

    iget-object v0, p0, Lcom/tencent/tmassistant/d;->g:Landroid/os/IInterface;

    if-eqz v0, :cond_53

    .line 179
    iget-object v0, p0, Lcom/tencent/tmassistant/d;->c:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 181
    :cond_53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistant/d;->g:Landroid/os/IInterface;

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistant/d;->h:Landroid/os/IInterface;

    .line 186
    const-string v0, "INIT"

    iput-object v0, p0, Lcom/tencent/tmassistant/d;->f:Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_44 .. :try_end_5d} :catchall_61

    .line 187
    monitor-exit p0

    return-void

    .line 171
    :catch_5f
    move-exception v0

    goto :goto_44

    .line 158
    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected g()Landroid/os/IInterface;
    .registers 5

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tencent/tmassistant/d;->c:Landroid/content/Context;

    if-eqz v0, :cond_26

    .line 199
    iget-object v0, p0, Lcom/tencent/tmassistant/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    .line 202
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "TMAssistantDownloadSDKClient must be called in other Thread(no MainThread)"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_26
    iget-object v0, p0, Lcom/tencent/tmassistant/d;->g:Landroid/os/IInterface;

    if-nez v0, :cond_3c

    .line 209
    invoke-virtual {p0}, Lcom/tencent/tmassistant/d;->e()Z

    .line 210
    const-string v0, "CONNECTING"

    iput-object v0, p0, Lcom/tencent/tmassistant/d;->f:Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/tencent/tmassistant/d;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_34
    iget-object v0, p0, Lcom/tencent/tmassistant/d;->i:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 214
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_48

    .line 217
    :cond_3c
    iget-object v0, p0, Lcom/tencent/tmassistant/d;->g:Landroid/os/IInterface;

    if-nez v0, :cond_4b

    .line 219
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "TMAssistantDownloadSDKClient ServiceInterface is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0

    .line 221
    :cond_4b
    iget-object v0, p0, Lcom/tencent/tmassistant/d;->g:Landroid/os/IInterface;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    .prologue
    .line 78
    invoke-virtual {p0, p2}, Lcom/tencent/tmassistant/d;->a(Landroid/os/IBinder;)V

    .line 79
    const-string v0, "FINISH"

    iput-object v0, p0, Lcom/tencent/tmassistant/d;->f:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/tencent/tmassistant/d;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_a
    iget-object v0, p0, Lcom/tencent/tmassistant/d;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_5e

    .line 86
    const-string v0, "TMAssistantDownloadSDKClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected,clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistant/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mServiceInterface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistant/d;->g:Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",IBinder:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",threadId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :try_start_52
    iget-object v0, p0, Lcom/tencent/tmassistant/d;->g:Landroid/os/IInterface;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/tencent/tmassistant/d;->h:Landroid/os/IInterface;

    if-eqz v0, :cond_5d

    .line 100
    invoke-virtual {p0}, Lcom/tencent/tmassistant/d;->b()V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5d} :catch_61

    .line 107
    :cond_5d
    :goto_5d
    return-void

    .line 84
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0

    .line 103
    :catch_61
    move-exception v0

    .line 105
    invoke-virtual {p0}, Lcom/tencent/tmassistant/d;->a()V

    goto :goto_5d
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .prologue
    .line 58
    const-string v0, "TMAssistantDownloadSDKClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected,clientKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tmassistant/d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    monitor-enter p0

    .line 63
    const/4 v0, 0x0

    :try_start_1c
    iput-object v0, p0, Lcom/tencent/tmassistant/d;->g:Landroid/os/IInterface;

    .line 64
    const-string v0, "INIT"

    iput-object v0, p0, Lcom/tencent/tmassistant/d;->f:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/tencent/tmassistant/d;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_33

    .line 68
    :try_start_25
    iget-object v0, p0, Lcom/tencent/tmassistant/d;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 69
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_30

    .line 70
    :try_start_2b
    invoke-virtual {p0}, Lcom/tencent/tmassistant/d;->a()V

    .line 72
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_33

    .line 73
    return-void

    .line 69
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw v0

    .line 72
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_33

    throw v0
.end method
