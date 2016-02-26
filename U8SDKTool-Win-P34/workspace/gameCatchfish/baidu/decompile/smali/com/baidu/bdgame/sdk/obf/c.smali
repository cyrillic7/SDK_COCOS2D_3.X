.class public Lcom/baidu/bdgame/sdk/obf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/c$1;,
        Lcom/baidu/bdgame/sdk/obf/c$b;,
        Lcom/baidu/bdgame/sdk/obf/c$d;,
        Lcom/baidu/bdgame/sdk/obf/c$e;,
        Lcom/baidu/bdgame/sdk/obf/c$c;,
        Lcom/baidu/bdgame/sdk/obf/c$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static a(Lcom/baidu/gamesdk/BDGameSDKSetting;)Lcom/duoku/platform/DkPlatformSettings;
    .registers 4

    .prologue
    .line 44
    new-instance v0, Lcom/duoku/platform/DkPlatformSettings;

    invoke-direct {v0}, Lcom/duoku/platform/DkPlatformSettings;-><init>()V

    .line 45
    sget-object v1, Lcom/duoku/platform/DkPlatformSettings$GameCategory;->ONLINE_Game:Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/DkPlatformSettings;->setGameCategory(Lcom/duoku/platform/DkPlatformSettings$GameCategory;)V

    .line 47
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/b;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 48
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/DkPlatformSettings;->setAppid(Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/DkPlatformSettings;->setAppkey(Ljava/lang/String;)V

    .line 54
    :goto_24
    invoke-virtual {p0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->getOrientation()Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    move-result-object v1

    .line 55
    sget-object v2, Lcom/baidu/bdgame/sdk/obf/c$1;->a:[I

    invoke-virtual {v1}, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_52

    .line 60
    sget v1, Lcom/duoku/platform/DkPlatformSettings;->SCREEN_ORIENTATION_LANDSCAPE:I

    invoke-virtual {v0, v1}, Lcom/duoku/platform/DkPlatformSettings;->setOrient(I)V

    .line 63
    :goto_38
    return-object v0

    .line 51
    :cond_39
    invoke-virtual {p0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->getAppID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/DkPlatformSettings;->setAppid(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/DkPlatformSettings;->setAppkey(Ljava/lang/String;)V

    goto :goto_24

    .line 57
    :pswitch_4c
    sget v1, Lcom/duoku/platform/DkPlatformSettings;->SCREEN_ORIENTATION_PORTRAIT:I

    invoke-virtual {v0, v1}, Lcom/duoku/platform/DkPlatformSettings;->setOrient(I)V

    goto :goto_38

    .line 55
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4c
    .end packed-switch
.end method

.method public static a()V
    .registers 0

    .prologue
    .line 238
    invoke-static {}, Lcom/duoku/platform/DkPlatform;->closeFloatWindow()V

    .line 239
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 354
    invoke-static {p0}, Lcom/duoku/platform/DkPlatform;->showFloatView(Landroid/content/Context;)V

    .line 355
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/baidu/gamesdk/BDGameSDKSetting;Lcom/baidu/gamesdk/IResponse;)V
    .registers 6
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
    .line 133
    const-string v0, "DKPlatform"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/DkPlatform;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/c;->a(Lcom/baidu/gamesdk/BDGameSDKSetting;)Lcom/duoku/platform/DkPlatformSettings;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/c$a;->a(Landroid/content/Context;Lcom/baidu/gamesdk/BDGameSDKSetting;Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/c$a;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/duoku/platform/DkPlatform;->init(Landroid/app/Activity;Lcom/duoku/platform/DkPlatformSettings;Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 135
    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .registers 1

    .prologue
    .line 129
    invoke-static {p0}, Lcom/duoku/platform/DkPlatform;->initApplication(Landroid/app/Application;)V

    .line 130
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 258
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 259
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/c$e;->a(Landroid/content/Context;)Lcom/baidu/gamesdk/IResponse;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/c;->c(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V

    .line 266
    :goto_d
    return-void

    .line 262
    :cond_e
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/c;->c(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V

    .line 264
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/a;->g(Landroid/content/Context;)V

    goto :goto_d
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/c$c;->a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/c$c;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/c;->a(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 179
    return-void
.end method

.method public static a(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 1

    .prologue
    .line 182
    invoke-static {p0}, Lcom/duoku/platform/DkPlatform;->setDKSuspendWindowCallBack(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 183
    return-void
.end method

.method public static b()Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 1

    .prologue
    .line 358
    invoke-static {}, Lcom/duoku/platform/DkPlatform;->getAutoLoginUserInfo()Lcom/duoku/platform/bean/SynLoginUserInfo;

    move-result-object v0

    .line 360
    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 368
    invoke-static {p0}, Lcom/duoku/platform/DkPlatform;->getAnnouncementInfo(Landroid/app/Activity;)V

    .line 369
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 343
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/c;->a(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 345
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/c;->a()V

    .line 346
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 242
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/a;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 243
    const-string v0, "Login"

    const-string v1, "synchronous load SuspendWindonw"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/c$e;->a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/gamesdk/IResponse;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/c;->c(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V

    .line 255
    :cond_15
    :goto_15
    return-void

    .line 246
    :cond_16
    const-string v0, "Login"

    const-string v1, "asynchronous load SuspendWindonw"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {p0, v2}, Lcom/baidu/bdgame/sdk/obf/c;->c(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V

    .line 250
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/a;->g(Landroid/content/Context;)V

    .line 251
    if-eqz p1, :cond_15

    .line 252
    const/4 v0, 0x0

    const-string v1, "bd_game_login_success"

    invoke-static {p0, v1}, Lcom/baidu/bdgame/sdk/obf/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, v2}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_15
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/c$d;->a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/c$d;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/DkPlatform;->getFloatWindowData(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 270
    return-void
.end method
