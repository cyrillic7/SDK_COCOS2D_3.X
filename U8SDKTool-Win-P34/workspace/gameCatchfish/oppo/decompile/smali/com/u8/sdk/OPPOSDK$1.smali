.class Lcom/u8/sdk/OPPOSDK$1;
.super Lcom/u8/sdk/ActivityCallbackAdapter;
.source "OPPOSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/OPPOSDK;->initSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/OPPOSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/OPPOSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/OPPOSDK$1;->this$0:Lcom/u8/sdk/OPPOSDK;

    .line 49
    invoke-direct {p0}, Lcom/u8/sdk/ActivityCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .registers 2

    .prologue
    .line 54
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nearme/game/sdk/GameCenterSDK;->onPause()V

    .line 55
    invoke-super {p0}, Lcom/u8/sdk/ActivityCallbackAdapter;->onPause()V

    .line 56
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/u8/sdk/ActivityCallbackAdapter;->onResume()V

    .line 62
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/GameCenterSDK;->onResume(Landroid/app/Activity;)V

    .line 63
    return-void
.end method
