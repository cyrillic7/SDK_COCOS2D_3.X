.class Lcom/adobe/air/ConfigDownloadListener;
.super Ljava/lang/Object;
.source "ConfigDownloadListener.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static sListener:Lcom/adobe/air/ConfigDownloadListener;


# instance fields
.field private lastPauseTime:J

.field private mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

.field private mDownloadConfigRecv:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/air/ConfigDownloadListener;->sListener:Lcom/adobe/air/ConfigDownloadListener;

    const-string v0, "ConfigDownloadListener"

    sput-object v0, Lcom/adobe/air/ConfigDownloadListener;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adobe/air/ConfigDownloadListener$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/ConfigDownloadListener$1;-><init>(Lcom/adobe/air/ConfigDownloadListener;)V

    iput-object v0, p0, Lcom/adobe/air/ConfigDownloadListener;->mDownloadConfigRecv:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/adobe/air/ConfigDownloadListener$2;

    invoke-direct {v0, p0}, Lcom/adobe/air/ConfigDownloadListener$2;-><init>(Lcom/adobe/air/ConfigDownloadListener;)V

    iput-object v0, p0, Lcom/adobe/air/ConfigDownloadListener;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/air/ConfigDownloadListener;->lastPauseTime:J

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/ConfigDownloadListener;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    return-void
.end method

.method public static GetConfigDownloadListener()Lcom/adobe/air/ConfigDownloadListener;
    .locals 1

    sget-object v0, Lcom/adobe/air/ConfigDownloadListener;->sListener:Lcom/adobe/air/ConfigDownloadListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adobe/air/ConfigDownloadListener;

    invoke-direct {v0}, Lcom/adobe/air/ConfigDownloadListener;-><init>()V

    sput-object v0, Lcom/adobe/air/ConfigDownloadListener;->sListener:Lcom/adobe/air/ConfigDownloadListener;

    :cond_0
    sget-object v0, Lcom/adobe/air/ConfigDownloadListener;->sListener:Lcom/adobe/air/ConfigDownloadListener;

    return-object v0
.end method

.method static synthetic access$000(Lcom/adobe/air/ConfigDownloadListener;)J
    .locals 2

    iget-wide v0, p0, Lcom/adobe/air/ConfigDownloadListener;->lastPauseTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/adobe/air/ConfigDownloadListener;J)J
    .locals 1

    iput-wide p1, p0, Lcom/adobe/air/ConfigDownloadListener;->lastPauseTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/adobe/air/ConfigDownloadListener;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/ConfigDownloadListener;->mDownloadConfigRecv:Landroid/content/BroadcastReceiver;

    return-object v0
.end method
