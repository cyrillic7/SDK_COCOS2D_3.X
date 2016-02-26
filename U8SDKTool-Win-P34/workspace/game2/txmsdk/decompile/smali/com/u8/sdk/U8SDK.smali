.class public Lcom/u8/sdk/U8SDK;
.super Ljava/lang/Object;
.source "U8SDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/u8/sdk/U8SDK$AuthTask;,
        Lcom/u8/sdk/U8SDK$OrderTask;
    }
.end annotation


# static fields
.field private static final APP_GAME_NAME:Ljava/lang/String; = "U8_Game_Application"

.field private static final APP_PROXY_NAME:Ljava/lang/String; = "U8_APPLICATION_PROXY_NAME"

.field private static final DEFAULT_PKG_NAME:Ljava/lang/String; = "com.u8.sdk"

.field private static final LOGIC_CHANNEL_PREFIX:Ljava/lang/String; = "u8channel_"

.field private static instance:Lcom/u8/sdk/U8SDK;


# instance fields
.field private activityCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/u8/sdk/IActivityCallback;",
            ">;"
        }
    .end annotation
.end field

.field private application:Landroid/app/Application;

.field private applicationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/u8/sdk/IApplicationListener;",
            ">;"
        }
    .end annotation
.end field

.field private channel:I

.field private context:Landroid/app/Activity;

.field private developInfo:Lcom/u8/sdk/SDKParams;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/u8/sdk/IU8SDKListener;",
            ">;"
        }
    .end annotation
.end field

.field private loadingActivity:Landroid/app/ProgressDialog;

.field private mainThreadHandler:Landroid/os/Handler;

.field private metaData:Landroid/os/Bundle;

.field private sdkUserID:Ljava/lang/String;

.field private tokenData:Lcom/u8/sdk/verify/UToken;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/u8/sdk/U8SDK;->sdkUserID:Ljava/lang/String;

    iput-object v0, p0, Lcom/u8/sdk/U8SDK;->tokenData:Lcom/u8/sdk/verify/UToken;

    iput-object v0, p0, Lcom/u8/sdk/U8SDK;->loadingActivity:Landroid/app/ProgressDialog;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/u8/sdk/U8SDK;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/u8/sdk/U8SDK;->listeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/u8/sdk/U8SDK;->applicationListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/U8SDK;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/u8/sdk/U8SDK;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/u8/sdk/U8SDK;->showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/u8/sdk/U8SDK;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/u8/sdk/U8SDK;->hideProgressDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$3(Lcom/u8/sdk/U8SDK;Lcom/u8/sdk/verify/UToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/u8/sdk/U8SDK;->onAuthResult(Lcom/u8/sdk/verify/UToken;)V

    return-void
.end method

.method public static getInstance()Lcom/u8/sdk/U8SDK;
    .locals 1

    sget-object v0, Lcom/u8/sdk/U8SDK;->instance:Lcom/u8/sdk/U8SDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/U8SDK;

    invoke-direct {v0}, Lcom/u8/sdk/U8SDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/U8SDK;->instance:Lcom/u8/sdk/U8SDK;

    :cond_0
    sget-object v0, Lcom/u8/sdk/U8SDK;->instance:Lcom/u8/sdk/U8SDK;

    return-object v0
.end method

.method private hideProgressDialog(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->loadingActivity:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/u8/sdk/U8SDK;->loadingActivity:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method private newApplicationInstance(Landroid/app/Application;Ljava/lang/String;)Lcom/u8/sdk/IApplicationListener;
    .locals 5

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/u8/sdk/SDKTools;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "com.u8.sdk"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/u8/sdk/IApplicationListener;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_1
    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private onAuthResult(Lcom/u8/sdk/verify/UToken;)V
    .locals 3

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->isSuc()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/u8/sdk/verify/UToken;->getSdkUserID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/u8/sdk/U8SDK;->sdkUserID:Ljava/lang/String;

    iput-object p1, p0, Lcom/u8/sdk/U8SDK;->tokenData:Lcom/u8/sdk/verify/UToken;

    :cond_0
    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IU8SDKListener;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IU8SDKListener;->onAuthResult(Lcom/u8/sdk/verify/UToken;)V

    goto :goto_0
.end method

.method private showProgressDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->loadingActivity:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/u8/sdk/U8SDK;->loadingActivity:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->loadingActivity:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/u8/sdk/U8SDK$2;

    invoke-direct {v1, p0}, Lcom/u8/sdk/U8SDK$2;-><init>(Lcom/u8/sdk/U8SDK;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->loadingActivity:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public getAppID()I
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    const-string v1, "U8_APPID"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/SDKParams;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    const-string v1, "U8_APPID"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/SDKParams;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    const-string v1, "U8_APPKEY"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/SDKParams;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    const-string v1, "U8_APPKEY"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->application:Landroid/app/Application;

    return-object v0
.end method

.method public getAuthURL()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    const-string v1, "U8_AUTH_URL"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/SDKParams;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    const-string v1, "U8_AUTH_URL"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrChannel()I
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    const-string v1, "U8_Channel"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/SDKParams;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    const-string v1, "U8_Channel"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/SDKParams;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLogicChannel()I
    .locals 3

    iget v1, p0, Lcom/u8/sdk/U8SDK;->channel:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/u8/sdk/U8SDK;->channel:I

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->application:Landroid/app/Application;

    const-string v2, "u8channel_"

    invoke-static {v1, v2}, Lcom/u8/sdk/SDKTools;->getLogicChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/u8/sdk/U8SDK;->channel:I

    :goto_1
    iget v1, p0, Lcom/u8/sdk/U8SDK;->channel:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/u8/sdk/U8SDK;->channel:I

    goto :goto_1
.end method

.method public getMetaData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSDKParams()Lcom/u8/sdk/SDKParams;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    return-object v0
.end method

.method public getSDKUserID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->sdkUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKVersionCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    const-string v1, "U8_SDK_VERSION_CODE"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/SDKParams;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    const-string v1, "U8_SDK_VERSION_CODE"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUToken()Lcom/u8/sdk/verify/UToken;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->tokenData:Lcom/u8/sdk/verify/UToken;

    return-object v0
.end method

.method public init(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/u8/sdk/U8SDK;->context:Landroid/app/Activity;

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8User;->init()V

    invoke-static {}, Lcom/u8/sdk/plugin/U8Pay;->getInstance()Lcom/u8/sdk/plugin/U8Pay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8Pay;->init()V

    invoke-static {}, Lcom/u8/sdk/plugin/U8Push;->getInstance()Lcom/u8/sdk/plugin/U8Push;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8Push;->init()V

    invoke-static {}, Lcom/u8/sdk/plugin/U8Share;->getInstance()Lcom/u8/sdk/plugin/U8Share;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8Share;->init()V

    invoke-static {}, Lcom/u8/sdk/plugin/U8Analytics;->getInstance()Lcom/u8/sdk/plugin/U8Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8Analytics;->init()V

    invoke-static {}, Lcom/u8/sdk/plugin/U8Download;->getInstance()Lcom/u8/sdk/plugin/U8Download;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8Download;->init()V

    return-void
.end method

.method public isAuth()Z
    .locals 1

    invoke-virtual {p0}, Lcom/u8/sdk/U8SDK;->getAuthURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IActivityCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/u8/sdk/IActivityCallback;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAppAttachBaseContext(Landroid/app/Application;Landroid/content/Context;)V
    .locals 9

    iget-object v6, p0, Lcom/u8/sdk/U8SDK;->applicationListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/u8/sdk/PluginFactory;->getInstance()Lcom/u8/sdk/PluginFactory;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/u8/sdk/PluginFactory;->loadPluginInfo(Landroid/content/Context;)V

    invoke-static {}, Lcom/u8/sdk/PluginFactory;->getInstance()Lcom/u8/sdk/PluginFactory;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/u8/sdk/PluginFactory;->getSDKParams(Landroid/content/Context;)Lcom/u8/sdk/SDKParams;

    move-result-object v6

    iput-object v6, p0, Lcom/u8/sdk/U8SDK;->developInfo:Lcom/u8/sdk/SDKParams;

    invoke-static {}, Lcom/u8/sdk/PluginFactory;->getInstance()Lcom/u8/sdk/PluginFactory;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/u8/sdk/PluginFactory;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Lcom/u8/sdk/U8SDK;->metaData:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/u8/sdk/U8SDK;->metaData:Landroid/os/Bundle;

    const-string v7, "U8_APPLICATION_PROXY_NAME"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/u8/sdk/U8SDK;->metaData:Landroid/os/Bundle;

    const-string v7, "U8_APPLICATION_PROXY_NAME"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/u8/sdk/U8SDK;->metaData:Landroid/os/Bundle;

    const-string v7, "U8_Game_Application"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/u8/sdk/U8SDK;->metaData:Landroid/os/Bundle;

    const-string v7, "U8_Game_Application"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/u8/sdk/U8SDK;->newApplicationInstance(Landroid/app/Application;Ljava/lang/String;)Lcom/u8/sdk/IApplicationListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/u8/sdk/U8SDK;->applicationListeners:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v6, p0, Lcom/u8/sdk/U8SDK;->applicationListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    return-void

    :cond_2
    aget-object v3, v5, v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0, p1, v3}, Lcom/u8/sdk/U8SDK;->newApplicationInstance(Landroid/app/Application;Ljava/lang/String;)Lcom/u8/sdk/IApplicationListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v8, p0, Lcom/u8/sdk/U8SDK;->applicationListeners:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/IApplicationListener;

    invoke-interface {v1, p2}, Lcom/u8/sdk/IApplicationListener;->onProxyAttachBaseContext(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onAppConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->applicationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IApplicationListener;

    invoke-interface {v0, p2}, Lcom/u8/sdk/IApplicationListener;->onProxyConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onAppCreate(Landroid/app/Application;)V
    .locals 3

    iput-object p1, p0, Lcom/u8/sdk/U8SDK;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->applicationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IApplicationListener;

    invoke-interface {v0}, Lcom/u8/sdk/IApplicationListener;->onProxyCreate()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IActivityCallback;

    invoke-interface {v0}, Lcom/u8/sdk/IActivityCallback;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IActivityCallback;

    invoke-interface {v0}, Lcom/u8/sdk/IActivityCallback;->onCreate()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IActivityCallback;

    invoke-interface {v0}, Lcom/u8/sdk/IActivityCallback;->onDestroy()V

    goto :goto_0
.end method

.method public onGotOrder(Lcom/u8/sdk/PayParams;Lcom/u8/sdk/U8Order;)V
    .locals 2

    const-string v0, "UniSDK"

    const-string v1, "Get Order Success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8SDK$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/u8/sdk/U8SDK$1;-><init>(Lcom/u8/sdk/U8SDK;Lcom/u8/sdk/U8Order;Lcom/u8/sdk/PayParams;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitResult(Lcom/u8/sdk/InitResult;)V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IU8SDKListener;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IU8SDKListener;->onInitResult(Lcom/u8/sdk/InitResult;)V

    goto :goto_0
.end method

.method public onLoginResult(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/u8/sdk/U8SDK;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/u8/sdk/U8SDK;->isAuth()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/u8/sdk/U8SDK$AuthTask;

    invoke-direct {v0, p0}, Lcom/u8/sdk/U8SDK$AuthTask;-><init>(Lcom/u8/sdk/U8SDK;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/u8/sdk/U8SDK$AuthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/IU8SDKListener;

    invoke-interface {v1, p1}, Lcom/u8/sdk/IU8SDKListener;->onLoginResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLogout()V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IU8SDKListener;

    invoke-interface {v0}, Lcom/u8/sdk/IU8SDKListener;->onLogout()V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IActivityCallback;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IActivityCallback;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IActivityCallback;

    invoke-interface {v0}, Lcom/u8/sdk/IActivityCallback;->onPause()V

    goto :goto_0
.end method

.method public onPayResult(Lcom/u8/sdk/PayResult;)V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IU8SDKListener;

    invoke-interface {v0, p1}, Lcom/u8/sdk/IU8SDKListener;->onPayResult(Lcom/u8/sdk/PayResult;)V

    goto :goto_0
.end method

.method public onRestart()V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IActivityCallback;

    invoke-interface {v0}, Lcom/u8/sdk/IActivityCallback;->onRestart()V

    goto :goto_0
.end method

.method public onResult(ILjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IU8SDKListener;

    invoke-interface {v0, p1, p2}, Lcom/u8/sdk/IU8SDKListener;->onResult(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IActivityCallback;

    invoke-interface {v0}, Lcom/u8/sdk/IActivityCallback;->onResume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IActivityCallback;

    invoke-interface {v0}, Lcom/u8/sdk/IActivityCallback;->onStart()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IActivityCallback;

    invoke-interface {v0}, Lcom/u8/sdk/IActivityCallback;->onStop()V

    goto :goto_0
.end method

.method public onSwitchAccount()V
    .locals 3

    iget-object v1, p0, Lcom/u8/sdk/U8SDK;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/IU8SDKListener;

    invoke-interface {v0}, Lcom/u8/sdk/IU8SDKListener;->onSwitchAccount()V

    goto :goto_0
.end method

.method public onSwitchAccount(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/u8/sdk/U8SDK;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/u8/sdk/U8SDK$AuthTask;

    invoke-direct {v0, p0}, Lcom/u8/sdk/U8SDK$AuthTask;-><init>(Lcom/u8/sdk/U8SDK;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v2}, Lcom/u8/sdk/U8SDK$AuthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/IU8SDKListener;

    invoke-interface {v1, p1}, Lcom/u8/sdk/IU8SDKListener;->onSwitchAccount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .locals 3

    new-instance v0, Lcom/u8/sdk/U8SDK$OrderTask;

    invoke-direct {v0, p0}, Lcom/u8/sdk/U8SDK$OrderTask;-><init>(Lcom/u8/sdk/U8SDK;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/u8/sdk/PayParams;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK$OrderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->mainThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->context:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->context:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setActivityCallback(Lcom/u8/sdk/IActivityCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->activityCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setSDKListener(Lcom/u8/sdk/IU8SDKListener;)V
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/u8/sdk/U8SDK;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
