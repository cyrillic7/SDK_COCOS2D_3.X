.class public Lcom/adobe/air/AndroidIdleState;
.super Ljava/lang/Object;
.source "AndroidIdleState.java"


# static fields
.field public static final IDLE_STATE_NORMAL:I = 0x0

.field private static final IDLE_STATE_TAG:Ljava/lang/String; = "AndroidIdleState"

.field public static final IDLE_STATE_WAKEUP:I = 0x1

.field private static mIdleStateManager:Lcom/adobe/air/AndroidIdleState;


# instance fields
.field private mCurrentIdleState:I

.field private mIsWakeUpLockHeld:Z

.field private mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mScreenBrightLock:Landroid/os/PowerManager$WakeLock;

.field private sReceiver:Landroid/content/BroadcastReceiver;

.field private sScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/air/AndroidIdleState;->mIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    iput-boolean v1, p0, Lcom/adobe/air/AndroidIdleState;->mIsWakeUpLockHeld:Z

    iput v1, p0, Lcom/adobe/air/AndroidIdleState;->mCurrentIdleState:I

    iput-object v0, p0, Lcom/adobe/air/AndroidIdleState;->sReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AndroidIdleState;->sScreenOn:Z

    iget-object v0, p0, Lcom/adobe/air/AndroidIdleState;->sReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/adobe/air/AndroidIdleState$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidIdleState$1;-><init>(Lcom/adobe/air/AndroidIdleState;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidIdleState;->sReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adobe/air/AndroidIdleState;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static GetIdleStateManager(Landroid/content/Context;)Lcom/adobe/air/AndroidIdleState;
    .locals 1

    sget-object v0, Lcom/adobe/air/AndroidIdleState;->mIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adobe/air/AndroidIdleState;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidIdleState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/air/AndroidIdleState;->mIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    :cond_0
    sget-object v0, Lcom/adobe/air/AndroidIdleState;->mIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    return-object v0
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidIdleState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidIdleState;->sScreenOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/air/AndroidIdleState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/air/AndroidIdleState;->sScreenOn:Z

    return p1
.end method


# virtual methods
.method public ChangeIdleState(Landroid/content/Context;I)V
    .locals 3

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidIdleState;->releaseLock()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/air/AndroidIdleState;->mCurrentIdleState:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mScreenBrightLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "DoNotDimScreen"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    check-cast v0, Landroid/app/KeyguardManager;

    const-string v1, "DoNotLockKeys"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/adobe/air/AndroidIdleState;->mCurrentIdleState:I

    invoke-virtual {p0}, Lcom/adobe/air/AndroidIdleState;->acquireLock()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public acquireLock()V
    .locals 2

    const/4 v1, 0x1

    :try_start_0
    iget v0, p0, Lcom/adobe/air/AndroidIdleState;->mCurrentIdleState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidIdleState;->mIsWakeUpLockHeld:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AndroidIdleState;->mIsWakeUpLockHeld:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public releaseLock()V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/adobe/air/AndroidIdleState;->mCurrentIdleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidIdleState;->mIsWakeUpLockHeld:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/adobe/air/AndroidIdleState;->mKeyGuardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidIdleState;->mIsWakeUpLockHeld:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
