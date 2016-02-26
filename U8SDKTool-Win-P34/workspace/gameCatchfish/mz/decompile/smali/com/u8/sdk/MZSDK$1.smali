.class Lcom/u8/sdk/MZSDK$1;
.super Lcom/u8/sdk/ActivityCallbackAdapter;
.source "MZSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/MZSDK;->initSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/MZSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/MZSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/MZSDK$1;->this$0:Lcom/u8/sdk/MZSDK;

    .line 61
    invoke-direct {p0}, Lcom/u8/sdk/ActivityCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/u8/sdk/MZSDK$1;->this$0:Lcom/u8/sdk/MZSDK;

    iget-object v0, v0, Lcom/u8/sdk/MZSDK;->mzGameBarPlatform:Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->onActivityDestroy()V

    .line 67
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/gamecenter/sdk/MzGameCenterPlatform;->logout(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/u8/sdk/MZSDK$1;->this$0:Lcom/u8/sdk/MZSDK;

    iget-object v0, v0, Lcom/u8/sdk/MZSDK;->mzGameBarPlatform:Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->onActivityPause()V

    .line 75
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/u8/sdk/MZSDK$1;->this$0:Lcom/u8/sdk/MZSDK;

    iget-object v0, v0, Lcom/u8/sdk/MZSDK;->mzGameBarPlatform:Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->onActivityResume()V

    .line 81
    return-void
.end method
