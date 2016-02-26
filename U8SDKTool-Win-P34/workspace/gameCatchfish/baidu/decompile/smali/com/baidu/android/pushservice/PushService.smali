.class public Lcom/baidu/android/pushservice/PushService;
.super Landroid/app/Service;


# static fields
.field public static final ACTION_START:Ljava/lang/String; = "com.baidu.pushservice.action.START"

.field public static final ACTION_STOP:Ljava/lang/String; = "com.baidu.pushservice.action.STOP"

.field public static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field public static final SERVICE_STOPPED_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PushService"


# instance fields
.field private bindCnt:I

.field private initSuc:Z

.field private final mBinder:Lcom/baidu/android/pushservice/b/a$a;

.field private mDestroyRunnable:Ljava/lang/Runnable;

.field private mExitOnDestroy:Z

.field private mHandler:Landroid/os/Handler;

.field private sdcardRemovedReceiver:Lcom/baidu/android/pushservice/SDcardRemovedReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-boolean v1, p0, Lcom/baidu/android/pushservice/PushService;->mExitOnDestroy:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushService;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/baidu/android/pushservice/PushService;->initSuc:Z

    new-instance v0, Lcom/baidu/android/pushservice/w;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/w;-><init>(Lcom/baidu/android/pushservice/PushService;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushService;->mDestroyRunnable:Ljava/lang/Runnable;

    iput v1, p0, Lcom/baidu/android/pushservice/PushService;->bindCnt:I

    new-instance v0, Lcom/baidu/android/pushservice/x;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/x;-><init>(Lcom/baidu/android/pushservice/PushService;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushService;->mBinder:Lcom/baidu/android/pushservice/b/a$a;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/android/pushservice/PushService;)I
    .registers 2

    iget v0, p0, Lcom/baidu/android/pushservice/PushService;->bindCnt:I

    return v0
.end method

.method private stopSelf(ZZ)V
    .registers 7

    iput-boolean p1, p0, Lcom/baidu/android/pushservice/PushService;->mExitOnDestroy:Z

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSelf : exitOnDestroy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --- immediate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    if-eqz p2, :cond_32

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushService;->mDestroyRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_31
    return-void

    :cond_32
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushService;->mDestroyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushService;->mDestroyRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_31
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    iget v0, p0, Lcom/baidu/android/pushservice/PushService;->bindCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/android/pushservice/PushService;->bindCnt:I

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/android/pushservice/PushService;->bindCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initSuc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/android/pushservice/PushService;->initSuc:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    iget-boolean v0, p0, Lcom/baidu/android/pushservice/PushService;->initSuc:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushService;->mBinder:Lcom/baidu/android/pushservice/b/a$a;

    :goto_54
    return-object v0

    :cond_55
    const/4 v0, 0x0

    goto :goto_54
.end method

.method public onCreate()V
    .registers 6

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushSettings;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    sget v0, Lcom/baidu/android/pushservice/a;->d:I

    if-lt v0, v4, :cond_62

    sget v0, Lcom/baidu/android/pushservice/a;->d:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushService onCreate from : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at Time :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_62
    :try_start_62
    new-instance v0, Lcom/baidu/android/pushservice/SDcardRemovedReceiver;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/SDcardRemovedReceiver;-><init>()V

    iput-object v0, p0, Lcom/baidu/android/pushservice/PushService;->sdcardRemovedReceiver:Lcom/baidu/android/pushservice/SDcardRemovedReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushService;->sdcardRemovedReceiver:Lcom/baidu/android/pushservice/SDcardRemovedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/android/pushservice/PushService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7d} :catch_8f

    :goto_7d
    invoke-static {p0}, Lcom/baidu/android/pushservice/PushSDK;->getInstance(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/PushSDK;->initPushSDK()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/android/pushservice/PushService;->initSuc:Z

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/PushService;->initSuc:Z

    if-nez v0, :cond_8e

    invoke-direct {p0, v4, v4}, Lcom/baidu/android/pushservice/PushService;->stopSelf(ZZ)V

    :cond_8e
    return-void

    :catch_8f
    move-exception v0

    const-string v0, "TAG"

    const-string v1, "sdcard receiver register failed"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d
.end method

.method public onDestroy()V
    .registers 5

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    sget v0, Lcom/baidu/android/pushservice/a;->d:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5b

    sget v0, Lcom/baidu/android/pushservice/a;->d:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushService onDestroy from : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/PushService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " at Time :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/util/f;->a(Ljava/lang/String;Landroid/content/Context;)V

    :cond_5b
    :try_start_5b
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushService;->sdcardRemovedReceiver:Lcom/baidu/android/pushservice/SDcardRemovedReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/PushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_60} :catch_68

    :goto_60
    invoke-static {}, Lcom/baidu/android/pushservice/PushSDK;->destroy()V

    iget-boolean v0, p0, Lcom/baidu/android/pushservice/PushService;->mExitOnDestroy:Z

    if-eqz v0, :cond_67

    :cond_67
    return-void

    :catch_68
    move-exception v0

    const-string v0, "TAG"

    const-string v1, "sdcard receiver unregister failed"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    const/4 v0, 0x1

    if-nez p1, :cond_15

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "PushService"

    const-string v2, "--- onStart by null intent!"

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- onStartCommand -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    iget-object v1, p0, Lcom/baidu/android/pushservice/PushService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/android/pushservice/PushService;->mDestroyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p0}, Lcom/baidu/android/pushservice/PushSDK;->getInstance(Landroid/content/Context;)Lcom/baidu/android/pushservice/PushSDK;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/android/pushservice/PushSDK;->handleOnStart(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/android/pushservice/PushService;->initSuc:Z

    iget-boolean v1, p0, Lcom/baidu/android/pushservice/PushService;->initSuc:Z

    if-nez v1, :cond_54

    invoke-direct {p0, v0, v0}, Lcom/baidu/android/pushservice/PushService;->stopSelf(ZZ)V

    const/4 v0, 0x2

    :cond_54
    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 5

    iget v0, p0, Lcom/baidu/android/pushservice/PushService;->bindCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/android/pushservice/PushService;->bindCnt:I

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnbind("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/android/pushservice/PushService;->bindCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
