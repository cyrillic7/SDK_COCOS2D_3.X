.class public Lcom/adobe/air/wand/WandActivity;
.super Landroid/app/Activity;
.source "WandActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WandActivity"


# instance fields
.field private mHasResumed:Z

.field private mWandManager:Lcom/adobe/air/wand/WandManager;

.field private mWandWebSocket:Lcom/adobe/air/wand/connection/WandWebSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandWebSocket:Lcom/adobe/air/wand/connection/WandWebSocket;

    iput-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/wand/WandActivity;->mHasResumed:Z

    return-void
.end method

.method private initialize()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-direct {v0, p0}, Lcom/adobe/air/wand/connection/WandWebSocket;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandWebSocket:Lcom/adobe/air/wand/connection/WandWebSocket;

    const v0, 0x7f07010f

    invoke-virtual {p0, v0}, Lcom/adobe/air/wand/WandActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/view/WandView;

    new-instance v1, Lcom/adobe/air/wand/WandManager;

    iget-object v2, p0, Lcom/adobe/air/wand/WandActivity;->mWandWebSocket:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-direct {v1, p0, v0, v2}, Lcom/adobe/air/wand/WandManager;-><init>(Landroid/app/Activity;Lcom/adobe/air/wand/view/WandView;Lcom/adobe/air/wand/connection/Connection;)V

    iput-object v1, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private terminate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/WandManager;->dispose()V

    iput-object v1, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandWebSocket:Lcom/adobe/air/wand/connection/WandWebSocket;

    invoke-virtual {v0}, Lcom/adobe/air/wand/connection/WandWebSocket;->dispose()V

    iput-object v1, p0, Lcom/adobe/air/wand/WandActivity;->mWandWebSocket:Lcom/adobe/air/wand/connection/WandWebSocket;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/WandManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/wand/WandManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/adobe/air/wand/WandActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/adobe/air/wand/WandActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/adobe/air/wand/WandActivity;->initialize()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    invoke-direct {p0}, Lcom/adobe/air/wand/WandActivity;->terminate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/adobe/air/wand/WandActivity;->mHasResumed:Z

    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/WandManager;->focus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/wand/WandActivity;->mHasResumed:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/adobe/air/wand/WandActivity;->mHasResumed:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/WandManager;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/WandActivity;->mWandManager:Lcom/adobe/air/wand/WandManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/WandManager;->focus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
