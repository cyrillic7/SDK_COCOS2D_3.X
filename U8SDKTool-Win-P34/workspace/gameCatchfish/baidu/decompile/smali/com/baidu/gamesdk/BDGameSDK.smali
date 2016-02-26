.class public final Lcom/baidu/gamesdk/BDGameSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 32
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static closeFloatView(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 161
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/c;->a()V

    .line 162
    return-void
.end method

.method public static destroy()V
    .registers 1

    .prologue
    .line 93
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/c;->b(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/a;->b(Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->f()V

    .line 97
    return-void
.end method

.method public static getAnnouncementInfo(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 181
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/c;->b(Landroid/app/Activity;)V

    .line 182
    return-void
.end method

.method public static getLoginAccessToken()Ljava/lang/String;
    .registers 1

    .prologue
    .line 118
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginUid()Ljava/lang/String;
    .registers 1

    .prologue
    .line 110
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Lcom/baidu/gamesdk/BDGameSDKSetting;Lcom/baidu/gamesdk/IResponse;)V
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "setting"    # Lcom/baidu/gamesdk/BDGameSDKSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/baidu/gamesdk/BDGameSDKSetting;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "responser":Lcom/baidu/gamesdk/IResponse;, "Lcom/baidu/gamesdk/IResponse<Ljava/lang/Void;>;"
    const-string v0, "BDGameSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/gamesdk/BDGameSDKSetting;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/e;->a(Ljava/lang/String;)V

    .line 57
    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/c;->a(Landroid/app/Activity;Lcom/baidu/gamesdk/BDGameSDKSetting;Lcom/baidu/gamesdk/IResponse;)V

    .line 58
    return-void
.end method

.method public static isLogined()Z
    .registers 1

    .prologue
    .line 103
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/a;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static login(Lcom/baidu/gamesdk/IResponse;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "responser":Lcom/baidu/gamesdk/IResponse;, "Lcom/baidu/gamesdk/IResponse<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V

    .line 86
    return-void
.end method

.method public static logout()V
    .registers 1

    .prologue
    .line 125
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public static oldDKSdkSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "dkAppId"    # Ljava/lang/String;
    .param p1, "dkAppKey"    # Ljava/lang/String;

    .prologue
    .line 43
    sput-object p0, Lcom/baidu/bdgame/sdk/obf/b;->b:Ljava/lang/String;

    .line 44
    sput-object p1, Lcom/baidu/bdgame/sdk/obf/b;->c:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static pay(Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)Z
    .registers 4
    .param p0, "payOrderInfo"    # Lcom/baidu/platformsdk/PayOrderInfo;
    .param p1, "debugCallbackUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            "Ljava/lang/String;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, "responser":Lcom/baidu/gamesdk/IResponse;, "Lcom/baidu/gamesdk/IResponse<Lcom/baidu/platformsdk/PayOrderInfo;>;"
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)Z

    move-result v0

    return v0
.end method

.method public static queryPayOrderStatus(Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)Z
    .registers 3
    .param p0, "cpOrderSerial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Lcom/baidu/platformsdk/OrderStatus;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "responser":Lcom/baidu/gamesdk/IResponse;, "Lcom/baidu/gamesdk/IResponse<Lcom/baidu/platformsdk/OrderStatus;>;"
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)Z

    move-result v0

    return v0
.end method

.method public static setSessionInvalidListener(Lcom/baidu/gamesdk/IResponse;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "response":Lcom/baidu/gamesdk/IResponse;, "Lcom/baidu/gamesdk/IResponse<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/e;->a(Lcom/baidu/gamesdk/IResponse;)V

    .line 76
    return-void
.end method

.method public static setSuspendWindowChangeAccountListener(Lcom/baidu/gamesdk/IResponse;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "changeAccountResponser":Lcom/baidu/gamesdk/IResponse;, "Lcom/baidu/gamesdk/IResponse<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/baidu/bdgame/sdk/obf/c;->a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V

    .line 67
    return-void
.end method

.method public static showFloatView(Landroid/app/Activity;)V
    .registers 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 172
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/c;->a(Landroid/app/Activity;)V

    .line 173
    return-void
.end method
