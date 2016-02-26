.class public Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;
.super Ljava/lang/Object;
.source "SecurityClientMobile.java"


# static fields
.field private static isDebug:Z

.field private static isError:Z

.field private static workThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->isError:Z

    .line 25
    sput-boolean v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized GetApdid(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v2, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;

    monitor-enter v2

    :try_start_3
    new-instance v0, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;-><init>(Landroid/content/Context;)V

    .line 20
    .local v0, "mg":Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;
    invoke-virtual {v0, p1}, Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;->GetApDid(Ljava/util/Map;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 19
    .end local v0    # "mg":Lcom/alipay/mobilesecuritysdk/deviceID/DeviceIdManager;
    :catchall_e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->isDebug:Z

    return v0
.end method

.method public static isDebug()Z
    .registers 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->isDebug:Z

    return v0
.end method

.method public static setDebug(Z)V
    .registers 1
    .param p0, "isDebug"    # Z

    .prologue
    .line 111
    sput-boolean p0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->isDebug:Z

    .line 112
    return-void
.end method

.method public static setError(Z)V
    .registers 1
    .param p0, "isError"    # Z

    .prologue
    .line 107
    sput-boolean p0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->isError:Z

    .line 108
    return-void
.end method

.method public static declared-synchronized start(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "isCollected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "tid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->isDebug:Z

    if-eqz v0, :cond_e

    .line 33
    const-string v0, "ALP"

    const-string v2, "start have been called."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_e
    if-nez p0, :cond_1d

    .line 37
    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->isDebug:Z

    if-eqz v0, :cond_1b

    .line 38
    const-string v0, "ALP"

    const-string v2, "Context is null."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1b} :catch_35
    .catchall {:try_start_3 .. :try_end_1b} :catchall_4a

    .line 87
    :cond_1b
    :goto_1b
    monitor-exit v1

    return-void

    .line 44
    :cond_1d
    :try_start_1d
    sget-object v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->workThread:Ljava/lang/Thread;

    if-eqz v0, :cond_37

    sget-object v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->workThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 46
    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->isDebug:Z

    if-eqz v0, :cond_1b

    .line 47
    const-string v0, "ALP"

    .line 48
    const-string v2, "mainThread is working, quit."

    .line 47
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 84
    :catch_35
    move-exception v0

    goto :goto_1b

    .line 54
    :cond_37
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->workThread:Ljava/lang/Thread;

    .line 57
    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->isError:Z

    if-eqz v0, :cond_4d

    .line 58
    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->isDebug:Z

    if-eqz v0, :cond_1b

    .line 59
    const-string v0, "ALP"

    const-string v2, "some error happend, quit."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_49} :catch_35
    .catchall {:try_start_1d .. :try_end_49} :catchall_4a

    goto :goto_1b

    .line 32
    :catchall_4a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 65
    :cond_4d
    :try_start_4d
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile$1;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->workThread:Ljava/lang/Thread;

    .line 82
    sget-object v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->workThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_5e} :catch_35
    .catchall {:try_start_4d .. :try_end_5e} :catchall_4a

    goto :goto_1b
.end method

.method public static stop()V
    .registers 2

    .prologue
    .line 91
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->isDebug:Z

    if-eqz v0, :cond_b

    .line 92
    const-string v0, "ALP"

    const-string v1, "stop have been called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_b
    sget-object v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->workThread:Ljava/lang/Thread;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->workThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_18

    .line 104
    :cond_17
    :goto_17
    return-void

    .line 99
    :cond_18
    sget-object v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->workThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->workThread:Ljava/lang/Thread;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_17

    .line 101
    :catch_21
    move-exception v0

    goto :goto_17
.end method
