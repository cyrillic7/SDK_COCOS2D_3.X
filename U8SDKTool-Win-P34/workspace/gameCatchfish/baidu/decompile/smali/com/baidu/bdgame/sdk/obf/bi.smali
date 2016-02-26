.class public abstract Lcom/baidu/bdgame/sdk/obf/bi;
.super Lcom/baidu/bdgame/sdk/obf/bn;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/bn;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/kd;->b()Lcom/baidu/bdgame/sdk/obf/cf;

    move-result-object v1

    .line 55
    if-nez v1, :cond_13

    .line 56
    const-string v0, "BaiduPlatformSDK"

    const-string v1, "baidu passport init failed"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_12
    return-void

    .line 59
    :cond_13
    const-string v2, "BaiduPlatformSDK"

    const-string v3, "baidu passport init"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v2, Lcom/baidu/sapi2/SapiConfiguration$Builder;

    invoke-direct {v2, p1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cf;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cf;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cf;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->setProductLineInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v1

    sget-object v2, Lcom/baidu/sapi2/utils/enums/Domain;->DOMAIN_ONLINE:Lcom/baidu/sapi2/utils/enums/Domain;

    invoke-virtual {v1, v2}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->setRuntimeEnvironment(Lcom/baidu/sapi2/utils/enums/Domain;)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->enableQuickUser(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/ju;->b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    sget-object v3, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_DEBUG:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    if-ne v2, v3, :cond_4f

    :goto_3f
    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->debug(Z)Lcom/baidu/sapi2/SapiConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiConfiguration$Builder;->build()Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v0

    .line 69
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getInstance()Lcom/baidu/sapi2/SapiAccountManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/SapiAccountManager;->init(Lcom/baidu/sapi2/SapiConfiguration;)V

    goto :goto_12

    .line 62
    :cond_4f
    const/4 v0, 0x0

    goto :goto_3f
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method protected abstract a(Landroid/content/Context;)V
.end method

.method protected abstract a(Landroid/content/Context;ILjava/lang/String;)V
.end method

.method protected b(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/bi;->d(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method protected c(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/bi;->d(Landroid/content/Context;)V

    .line 51
    return-void
.end method
