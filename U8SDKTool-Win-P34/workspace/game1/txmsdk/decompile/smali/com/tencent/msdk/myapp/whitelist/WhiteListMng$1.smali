.class final Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$1;
.super Lcom/tencent/msdk/Singleton;
.source "WhiteListMng.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/msdk/Singleton",
        "<",
        "Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tencent/msdk/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;
    .registers 3

    .prologue
    .line 27
    const-string v1, "WhiteListMng create"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-direct {v0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;-><init>()V

    .line 29
    .local v0, "wlm":Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    # setter for: Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mQQAppId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->access$002(Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    # setter for: Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mWxAppId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->access$102(Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->setmContext(Landroid/app/Activity;)V

    .line 32
    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$1;->create()Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    move-result-object v0

    return-object v0
.end method
