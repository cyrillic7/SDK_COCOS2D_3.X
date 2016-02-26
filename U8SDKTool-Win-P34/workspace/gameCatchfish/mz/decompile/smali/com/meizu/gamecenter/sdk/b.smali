.class public final Lcom/meizu/gamecenter/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/IInterface;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/meizu/gamecenter/sdk/c;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/gamecenter/sdk/c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/meizu/gamecenter/sdk/b;->a:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/meizu/gamecenter/sdk/b;->e:Lcom/meizu/gamecenter/sdk/c;

    .line 29
    iput-object p3, p0, Lcom/meizu/gamecenter/sdk/b;->c:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/meizu/gamecenter/sdk/b;->d:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/os/IInterface;
    .registers 4

    .prologue
    .line 34
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/b;->b:Landroid/os/IInterface;

    if-nez v0, :cond_29

    .line 35
    invoke-virtual {p0}, Lcom/meizu/gamecenter/sdk/b;->c()Z

    move-result v0

    if-nez v0, :cond_24

    .line 36
    const-string v0, "ServiceBindHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cant find service for action : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/meizu/gamecenter/sdk/b;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_31

    .line 37
    const/4 v0, 0x0

    .line 45
    :goto_22
    monitor-exit p0

    return-object v0

    .line 40
    :cond_24
    const-wide/16 v0, 0x7d0

    :try_start_26
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2c
    .catchall {:try_start_26 .. :try_end_29} :catchall_31

    .line 45
    :cond_29
    :goto_29
    :try_start_29
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/b;->b:Landroid/os/IInterface;

    goto :goto_22

    .line 42
    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_31

    goto :goto_29

    .line 34
    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/b;->b:Landroid/os/IInterface;

    if-eqz v0, :cond_c

    .line 50
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/b;->b:Landroid/os/IInterface;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 56
    :cond_c
    :goto_c
    return-void

    .line 54
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public final declared-synchronized c()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 58
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/meizu/gamecenter/sdk/b;->f:Z

    if-nez v1, :cond_21

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/meizu/gamecenter/sdk/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/meizu/gamecenter/sdk/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Lcom/meizu/gamecenter/sdk/b;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 63
    if-eqz v0, :cond_21

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/gamecenter/sdk/b;->f:Z
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_23

    .line 68
    :cond_21
    monitor-exit p0

    return v0

    .line 58
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 74
    const-string v0, "ServiceBindHelper"

    const-string v1, "get service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/gamecenter/sdk/b;->f:Z

    .line 76
    iget-object v0, p0, Lcom/meizu/gamecenter/sdk/b;->e:Lcom/meizu/gamecenter/sdk/c;

    invoke-interface {v0, p2}, Lcom/meizu/gamecenter/sdk/c;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/b;->b:Landroid/os/IInterface;

    .line 77
    monitor-enter p0

    .line 78
    :try_start_15
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 77
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 84
    const-string v0, "ServiceBindHelper"

    const-string v1, "lost service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/gamecenter/sdk/b;->f:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/gamecenter/sdk/b;->b:Landroid/os/IInterface;

    .line 87
    return-void
.end method
