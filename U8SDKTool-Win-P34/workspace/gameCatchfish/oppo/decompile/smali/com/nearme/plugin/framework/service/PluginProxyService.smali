.class public abstract Lcom/nearme/plugin/framework/service/PluginProxyService;
.super Landroid/app/Service;
.source "PluginProxyService.java"


# instance fields
.field private a:Lcom/nearme/plugin/framework/service/IPluginService;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .registers 15

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 99
    if-nez p1, :cond_7

    move v0, v3

    .line 153
    :goto_6
    return v0

    .line 102
    :cond_7
    const-string v0, "LOG_ENABLE"

    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    const-string v1, "LOG_TAG"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->logInit(ZLjava/lang/String;)V

    .line 104
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginProxyService.startPlugin intent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "PLUGIN_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 106
    const-string v0, "LAUNCH_COMPONENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 109
    :try_start_36
    invoke-static {p0, v11}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_51

    move-result-object v0

    move-object v8, v0

    .line 113
    :goto_3b
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    if-eqz v0, :cond_59

    .line 114
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->c:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->e:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    move v0, v10

    .line 115
    goto :goto_6

    .line 111
    :catch_51
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    goto :goto_3b

    :cond_57
    move v0, v3

    .line 117
    goto :goto_6

    .line 120
    :cond_59
    iput-object v8, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->d:Ljava/lang/String;

    .line 121
    iput-object v11, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->c:Ljava/lang/String;

    .line 122
    iput-object v12, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->e:Ljava/lang/String;

    .line 123
    const-string v0, "USE_HOST_RESOURCES"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->b:I

    .line 124
    const-string v0, "PARAM_COMM_ACT_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->f:Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/nearme/plugin/framework/PluginStatic;->sClassloader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_78

    .line 126
    sget-object v0, Lcom/nearme/plugin/framework/PluginStatic;->sClassloader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 129
    :cond_78
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 130
    :cond_88
    const-string v9, "Param missing!"

    .line 146
    :goto_8a
    if-eqz v9, :cond_116

    .line 147
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginProxyService.startPlugin errInfo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach info : pluginName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", launchService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pluginApkFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c8
    move v0, v10

    .line 153
    goto/16 :goto_6

    .line 132
    :cond_cb
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_db

    .line 134
    const-string v9, "plugin file not exsist!"

    goto :goto_8a

    .line 1157
    :cond_db
    :try_start_db
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/nearme/plugin/framework/PluginStatic;->getOrCreatePkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1158
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->d:Ljava/lang/String;

    invoke-static {p0, v5, v0}, Lcom/nearme/plugin/framework/PluginStatic;->getOrCreateClassLoaderByPath(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1159
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->e:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1160
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nearme/plugin/framework/service/IPluginService;

    iput-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    .line 1161
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    iget-object v1, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->d:Ljava/lang/String;

    iget v6, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->b:I

    if-ne v6, v10, :cond_114

    move v6, v10

    :goto_100
    iget-object v7, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->f:Ljava/lang/String;

    move-object v3, p0

    invoke-interface/range {v0 .. v7}, Lcom/nearme/plugin/framework/service/IPluginService;->init(Ljava/lang/String;Ljava/lang/String;Landroid/app/Service;Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;ZLjava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    invoke-interface {v0}, Lcom/nearme/plugin/framework/service/IPluginService;->pluginOnCreate()V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_10b} :catch_10d

    goto/16 :goto_8a

    .line 142
    :catch_10d
    move-exception v0

    invoke-static {v0}, Lcom/nearme/plugin/framework/LogUtils;->getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_8a

    :cond_114
    move v6, v3

    .line 1161
    goto :goto_100

    .line 151
    :cond_116
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, "PluginProxyService start successfully!"

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c8
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    iget-boolean v1, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->g:Z

    if-eqz v1, :cond_c

    .line 56
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    invoke-interface {v0, p1}, Lcom/nearme/plugin/framework/service/IPluginService;->pluginOnBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    :cond_b
    :goto_b
    return-object v0

    .line 58
    :cond_c
    invoke-direct {p0, p1}, Lcom/nearme/plugin/framework/service/PluginProxyService;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 59
    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    if-eqz v1, :cond_b

    .line 60
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    invoke-interface {v0, p1}, Lcom/nearme/plugin/framework/service/IPluginService;->pluginOnBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->g:Z

    goto :goto_b
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    if-eqz v0, :cond_9

    .line 79
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    invoke-interface {v0}, Lcom/nearme/plugin/framework/service/IPluginService;->pluginOnDestroy()V

    .line 81
    :cond_9
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/nearme/plugin/framework/service/PluginProxyService;->a(Landroid/content/Intent;)Z

    move-result v0

    .line 30
    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    if-eqz v0, :cond_12

    .line 31
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    invoke-interface {v0, p1, p2}, Lcom/nearme/plugin/framework/service/IPluginService;->pluginOnStart(Landroid/content/Intent;I)V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->g:Z

    .line 34
    :cond_12
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 40
    iget-boolean v1, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->g:Z

    if-eqz v1, :cond_f

    .line 41
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    invoke-interface {v0, p1, p2, p3}, Lcom/nearme/plugin/framework/service/IPluginService;->pluginOnStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 49
    :cond_e
    :goto_e
    return v0

    .line 43
    :cond_f
    invoke-direct {p0, p1}, Lcom/nearme/plugin/framework/service/PluginProxyService;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 44
    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    if-eqz v1, :cond_e

    .line 45
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    invoke-interface {v0, p1, p2, p3}, Lcom/nearme/plugin/framework/service/IPluginService;->pluginOnStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->g:Z

    goto :goto_e
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    if-eqz v1, :cond_b

    .line 71
    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/IPluginService;

    invoke-interface {v0, p1}, Lcom/nearme/plugin/framework/service/IPluginService;->pluginOnUnbind(Landroid/content/Intent;)Z

    move-result v0

    .line 73
    :cond_b
    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 85
    const-string v0, "PARAM_START_PLUGIN_INTERNAL_ACTIVITIE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    if-eqz v0, :cond_1b

    .line 87
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1b

    .line 89
    const-string v1, "PLUGIN_NAME"

    invoke-virtual {p0}, Lcom/nearme/plugin/framework/service/PluginProxyService;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 93
    :cond_1b
    invoke-super {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method
