.class public Lcom/adobe/air/AndroidNetworkDetector;
.super Ljava/lang/Object;
.source "AndroidNetworkDetector.java"


# static fields
.field private static final NET_DETECT_TAG:Ljava/lang/String; = "AndroidNetworkDetector"


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private objReference:J

.field private registered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidNetworkDetector;->registered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidNetworkDetector;)J
    .locals 2

    iget-wide v0, p0, Lcom/adobe/air/AndroidNetworkDetector;->objReference:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidNetworkDetector;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidNetworkDetector;->callOnNetworkChange(J)V

    return-void
.end method

.method private native callOnNetworkChange(J)V
.end method


# virtual methods
.method public RegisterForNetworkChange(Landroid/content/Context;J)V
    .locals 2

    iget-boolean v0, p0, Lcom/adobe/air/AndroidNetworkDetector;->registered:Z

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/adobe/air/AndroidNetworkDetector$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidNetworkDetector$1;-><init>(Lcom/adobe/air/AndroidNetworkDetector;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidNetworkDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-wide p2, p0, Lcom/adobe/air/AndroidNetworkDetector;->objReference:J

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adobe/air/AndroidNetworkDetector;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AndroidNetworkDetector;->registered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
