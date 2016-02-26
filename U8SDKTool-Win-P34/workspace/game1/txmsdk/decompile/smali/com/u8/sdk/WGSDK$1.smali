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

    .line 102
    invoke-direct {p0}, Lcom/u8/sdk/ActivityCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .prologue
    .line 123
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->onDestory(Landroid/app/Activity;)V

    .line 124
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    invoke-static {p1}, Lcom/tencent/msdk/api/WGPlatform;->handleCallback(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 114
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onPause()V

    .line 115
    return-void
.end method

.method public onRestart()V
    .registers 1

    .prologue
    .line 110
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onRestart()V

    .line 111
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 105
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onResume()V

    .line 106
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 119
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->onStop()V

    .line 120
    return-void
.end method
