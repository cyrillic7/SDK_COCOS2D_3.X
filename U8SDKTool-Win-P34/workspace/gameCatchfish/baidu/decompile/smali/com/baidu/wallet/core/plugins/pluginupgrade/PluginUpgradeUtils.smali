.class public final Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/NoProguard;


# static fields
.field public static final DOWNLOAD_PLUGIN_DOWNLOAD_DONE:I = 0x0

.field public static final DOWNLOAD_PLUGIN_DOWNLOAD_FAIL:I = 0x1

.field public static final DOWNLOAD_PLUGIN_DOWNLOAD_START:I = 0x2

.field public static final PLUGIN_DIR:Ljava/lang/String; = "plugins"

.field public static final TAG:Ljava/lang/String;

.field public static mInstance:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/HashMap;

.field private c:Z

.field private d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->c:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->c:Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 8

    const-string v0, "com.baidu.wallet.preferences_name"

    const-string v1, "plugin_config"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    :try_start_12
    const-class v1, [Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/JsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    if-eqz v0, :cond_33

    array-length v1, v0

    if-lez v1, :cond_33

    array-length v2, v0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v2, :cond_33

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->key:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2c} :catch_2f

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_33
    return-void
.end method

.method private a(Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;Landroid/content/Context;)V
    .registers 10

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;->plugin:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse$PluginInfo;

    iget-object v3, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse$PluginInfo;->data:[Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    if-eqz v3, :cond_42

    array-length v0, v3

    if-lez v0, :cond_42

    array-length v4, v3

    move v2, v1

    :goto_c
    if-ge v2, v4, :cond_42

    aget-object v5, v3, v2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    iget-object v6, v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->key:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    iget-object v6, v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->key:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_23
    iget-object v6, v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->key:Ljava/lang/String;

    const-string v0, "0"

    iget-object v5, v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->update:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    const/4 v0, 0x1

    :goto_30
    invoke-direct {p0, v6, v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->a(Ljava/lang/String;Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_37
    iget-object v6, v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->url:Ljava/lang/String;

    iput-object v6, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->url:Ljava/lang/String;

    iget-object v6, v5, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->version:Ljava/lang/String;

    iput-object v6, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->version:Ljava/lang/String;

    goto :goto_23

    :cond_40
    move v0, v1

    goto :goto_30

    :cond_42
    invoke-direct {p0, p2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->a(Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 4

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p2}, Lcom/baidu/wallet/core/plugins/pluginmanager/PluginEntry;->setNeedUpdate(Z)V

    :cond_13
    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->c:Z

    return p1
.end method

.method private b(Landroid/content/Context;)V
    .registers 12

    const-string v2, ""

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_7f

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-string v2, ""

    :goto_1f
    :try_start_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "name"

    iget-object v8, v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "key"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    iget-object v7, v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->version:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "url"

    iget-object v7, v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->url:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "info"

    iget-object v7, v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->info:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "update"

    iget-object v7, v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->update:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "size"

    iget-object v7, v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->size:Ljava/lang/String;

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "pluginDownloadId"

    iget-wide v8, v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->pluginDownloadId:J

    invoke-virtual {v6, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "icon_url"

    iget-object v2, v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->icon_url:Ljava/lang/String;

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_7a} :catch_7b

    goto :goto_1f

    :catch_7b
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7f
    :goto_7f
    return-void

    :cond_80
    :try_start_80
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.baidu.wallet.preferences_name"

    const-string v4, "plugin_config"

    invoke-static {p1, v3, v4, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_80 .. :try_end_8b} :catch_7b

    goto :goto_7f
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getRootPluginDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_69

    new-instance v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/b;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/b;-><init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    :try_start_1e
    array-length v0, v1

    if-lez v0, :cond_69

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v3, :cond_60

    aget-object v4, v1, v0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "version"

    invoke-virtual {v5, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_60
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_63} :catch_65

    move-result-object v0

    :goto_64
    return-object v0

    :catch_65
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_69
    const-string v0, ""

    goto :goto_64
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;
    .registers 2

    const-class v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->mInstance:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    invoke-direct {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->mInstance:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    :cond_e
    sget-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->mInstance:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_d
    return-object v0

    :cond_e
    const-string v0, "0"

    goto :goto_d
.end method


# virtual methods
.method public compareToIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method public getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    return-object v0
.end method

.method public getPluginConfigFromServer(Landroid/content/Context;Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V
    .registers 5

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/a;

    invoke-direct {v0, p1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/a;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/c;-><init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;Lcom/baidu/wallet/core/beans/IBeanResponseCallback;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/a;->setResponseCallback(Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/a;->execBean()V

    return-void
.end method

.method public getRootPluginDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->a:Ljava/lang/String;

    :cond_2d
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getmUpdatePluginDatas()Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public isConfigInfoForceUpdate(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getmUpdatePluginDatas()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    if-eqz v0, :cond_15

    const-string v1, "2"

    iget-object v0, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->update:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public isIgnorePluginUpdate(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const-string v1, "Wallet_plugin_version_is_ignore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2d

    const-string v0, ""

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2d
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    iget-object v0, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->version:Ljava/lang/String;

    goto :goto_15
.end method

.method public ismIsRequestConfigInfo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->c:Z

    return v0
.end method

.method public setCurrentContext(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->d:Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    return-void
.end method

.method public setIgnorePluginUpdate(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7

    const-string v1, "Wallet_plugin_version_is_ignore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_25

    const-string v0, ""

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/baidu/wallet/core/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_25
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    iget-object v0, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->version:Ljava/lang/String;

    goto :goto_15
.end method

.method public updateDownloadId(Ljava/lang/String;JLandroid/content/Context;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    invoke-direct {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;-><init>()V

    iput-object p1, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->key:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->version:Ljava/lang/String;

    iput-wide p2, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->pluginDownloadId:J

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string p5, "0"

    :cond_1f
    iput-object p5, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->update:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    invoke-direct {p0, p4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->b(Landroid/content/Context;)V

    return-void

    :cond_2a
    iput-object p1, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->key:Ljava/lang/String;

    iput-wide p2, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->pluginDownloadId:J

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string p5, "0"

    :cond_36
    iput-object p5, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->update:Ljava/lang/String;

    goto :goto_26
.end method
