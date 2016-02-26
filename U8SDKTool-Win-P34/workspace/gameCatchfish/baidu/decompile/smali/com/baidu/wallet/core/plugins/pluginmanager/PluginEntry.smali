.class public Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/ClassLoader;

.field private f:Landroid/content/res/Resources;

.field private g:Landroid/content/res/AssetManager;

.field private h:Landroid/content/res/Resources$Theme;

.field private i:Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;

.field private j:Lcom/baidu/wallet/core/plugins/pluginmanager/a;

.field private final k:Ljava/util/HashMap;

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d:Landroid/content/Context;

    iput-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->i:Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;

    iput-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->j:Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->k:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->l:Z

    iput-boolean v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->m:Z

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plugins"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->c(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_5c
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->c(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->f:Landroid/content/res/Resources;
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_64} :catch_65

    :goto_64
    return-void

    :catch_65
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(ZZ)V
    .registers 7

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry$1;-><init>(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;Landroid/os/Handler;ZZ)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d:Landroid/content/Context;

    const-class v3, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.baidu.paysdk.core.plugins.service.METHOD_EXTRA"

    const-string v3, "LOAG PLUGIN"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.baidu.paysdk.core.plugins.service.SERVICE_CALLBACK"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "com.baidu.paysdk.core.plugins.service.PACKAGE_NAME"

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;)Z
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lcom/baidu/wallet/core/plugins/pluginfake/a;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->e:Ljava/lang/ClassLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginfake/a;

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->k:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_2b} :catch_32
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_2b} :catch_38

    :goto_2b
    return-object v0

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2b

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2b

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2b
.end method

.method private b()Z
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d:Landroid/content/Context;

    const-string v1, "com.baidu.wallet.preferences_name"

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->g:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v2, v0, v3, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->h:Landroid/content/res/Resources$Theme;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    return-object v2

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic c(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->initClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->e:Ljava/lang/ClassLoader;

    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++ load plugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WalletPlugin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/wallet/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->e:Ljava/lang/ClassLoader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "WalletPlugin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->i:Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;
    :try_end_58
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_58} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_58} :catch_60
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_58} :catch_66
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_58} :catch_6c

    const/4 v0, 0x1

    :goto_59
    return v0

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    move v0, v1

    goto :goto_59

    :catch_60
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move v0, v1

    goto :goto_59

    :catch_66
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_59

    :catch_6c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_59
.end method

.method static synthetic d(Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;)Lcom/baidu/wallet/core/plugins/pluginmanager/a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->j:Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    return-object v0
.end method

.method public static loadLibrary(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plugins"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_4f

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :goto_4e
    return-void

    :cond_4f
    invoke-static {p3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_4e
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/baidu/wallet/core/plugins/pluginfake/a;
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginfake/a;

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b(Ljava/lang/String;)Lcom/baidu/wallet/core/plugins/pluginfake/a;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method protected a(ZLcom/baidu/wallet/core/plugins/pluginmanager/a;ZZ)V
    .registers 7

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->c()Z

    :cond_5
    if-eqz p2, :cond_18

    iput-object p2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->j:Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->i:Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->j:Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->j:Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p3, p4}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->onLoadSuccess(Ljava/lang/String;ZZ)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->j:Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->j:Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Lcom/baidu/wallet/core/plugins/pluginmanager/a;->onLoadOngoing(Ljava/lang/String;Z)V

    :cond_2a
    invoke-direct {p0, p3, p4}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->a(ZZ)V

    goto :goto_18
.end method

.method public clearListener()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->j:Lcom/baidu/wallet/core/plugins/pluginmanager/a;

    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->g:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->e:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getPlugin()Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->i:Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->f:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/Resources$Theme;
    .registers 3

    iget-boolean v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->m:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->m:Z

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->h:Landroid/content/res/Resources$Theme;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_c
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->h:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public initClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plugins/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, p1, v0, v2, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    return-object v1

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isNeedUpdate()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->l:Z

    return v0
.end method

.method public removeComponent(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->k:Ljava/util/HashMap;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method public setNeedUpdate(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->l:Z

    return-void
.end method
