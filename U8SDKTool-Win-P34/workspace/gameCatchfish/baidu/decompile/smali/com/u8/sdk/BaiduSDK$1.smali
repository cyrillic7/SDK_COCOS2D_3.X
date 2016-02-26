.class Lcom/u8/sdk/BaiduSDK$1;
.super Lcom/u8/sdk/ActivityCallbackAdapter;
.source "BaiduSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/BaiduSDK;->initSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/BaiduSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/BaiduSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/BaiduSDK$1;->this$0:Lcom/u8/sdk/BaiduSDK;

    .line 70
    invoke-direct {p0}, Lcom/u8/sdk/ActivityCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .prologue
    .line 75
    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->destroy()V

    .line 76
    iget-object v0, p0, Lcom/u8/sdk/BaiduSDK$1;->this$0:Lcom/u8/sdk/BaiduSDK;

    # getter for: Lcom/u8/sdk/BaiduSDK;->mActivityAdPage:Lcom/baidu/gamesdk/ActivityAdPage;
    invoke-static {v0}, Lcom/u8/sdk/BaiduSDK;->access$0(Lcom/u8/sdk/BaiduSDK;)Lcom/baidu/gamesdk/ActivityAdPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/gamesdk/ActivityAdPage;->onDestroy()V

    .line 77
    iget-object v0, p0, Lcom/u8/sdk/BaiduSDK$1;->this$0:Lcom/u8/sdk/BaiduSDK;

    invoke-virtual {v0}, Lcom/u8/sdk/BaiduSDK;->ClosefloatView()V

    .line 78
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/u8/sdk/BaiduSDK$1;->this$0:Lcom/u8/sdk/BaiduSDK;

    # getter for: Lcom/u8/sdk/BaiduSDK;->mActivityAdPage:Lcom/baidu/gamesdk/ActivityAdPage;
    invoke-static {v0}, Lcom/u8/sdk/BaiduSDK;->access$0(Lcom/u8/sdk/BaiduSDK;)Lcom/baidu/gamesdk/ActivityAdPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/gamesdk/ActivityAdPage;->onPause()V

    .line 91
    iget-object v0, p0, Lcom/u8/sdk/BaiduSDK$1;->this$0:Lcom/u8/sdk/BaiduSDK;

    # getter for: Lcom/u8/sdk/BaiduSDK;->mActivityAnalytics:Lcom/baidu/gamesdk/ActivityAnalytics;
    invoke-static {v0}, Lcom/u8/sdk/BaiduSDK;->access$1(Lcom/u8/sdk/BaiduSDK;)Lcom/baidu/gamesdk/ActivityAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/gamesdk/ActivityAnalytics;->onPause()V

    .line 92
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/u8/sdk/BaiduSDK$1;->this$0:Lcom/u8/sdk/BaiduSDK;

    # getter for: Lcom/u8/sdk/BaiduSDK;->mActivityAdPage:Lcom/baidu/gamesdk/ActivityAdPage;
    invoke-static {v0}, Lcom/u8/sdk/BaiduSDK;->access$0(Lcom/u8/sdk/BaiduSDK;)Lcom/baidu/gamesdk/ActivityAdPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/gamesdk/ActivityAdPage;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/u8/sdk/BaiduSDK$1;->this$0:Lcom/u8/sdk/BaiduSDK;

    # getter for: Lcom/u8/sdk/BaiduSDK;->mActivityAnalytics:Lcom/baidu/gamesdk/ActivityAnalytics;
    invoke-static {v0}, Lcom/u8/sdk/BaiduSDK;->access$1(Lcom/u8/sdk/BaiduSDK;)Lcom/baidu/gamesdk/ActivityAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/gamesdk/ActivityAnalytics;->onResume()V

    .line 99
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/u8/sdk/BaiduSDK$1;->this$0:Lcom/u8/sdk/BaiduSDK;

    invoke-virtual {v0}, Lcom/u8/sdk/BaiduSDK;->ClosefloatView()V

    .line 84
    iget-object v0, p0, Lcom/u8/sdk/BaiduSDK$1;->this$0:Lcom/u8/sdk/BaiduSDK;

    # getter for: Lcom/u8/sdk/BaiduSDK;->mActivityAdPage:Lcom/baidu/gamesdk/ActivityAdPage;
    invoke-static {v0}, Lcom/u8/sdk/BaiduSDK;->access$0(Lcom/u8/sdk/BaiduSDK;)Lcom/baidu/gamesdk/ActivityAdPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/gamesdk/ActivityAdPage;->onStop()V

    .line 85
    return-void
.end method
