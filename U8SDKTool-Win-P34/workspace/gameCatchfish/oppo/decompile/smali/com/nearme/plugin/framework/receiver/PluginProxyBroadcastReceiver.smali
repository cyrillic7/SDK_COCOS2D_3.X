.class public Lcom/nearme/plugin/framework/receiver/PluginProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PluginProxyBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Lcom/nearme/plugin/framework/receiver/IPluginBroadcastReceiver;
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 31
    const-string v0, "PLUGIN_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    const-string v0, "LAUNCH_COMPONENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 35
    :try_start_d
    invoke-static {p1, v1}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_81

    move-result-object v2

    .line 41
    :goto_11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_90

    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 44
    invoke-static {p1, v2}, Lcom/nearme/plugin/framework/PluginStatic;->getOrCreatePkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 46
    :try_start_2c
    invoke-static {p1, v0, v2}, Lcom/nearme/plugin/framework/PluginStatic;->getOrCreateClassLoaderByPath(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v4

    .line 48
    invoke-virtual {v4, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nearme/plugin/framework/receiver/IPluginBroadcastReceiver;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3a} :catch_87

    .line 50
    const/4 v5, 0x0

    move-object v3, p0

    :try_start_3c
    invoke-interface/range {v0 .. v5}, Lcom/nearme/plugin/framework/receiver/IPluginBroadcastReceiver;->init(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Ljava/lang/ClassLoader;Z)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_9b

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    .line 60
    :goto_42
    if-eqz v0, :cond_93

    .line 61
    sget-object v3, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PluginProxyBroadcastReceiver.startPlugin errInfo = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "attach info : pluginApk = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", launchReceiver = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", pluginApkFilePath = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_80
    return-object v6

    .line 37
    :catch_81
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v6

    goto :goto_11

    .line 52
    :catch_87
    move-exception v0

    :goto_88
    invoke-static {v0}, Lcom/nearme/plugin/framework/LogUtils;->getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 55
    :cond_8d
    const-string v0, "plugin file not exsist!"

    goto :goto_42

    .line 58
    :cond_90
    const-string v0, "Param error!"

    goto :goto_42

    .line 65
    :cond_93
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, "PluginProxyBroadcastReceiver start successfully!"

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    .line 52
    :catch_9b
    move-exception v3

    move-object v6, v0

    move-object v0, v3

    goto :goto_88
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 18
    sget-boolean v0, Lcom/nearme/plugin/framework/LogUtils;->sDebug:Z

    if-eqz v0, :cond_18

    .line 19
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginProxyBroadcastReceiver.onReceive intent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/nearme/plugin/framework/receiver/PluginProxyBroadcastReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/nearme/plugin/framework/receiver/IPluginBroadcastReceiver;

    move-result-object v0

    .line 22
    sget-boolean v1, Lcom/nearme/plugin/framework/LogUtils;->sDebug:Z

    if-eqz v1, :cond_34

    .line 23
    sget-object v1, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PluginProxyBroadcastReceiver.onReceive receiver = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_34
    if-eqz v0, :cond_39

    .line 26
    invoke-interface {v0, p1, p2}, Lcom/nearme/plugin/framework/receiver/IPluginBroadcastReceiver;->pluginOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 28
    :cond_39
    return-void
.end method
