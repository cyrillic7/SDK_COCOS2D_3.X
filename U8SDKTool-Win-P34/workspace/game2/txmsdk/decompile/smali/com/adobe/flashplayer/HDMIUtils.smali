.class public Lcom/adobe/flashplayer/HDMIUtils;
.super Ljava/lang/Object;
.source "HDMIUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;,
        Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;,
        Lcom/adobe/flashplayer/HDMIUtils$HDMIState;
    }
.end annotation


# static fields
.field private static final EXTDISP_PUBLIC_STATE:Ljava/lang/String; = "com.motorola.intent.action.externaldisplaystate"

.field private static final EXTDISP_STATUS_CONNECTION:Ljava/lang/String; = "com.motorola.intent.action.EXTDISP_STATUS_CONNECTION"

.field private static final EXTDISP_STATUS_DISPLAY:Ljava/lang/String; = "com.motorola.intent.action.EXTDISP_STATUS_DISPLAY"

.field private static final EXTDISP_STATUS_RESOLUTION:Ljava/lang/String; = "com.motorola.intent.action.EXTDISP_STATUS_RESOLUTION"

.field private static final EXTRA_HDCP:Ljava/lang/String; = "hdcp"

.field private static final EXTRA_HDMI:Ljava/lang/String; = "hdmi"

.field private static final TAG:Ljava/lang/String; = "HDMIUtils"

.field private static final TYPE_HDMI:I = 0x1

.field private static lock:Ljava/lang/Object;

.field private static mSingleton:Lcom/adobe/flashplayer/HDMIUtils;


# instance fields
.field private mConnection:Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeathWatcher:Landroid/os/Binder;

.field private mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

.field private mHdcpOnOff:Z

.field private mHdmiConnection:Z

.field private mHdmiOnOff:Z

.field private mHdmiStatusKnown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/flashplayer/HDMIUtils;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiStatusKnown:Z

    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiOnOff:Z

    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdcpOnOff:Z

    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiConnection:Z

    iput-object v1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    iput-object v1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mDeathWatcher:Landroid/os/Binder;

    iput-object p1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiStatusKnown:Z

    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdcpOnOff:Z

    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiOnOff:Z

    iput-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiConnection:Z

    new-instance v0, Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;

    invoke-direct {v0, p0}, Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;-><init>(Lcom/adobe/flashplayer/HDMIUtils;)V

    iput-object v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mConnection:Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mDeathWatcher:Landroid/os/Binder;

    new-instance v0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;-><init>(Lcom/adobe/flashplayer/HDMIUtils;)V

    iput-object v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.motorola.intent.action.externaldisplaystate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.motorola.intent.action.EXTDISP_STATUS_CONNECTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.motorola.intent.action.EXTDISP_STATUS_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.motorola.intent.action.EXTDISP_STATUS_RESOLUTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/adobe/flashplayer/HDMIUtils;->mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/flashplayer/HDMIUtils;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiConnection:Z

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/flashplayer/HDMIUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiConnection:Z

    return p1
.end method

.method static synthetic access$102(Lcom/adobe/flashplayer/HDMIUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiStatusKnown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/flashplayer/HDMIUtils;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiOnOff:Z

    return v0
.end method

.method static synthetic access$202(Lcom/adobe/flashplayer/HDMIUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiOnOff:Z

    return p1
.end method

.method static synthetic access$302(Lcom/adobe/flashplayer/HDMIUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdcpOnOff:Z

    return p1
.end method

.method public static closeHelper()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/adobe/flashplayer/HDMIUtils;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iget-object v0, v0, Lcom/adobe/flashplayer/HDMIUtils;->mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iget-object v0, v0, Lcom/adobe/flashplayer/HDMIUtils;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iget-object v2, v2, Lcom/adobe/flashplayer/HDMIUtils;->mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/adobe/flashplayer/HDMIUtils;->mExtConnectionReceiver:Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;

    :cond_1
    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iget-object v0, v0, Lcom/adobe/flashplayer/HDMIUtils;->mConnection:Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iget-object v0, v0, Lcom/adobe/flashplayer/HDMIUtils;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    iget-object v2, v2, Lcom/adobe/flashplayer/HDMIUtils;->mConnection:Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/adobe/flashplayer/HDMIUtils;->mConnection:Lcom/adobe/flashplayer/HDMIUtils$HdmiServiceConnection;

    :cond_2
    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/adobe/flashplayer/HDMIUtils;->mDeathWatcher:Landroid/os/Binder;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiStatusKnown:Z

    sput-object v3, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getHDMIState(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/adobe/flashplayer/HDMIUtils;->initHelper(Landroid/content/Context;)V

    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->UNKNOWN:Lcom/adobe/flashplayer/HDMIUtils$HDMIState;

    iget v0, v0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->value:I

    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-virtual {v0}, Lcom/adobe/flashplayer/HDMIUtils;->isHdmiStatusKnown()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->UNKNOWN:Lcom/adobe/flashplayer/HDMIUtils$HDMIState;

    iget v0, v0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->value:I

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-virtual {v0}, Lcom/adobe/flashplayer/HDMIUtils;->isHDCPOn()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->HDCPON:Lcom/adobe/flashplayer/HDMIUtils$HDMIState;

    iget v0, v0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->value:I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-virtual {v0}, Lcom/adobe/flashplayer/HDMIUtils;->isHDMIOn()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->ON:Lcom/adobe/flashplayer/HDMIUtils$HDMIState;

    iget v0, v0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->value:I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->OFF:Lcom/adobe/flashplayer/HDMIUtils$HDMIState;

    iget v0, v0, Lcom/adobe/flashplayer/HDMIUtils$HDMIState;->value:I

    goto :goto_0
.end method

.method public static initHelper(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/adobe/flashplayer/HDMIUtils;

    invoke-direct {v0, p0}, Lcom/adobe/flashplayer/HDMIUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/flashplayer/HDMIUtils;->mSingleton:Lcom/adobe/flashplayer/HDMIUtils;

    goto :goto_0
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiConnection:Z

    return v0
.end method

.method public isHDCPOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdcpOnOff:Z

    return v0
.end method

.method public isHDMIOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiOnOff:Z

    return v0
.end method

.method public isHdmiStatusKnown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adobe/flashplayer/HDMIUtils;->mHdmiStatusKnown:Z

    return v0
.end method
