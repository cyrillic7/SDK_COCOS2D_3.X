.class public Lcom/adobe/air/wand/WandManager;
.super Ljava/lang/Object;
.source "WandManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/WandManager$1;,
        Lcom/adobe/air/wand/WandManager$TaskListener;,
        Lcom/adobe/air/wand/WandManager$ViewListener;,
        Lcom/adobe/air/wand/WandManager$ConnectionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WandManager"


# instance fields
.field private mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

.field private mDisplay:Landroid/view/Display;

.field private mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

.field private mHasFocus:Z

.field private mIsDisposed:Z

.field private mListenToConfigChange:Z

.field private mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

.field private mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

.field private mProtocolVersion:Ljava/lang/String;

.field private mTaskManager:Lcom/adobe/air/wand/TaskManager;

.field private mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWandConnection:Lcom/adobe/air/wand/connection/Connection;

.field private mWandView:Lcom/adobe/air/wand/view/WandView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/air/wand/view/WandView;Lcom/adobe/air/wand/connection/Connection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    iput-object v8, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    iput-object v8, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    iput-object v8, p0, Lcom/adobe/air/wand/WandManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    iput-object v8, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    iput-object v8, p0, Lcom/adobe/air/wand/WandManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    iput-object v8, p0, Lcom/adobe/air/wand/WandManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    iput-object v8, p0, Lcom/adobe/air/wand/WandManager;->mVibrator:Landroid/os/Vibrator;

    iput-object v8, p0, Lcom/adobe/air/wand/WandManager;->mDisplay:Landroid/view/Display;

    iput-object v8, p0, Lcom/adobe/air/wand/WandManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    iput-object v8, p0, Lcom/adobe/air/wand/WandManager;->mProtocolVersion:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mIsDisposed:Z

    iput-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mHasFocus:Z

    iput-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mListenToConfigChange:Z

    invoke-static {p3}, Lcom/adobe/air/wand/ConnectionChangeReceiver;->resisterWandConnection(Lcom/adobe/air/wand/connection/Connection;)V

    iput-object p3, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    new-instance v1, Lcom/adobe/air/wand/WandManager$ConnectionListener;

    invoke-direct {v1, p0, v8}, Lcom/adobe/air/wand/WandManager$ConnectionListener;-><init>(Lcom/adobe/air/wand/WandManager;Lcom/adobe/air/wand/WandManager$1;)V

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/connection/Connection;->registerListener(Lcom/adobe/air/wand/connection/Connection$Listener;)V

    iput-object p2, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    new-instance v1, Lcom/adobe/air/wand/WandManager$ViewListener;

    invoke-direct {v1, p0, v8}, Lcom/adobe/air/wand/WandManager$ViewListener;-><init>(Lcom/adobe/air/wand/WandManager;Lcom/adobe/air/wand/WandManager$1;)V

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/view/WandView;->registerListener(Lcom/adobe/air/wand/view/WandView$Listener;)V

    new-instance v0, Lcom/adobe/air/wand/message/json/JSONMessageManager;

    invoke-direct {v0}, Lcom/adobe/air/wand/message/json/JSONMessageManager;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-interface {p2}, Lcom/adobe/air/wand/view/WandView;->getTouchSensor()Lcom/adobe/air/wand/view/TouchSensor;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    new-instance v0, Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-direct {v0, p1}, Lcom/adobe/air/wand/motionsensor/Accelerometer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    new-instance v0, Lcom/adobe/air/wand/motionsensor/Magnetometer;

    invoke-direct {v0, p1}, Lcom/adobe/air/wand/motionsensor/Magnetometer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    new-instance v0, Lcom/adobe/air/wand/motionsensor/Gyroscope;

    invoke-direct {v0, p1}, Lcom/adobe/air/wand/motionsensor/Gyroscope;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot find application context while initializing."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mVibrator:Landroid/os/Vibrator;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mDisplay:Landroid/view/Display;

    new-instance v0, Lcom/adobe/air/wand/TaskManager;

    iget-object v1, p0, Lcom/adobe/air/wand/WandManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    iget-object v2, p0, Lcom/adobe/air/wand/WandManager;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/adobe/air/wand/WandManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    iget-object v4, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    iget-object v5, p0, Lcom/adobe/air/wand/WandManager;->mMagnetometer:Lcom/adobe/air/wand/motionsensor/Magnetometer;

    iget-object v6, p0, Lcom/adobe/air/wand/WandManager;->mGyroscope:Lcom/adobe/air/wand/motionsensor/Gyroscope;

    iget-object v7, p0, Lcom/adobe/air/wand/WandManager;->mVibrator:Landroid/os/Vibrator;

    invoke-direct/range {v0 .. v7}, Lcom/adobe/air/wand/TaskManager;-><init>(Lcom/adobe/air/wand/message/MessageManager;Landroid/view/Display;Lcom/adobe/air/wand/view/TouchSensor;Lcom/adobe/air/wand/motionsensor/Accelerometer;Lcom/adobe/air/wand/motionsensor/Magnetometer;Lcom/adobe/air/wand/motionsensor/Gyroscope;Landroid/os/Vibrator;)V

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    new-instance v1, Lcom/adobe/air/wand/WandManager$TaskListener;

    invoke-direct {v1, p0, v8}, Lcom/adobe/air/wand/WandManager$TaskListener;-><init>(Lcom/adobe/air/wand/WandManager;Lcom/adobe/air/wand/WandManager$1;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/TaskManager;->registerListener(Lcom/adobe/air/wand/TaskManager$Listener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/wand/WandManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mProtocolVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/adobe/air/wand/WandManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/adobe/air/wand/WandManager;->mProtocolVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/view/WandView;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/air/wand/WandManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/adobe/air/wand/WandManager;->loadDefaultView()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/TaskManager;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/connection/Connection;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    return-object v0
.end method

.method static synthetic access$502(Lcom/adobe/air/wand/WandManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/wand/WandManager;->mListenToConfigChange:Z

    return p1
.end method

.method private loadDefaultView()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->stop()V

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/TaskManager;->terminateRunningTasks()V

    invoke-direct {p0}, Lcom/adobe/air/wand/WandManager;->setDefaultOrientation()V

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    invoke-interface {v0}, Lcom/adobe/air/wand/view/WandView;->loadDefaultView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method private setDefaultOrientation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    sget-object v1, Lcom/adobe/air/wand/view/WandView$ScreenOrientation;->INHERIT:Lcom/adobe/air/wand/view/WandView$ScreenOrientation;

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/view/WandView;->setScreenOrientation(Lcom/adobe/air/wand/view/WandView$ScreenOrientation;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mIsDisposed:Z

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/TaskManager;->terminateRunningTasks()V

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/TaskManager;->unregisterListener()V

    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    invoke-interface {v0}, Lcom/adobe/air/wand/view/WandView;->unregisterListener()V

    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->dispose()V

    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mDisplay:Landroid/view/Display;

    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection;->unregisterListener()V

    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    invoke-static {}, Lcom/adobe/air/wand/ConnectionChangeReceiver;->unresisterWandConnection()V

    return-void
.end method

.method public focus(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mIsDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "WandManager has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/adobe/air/wand/WandManager;->setDefaultOrientation()V

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection;->connect()V

    :goto_0
    iput-boolean p1, p0, Lcom/adobe/air/wand/WandManager;->mHasFocus:Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/wand/WandManager;->loadDefaultView()V

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection;->disconnect()V

    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mHasFocus:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mListenToConfigChange:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mListenToConfigChange:Z

    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection;->onReadyForConnection()V

    :cond_0
    return-void
.end method
