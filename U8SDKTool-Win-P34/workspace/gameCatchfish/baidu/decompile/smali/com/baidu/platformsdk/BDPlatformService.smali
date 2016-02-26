.class public final Lcom/baidu/platformsdk/BDPlatformService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 47
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/jz;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 48
    const-class v0, Lcom/baidu/platformsdk/BDPlatformService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application background, quit"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/baidu/platformsdk/BDPlatformService;->stopSelf()V

    .line 85
    :goto_14
    return-void

    .line 54
    :cond_15
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kd;->f()Lcom/baidu/bdgame/sdk/obf/kf;

    move-result-object v0

    .line 55
    if-nez v0, :cond_23

    .line 57
    invoke-virtual {p0}, Lcom/baidu/platformsdk/BDPlatformService;->stopSelf()V

    goto :goto_14

    .line 60
    :cond_23
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ld;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 62
    invoke-virtual {p0}, Lcom/baidu/platformsdk/BDPlatformService;->stopSelf()V

    goto :goto_14

    .line 65
    :cond_2d
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->e()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jy;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/jy;

    move-result-object v0

    .line 67
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 68
    new-instance v2, Lcom/baidu/platformsdk/BDPlatformService$1;

    invoke-direct {v2, p0}, Lcom/baidu/platformsdk/BDPlatformService$1;-><init>(Lcom/baidu/platformsdk/BDPlatformService;)V

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/p;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_14
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 91
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "com.baidu.platformsdk.BDPlatformService.tick"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 37
    invoke-direct {p0}, Lcom/baidu/platformsdk/BDPlatformService;->a()V

    .line 42
    :goto_f
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 40
    :cond_14
    invoke-virtual {p0}, Lcom/baidu/platformsdk/BDPlatformService;->stopSelf()V

    goto :goto_f
.end method
