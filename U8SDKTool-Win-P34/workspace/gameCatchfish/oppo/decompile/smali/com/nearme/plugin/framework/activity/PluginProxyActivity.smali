.class public abstract Lcom/nearme/plugin/framework/activity/PluginProxyActivity;
.super Landroid/app/Activity;
.source "PluginProxyActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 357
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_25

    .line 358
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dispatchTouchEvent"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/view/MotionEvent;

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 361
    :goto_24
    return v0

    :cond_25
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_24
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_b

    .line 277
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    invoke-interface {v0}, Lcom/nearme/plugin/framework/activity/IPluginActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 279
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_a
.end method

.method public getPlugin()Lcom/nearme/plugin/framework/activity/IPluginActivity;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 207
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_45

    .line 209
    :try_start_7
    sget-object v0, Lcom/nearme/plugin/framework/PluginStatic;->sClassloader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_12

    if-eqz p3, :cond_12

    .line 210
    sget-object v0, Lcom/nearme/plugin/framework/PluginStatic;->sClassloader:Ljava/lang/ClassLoader;

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 212
    :cond_12
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityResult"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_45} :catch_46

    .line 219
    :cond_45
    :goto_45
    return-void

    .line 216
    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45
.end method

.method public onBackPressed()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 233
    :try_start_a
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onBackPressed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_1e

    .line 263
    :goto_1d
    return-void

    .line 236
    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d

    .line 243
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "noteStateNotSaved"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 245
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_23 .. :try_end_3a} :catch_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_3a} :catch_48
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_3a} :catch_4d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_3a} :catch_52
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3a} :catch_57

    .line 258
    :goto_3a
    :try_start_3a
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_3d
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_1d

    .line 260
    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1d

    .line 247
    :catch_43
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3a

    .line 249
    :catch_48
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3a

    .line 251
    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3a

    .line 253
    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3a

    .line 255
    :catch_57
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PluginProxyActivity onCreate intent = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    if-eqz p1, :cond_9d

    move-object v0, p1

    .line 48
    :goto_1e
    const-string v1, "PLUGIN_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->d:Ljava/lang/String;

    .line 49
    const-string v1, "LAUNCH_COMPONENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    .line 50
    const-string v1, "USE_HOST_RESOURCES"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->b:I

    .line 52
    :try_start_36
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3e} :catch_171

    .line 58
    :goto_3e
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 59
    :cond_4e
    const-string v0, "Param error!"

    .line 79
    :goto_50
    if-nez v7, :cond_55

    .line 84
    :try_start_52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    :try_end_55
    .catch Landroid/app/Fragment$InstantiationException; {:try_start_52 .. :try_end_55} :catch_15f

    .line 89
    :cond_55
    :goto_55
    if-eqz v0, :cond_165

    .line 90
    sget-object v1, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PluginProxyActivity.onCreate startPlugin errInfo = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach info : mPluginName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPluginActivityName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPluginApkFilePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->finish()V

    .line 97
    :goto_9c
    return-void

    .line 43
    :cond_9d
    sget-object v1, Lcom/nearme/plugin/framework/PluginStatic;->sClassloader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_a6

    .line 44
    sget-object v1, Lcom/nearme/plugin/framework/PluginStatic;->sClassloader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 46
    :cond_a6
    invoke-virtual {p0}, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1e

    .line 61
    :cond_b0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 1101
    :try_start_bd
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/nearme/plugin/framework/PluginStatic;->getOrCreatePkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1102
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 1103
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_d4

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-nez v0, :cond_100

    .line 1104
    :cond_d4
    const-string v1, "Activity Not Found!"

    .line 65
    :goto_d6
    if-nez v1, :cond_174

    .line 66
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    invoke-interface {v0}, Lcom/nearme/plugin/framework/activity/IPluginActivity;->preOnCreate()V

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_e0} :catch_154

    .line 69
    :try_start_e0
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v2, Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCreate"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethodAndThrowsException(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_fb} :catch_16e

    move v0, v6

    :goto_fc
    move v7, v0

    move-object v0, v1

    .line 74
    goto/16 :goto_50

    .line 1106
    :cond_100
    :try_start_100
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    .line 1108
    :cond_109
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;

    invoke-static {p0, v4, v0}, Lcom/nearme/plugin/framework/PluginStatic;->getOrCreateClassLoaderByPath(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1109
    invoke-virtual {p0}, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 1110
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1111
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nearme/plugin/framework/activity/IPluginActivity;

    iput-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    .line 1112
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    iget-object v1, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;

    iget v2, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->b:I

    if-ne v2, v6, :cond_152

    move v5, v6

    :goto_12d
    move-object v2, p0

    invoke-interface/range {v0 .. v5}, Lcom/nearme/plugin/framework/activity/IPluginActivity;->init(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;Z)V

    .line 1114
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setIntent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_150} :catch_154

    move-object v1, v8

    .line 1116
    goto :goto_d6

    :cond_152
    move v5, v7

    .line 1112
    goto :goto_12d

    .line 73
    :catch_154
    move-exception v0

    :goto_155
    invoke-static {v0}, Lcom/nearme/plugin/framework/LogUtils;->getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_50

    .line 76
    :cond_15b
    const-string v0, "plugin file not exsist!"

    goto/16 :goto_50

    .line 86
    :catch_15f
    move-exception v1

    invoke-super {p0, v8}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_55

    .line 95
    :cond_165
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, "PluginProxyActivity start successfully!"

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9c

    .line 73
    :catch_16e
    move-exception v0

    move v7, v6

    goto :goto_155

    :catch_171
    move-exception v0

    goto/16 :goto_3e

    :cond_174
    move v0, v7

    goto :goto_fc
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 284
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_25

    .line 285
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCreateOptionsMenu"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/view/Menu;

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 288
    :goto_24
    return v0

    :cond_25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_24
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 193
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_1a

    .line 195
    :try_start_7
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_22

    .line 201
    :cond_1a
    :goto_1a
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->TAG:Ljava/lang/String;

    const-string v1, "PluginProxyActivity onDestroy"

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void

    .line 198
    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 143
    .line 144
    iget-object v1, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v1, :cond_2f

    .line 145
    iget-object v1, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v2, Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onKeyDown"

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v4, v7

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    aput-object p2, v5, v7

    invoke-static {v1, v2, v3, v4, v5}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 148
    :cond_2f
    if-nez v0, :cond_35

    .line 149
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 151
    :cond_35
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 223
    const/4 v0, 0x4

    if-ne v0, p1, :cond_9

    .line 224
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 11

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 314
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_28

    .line 315
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onMenuItemSelected"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    const-class v4, Landroid/view/MenuItem;

    aput-object v4, v3, v7

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object p2, v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_28
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 135
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_28

    const-string v0, "CLEAR_TOP"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 136
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onNewIntent"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_28
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 304
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_25

    .line 305
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onOptionsItemSelected"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/view/MenuItem;

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 308
    :goto_24
    return v0

    :cond_25
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_24
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 184
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_19

    .line 185
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPause"

    new-array v3, v4, [Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_19
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 294
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_25

    .line 295
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPrepareOptionsMenu"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/view/Menu;

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 298
    :goto_24
    return v0

    :cond_25
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_24
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 323
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 324
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_20

    .line 325
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRestoreInstanceState"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_20
    const-string v0, "PLUGIN_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->d:Ljava/lang/String;

    .line 329
    const-string v0, "LAUNCH_COMPONENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    .line 330
    const-string v0, "USE_HOST_RESOURCES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->b:I

    .line 331
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 166
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_19

    .line 167
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onResume"

    new-array v3, v4, [Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_19
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 335
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_1d

    .line 336
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onSaveInstanceState"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_1d
    const-string v0, "PLUGIN_NAME"

    iget-object v1, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v0, "LAUNCH_COMPONENT"

    iget-object v1, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v0, "USE_HOST_RESOURCES"

    iget v1, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 343
    return-void
.end method

.method protected onStart()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 157
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_19

    .line 158
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStart"

    new-array v3, v4, [Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_19
    return-void
.end method

.method protected onStop()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 175
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_19

    .line 176
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStop"

    new-array v3, v4, [Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_19
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 347
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_25

    .line 348
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dispatchTouchEvent"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/view/MotionEvent;

    aput-object v4, v3, v5

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 351
    :goto_24
    return v0

    :cond_25
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_24
.end method

.method public onUserInteraction()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 367
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_17

    .line 368
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onUserInteraction"

    new-array v3, v4, [Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :goto_16
    return-void

    .line 371
    :cond_17
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    goto :goto_16
.end method

.method public onWindowFocusChanged(Z)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 267
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 268
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    if-eqz v0, :cond_24

    .line 269
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/IPluginActivity;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onWindowFocusChanged"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nearme/plugin/framework/RefInvoker;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_24
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 6

    .prologue
    .line 121
    const-string v0, "PARAM_START_PLUGIN_INTERNAL_ACTIVITIE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 122
    if-eqz v0, :cond_1b

    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1b

    .line 125
    const-string v1, "PLUGIN_NAME"

    invoke-virtual {p0}, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 129
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 130
    return-void
.end method
