.class Lcom/u8/sdk/WGSDK$1;
.super Lcom/u8/sdk/ActivityCallbackAdapter;
.source "WGSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/WGSDK;->initSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/WGSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/WGSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/WGSDK$1;->this$0:Lcom/u8/sdk/WGSDK;

    .line 104
    invoke-direct {p0}, Lcom/u8/sdk/ActivityCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .prologue
    .line 125
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->onDestory(Landroid/app/Activity;)V

    .line 126
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    invoke-static {p1}, Lcom/tencent/msdk/api/WGPlatform;->wakeUpFromHall(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 135
    invoke-static {p1}, Lcom/tencent/msdk/api/WGPlatform;->handleCallback(Landroid/content/Intent;)V

    .line 137
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 116
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onPause()V

    .line 117
    return-void
.end method

.method public onRestart()V
    .registers 1

    .prologue
    .line 112
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onRestart()V

    .line 113
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 107
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onResume()V

    .line 108
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 121
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onStop()V

    .line 122
    return-void
.end method
