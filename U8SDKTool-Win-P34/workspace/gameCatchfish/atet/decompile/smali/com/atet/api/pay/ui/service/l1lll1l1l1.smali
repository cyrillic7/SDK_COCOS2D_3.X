.class public final Lcom/atet/api/pay/ui/service/l1lll1l1l1;
.super Ljava/lang/Object;


# instance fields
.field private l11111lll1:Lcom/atet/api/pay/ui/service/IRemoteServiceCallback$Stub;

.field private l111ll1111:Landroid/content/DialogInterface$OnKeyListener;

.field private l11l11l1l1:Landroid/content/ServiceConnection;

.field private l1l111lll1:Landroid/app/Activity;

.field private l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

.field private lll11111l1:Z

.field private lll1l111ll:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll11111l1:Z

    new-instance v0, Lcom/atet/api/pay/ui/service/lll1l111ll;

    invoke-direct {v0, p0}, Lcom/atet/api/pay/ui/service/lll1l111ll;-><init>(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)V

    iput-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l11l11l1l1:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/atet/api/pay/ui/service/PayHelper$2;

    invoke-direct {v0, p0}, Lcom/atet/api/pay/ui/service/PayHelper$2;-><init>(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)V

    iput-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l11111lll1:Lcom/atet/api/pay/ui/service/IRemoteServiceCallback$Stub;

    new-instance v0, Lcom/atet/api/pay/ui/service/lll11111l1;

    invoke-direct {v0, p0}, Lcom/atet/api/pay/ui/service/lll11111l1;-><init>(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)V

    iput-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l111ll1111:Landroid/content/DialogInterface$OnKeyListener;

    iput-object p1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1:Landroid/app/Activity;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll1l111ll:Ljava/lang/Object;

    return-void
.end method

.method private static l1l111lll1(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_13
.end method

.method static synthetic l1l111lll1(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll1l111ll:Ljava/lang/Object;

    return-object v0
.end method

.method private l1l111lll1()V
    .registers 3

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1:Landroid/app/Activity;

    new-instance v1, Lcom/atet/api/pay/ui/service/l11l11l1l1;

    invoke-direct {v1, p0}, Lcom/atet/api/pay/ui/service/l11l11l1l1;-><init>(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic l1l111lll1(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method static synthetic l1l111lll1(Lcom/atet/api/pay/ui/service/l1lll1l1l1;Lcom/atet/api/pay/ui/service/IAtetPayService;)V
    .registers 2

    iput-object p1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

    return-void
.end method

.method static synthetic l1lll1l1l1(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic lll1l111ll(Lcom/atet/api/pay/ui/service/l1lll1l1l1;)Landroid/content/DialogInterface$OnKeyListener;
    .registers 2

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l111ll1111:Landroid/content/DialogInterface$OnKeyListener;

    return-object v0
.end method


# virtual methods
.method public final l1l111lll1(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll11111l1:Z

    if-eqz v0, :cond_a

    const-string v0, ""

    :goto_9
    return-object v0

    :cond_a
    iput-boolean v5, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll11111l1:Z

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

    if-nez v0, :cond_91

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.atet.api.pay.ui.service.IAtetPayService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v1, v4, :cond_27

    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :cond_27
    if-eqz v0, :cond_91

    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l11l11l1l1:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    :goto_35
    if-eqz v0, :cond_6c

    :try_start_37
    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll1l111ll:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_5c
    .catchall {:try_start_37 .. :try_end_3a} :catchall_7c

    :try_start_3a
    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll1l111ll:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_59

    :try_start_44
    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l11111lll1:Lcom/atet/api/pay/ui/service/IRemoteServiceCallback$Stub;

    invoke-interface {v0, p1, v1}, Lcom/atet/api/pay/ui/service/IAtetPayService;->startPay(Ljava/lang/String;Lcom/atet/api/pay/ui/service/IRemoteServiceCallback;)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_5c
    .catchall {:try_start_44 .. :try_end_4b} :catchall_7c

    move-result-object v0

    :goto_4c
    const/4 v1, 0x0

    :try_start_4d
    iput-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4f} :catch_8f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_7c

    :try_start_4f
    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1:Landroid/app/Activity;

    iget-object v4, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l11l11l1l1:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_56} :catch_8b

    :goto_56
    iput-boolean v3, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll11111l1:Z

    goto :goto_9

    :catchall_59
    move-exception v0

    :try_start_5a
    monitor-exit v1

    throw v0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5c} :catch_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_7c

    :catch_5c
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_5f
    :try_start_5f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_7c

    :try_start_62
    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1:Landroid/app/Activity;

    iget-object v4, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l11l11l1l1:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_78

    :goto_69
    iput-boolean v3, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll11111l1:Z

    goto :goto_9

    :cond_6c
    :try_start_6c
    const-string v0, "PayHelper"

    const-string v1, "apk not install"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_76} :catch_5c
    .catchall {:try_start_6c .. :try_end_76} :catchall_7c

    move-object v0, v2

    goto :goto_4c

    :catch_78
    move-exception v1

    iput-object v2, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

    goto :goto_69

    :catchall_7c
    move-exception v0

    :try_start_7d
    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1:Landroid/app/Activity;

    iget-object v4, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l11l11l1l1:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_84} :catch_87

    :goto_84
    iput-boolean v3, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll11111l1:Z

    throw v0

    :catch_87
    move-exception v1

    iput-object v2, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

    goto :goto_84

    :catch_8b
    move-exception v1

    iput-object v2, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

    goto :goto_56

    :catch_8f
    move-exception v1

    goto :goto_5f

    :cond_91
    move v0, v3

    goto :goto_35
.end method

.method public final l1lll1l1l1(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll11111l1:Z

    if-eqz v0, :cond_a

    const-string v0, ""

    :goto_9
    return-object v0

    :cond_a
    iput-boolean v5, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll11111l1:Z

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

    if-nez v0, :cond_91

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.atet.api.pay.ui.service.IAtetPayService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v1, v4, :cond_27

    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :cond_27
    if-eqz v0, :cond_91

    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l11l11l1l1:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    :goto_35
    if-eqz v0, :cond_6c

    :try_start_37
    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll1l111ll:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_5c
    .catchall {:try_start_37 .. :try_end_3a} :catchall_7c

    :try_start_3a
    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll1l111ll:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    :cond_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_59

    :try_start_44
    iget-object v0, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l11111lll1:Lcom/atet/api/pay/ui/service/IRemoteServiceCallback$Stub;

    invoke-interface {v0, p1, v1}, Lcom/atet/api/pay/ui/service/IAtetPayService;->login(Ljava/lang/String;Lcom/atet/api/pay/ui/service/IRemoteServiceCallback;)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4b} :catch_5c
    .catchall {:try_start_44 .. :try_end_4b} :catchall_7c

    move-result-object v0

    :goto_4c
    const/4 v1, 0x0

    :try_start_4d
    iput-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4f} :catch_8f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_7c

    :try_start_4f
    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1:Landroid/app/Activity;

    iget-object v4, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l11l11l1l1:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_56} :catch_8b

    :goto_56
    iput-boolean v3, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll11111l1:Z

    goto :goto_9

    :catchall_59
    move-exception v0

    :try_start_5a
    monitor-exit v1

    throw v0
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5c} :catch_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_7c

    :catch_5c
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    :goto_5f
    :try_start_5f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_7c

    :try_start_62
    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1:Landroid/app/Activity;

    iget-object v4, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l11l11l1l1:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_78

    :goto_69
    iput-boolean v3, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll11111l1:Z

    goto :goto_9

    :cond_6c
    :try_start_6c
    const-string v0, "PayHelper"

    const-string v1, "apk not install"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_76} :catch_5c
    .catchall {:try_start_6c .. :try_end_76} :catchall_7c

    move-object v0, v2

    goto :goto_4c

    :catch_78
    move-exception v1

    iput-object v2, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

    goto :goto_69

    :catchall_7c
    move-exception v0

    :try_start_7d
    iget-object v1, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1l111lll1:Landroid/app/Activity;

    iget-object v4, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l11l11l1l1:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_84} :catch_87

    :goto_84
    iput-boolean v3, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->lll11111l1:Z

    throw v0

    :catch_87
    move-exception v1

    iput-object v2, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

    goto :goto_84

    :catch_8b
    move-exception v1

    iput-object v2, p0, Lcom/atet/api/pay/ui/service/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAtetPayService;

    goto :goto_56

    :catch_8f
    move-exception v1

    goto :goto_5f

    :cond_91
    move v0, v3

    goto :goto_35
.end method
