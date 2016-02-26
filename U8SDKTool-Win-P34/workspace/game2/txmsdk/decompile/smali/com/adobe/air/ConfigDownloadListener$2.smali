.class Lcom/adobe/air/ConfigDownloadListener$2;
.super Ljava/lang/Object;
.source "ConfigDownloadListener.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/ConfigDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/ConfigDownloadListener;


# direct methods
.method constructor <init>(Lcom/adobe/air/ConfigDownloadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/air/ConfigDownloadListener$2;->this$0:Lcom/adobe/air/ConfigDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 4

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->PAUSED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/adobe/air/ConfigDownloadListener$2;->this$0:Lcom/adobe/air/ConfigDownloadListener;

    # getter for: Lcom/adobe/air/ConfigDownloadListener;->mDownloadConfigRecv:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/adobe/air/ConfigDownloadListener;->access$100(Lcom/adobe/air/ConfigDownloadListener;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/adobe/air/ConfigDownloadListener$2;->this$0:Lcom/adobe/air/ConfigDownloadListener;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/adobe/air/ConfigDownloadListener;->lastPauseTime:J
    invoke-static {v0, v2, v3}, Lcom/adobe/air/ConfigDownloadListener;->access$002(Lcom/adobe/air/ConfigDownloadListener;J)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/adobe/air/ConfigDownloadListener$2;->this$0:Lcom/adobe/air/ConfigDownloadListener;

    # getter for: Lcom/adobe/air/ConfigDownloadListener;->mDownloadConfigRecv:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/adobe/air/ConfigDownloadListener;->access$100(Lcom/adobe/air/ConfigDownloadListener;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.adobe.air.DownloadConfigComplete"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method
