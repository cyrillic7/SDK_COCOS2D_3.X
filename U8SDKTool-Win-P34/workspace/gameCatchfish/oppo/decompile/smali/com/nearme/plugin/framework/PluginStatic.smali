.class public abstract Lcom/nearme/plugin/framework/PluginStatic;
.super Ljava/lang/Object;
.source "PluginStatic.java"


# static fields
.field public static final ACTIVITY_RESULT_CODE:Ljava/lang/String; = "ACTIVITY_RESULT_CODE"

.field public static final ACTIVITY_RESULT_CONTENT:Ljava/lang/String; = "ACTIVITY_RESULT_CONTENT"

.field public static final NOT_USE_HOST_RESOURCES:I = -0x1

.field public static final PARAM_CLEAR_TOP:Ljava/lang/String; = "CLEAR_TOP"

.field public static final PARAM_COMM_ACT_NAME:Ljava/lang/String; = "PARAM_COMM_ACT_NAME"

.field public static final PARAM_LAUNCH_COMPONENT:Ljava/lang/String; = "LAUNCH_COMPONENT"

.field public static final PARAM_LOG_ENABLE:Ljava/lang/String; = "LOG_ENABLE"

.field public static final PARAM_LOG_TAG:Ljava/lang/String; = "LOG_TAG"

.field public static final PARAM_PLUGIN_NAME:Ljava/lang/String; = "PLUGIN_NAME"

.field public static final PARAM_START_PLUGIN_INTERNAL_ACTIVITIE:Ljava/lang/String; = "PARAM_START_PLUGIN_INTERNAL_ACTIVITIE"

.field public static final PARAM_USE_HOST_RESOURCES:Ljava/lang/String; = "USE_HOST_RESOURCES"

.field public static final USER_HOST_RESOURCES:I = 0x1

.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ldalvik/system/DexClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nearme/plugin/framework/activity/IPluginActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static sClassloader:Ljava/lang/ClassLoader;

.field public static final sPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nearme/plugin/framework/PluginStatic;->a:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/nearme/plugin/framework/PluginStatic;->sPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nearme/plugin/framework/PluginStatic;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 89
    :try_start_1
    const-class v0, Landroid/view/LayoutInflater;

    const-string v2, "sConstructorMap"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 92
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 93
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_19

    move v0, v1

    .line 98
    :goto_18
    return v0

    .line 96
    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static add(Lcom/nearme/plugin/framework/activity/IPluginActivity;)V
    .registers 2

    .prologue
    .line 44
    sget-object v0, Lcom/nearme/plugin/framework/PluginStatic;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public static getActivitys()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nearme/plugin/framework/activity/IPluginActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/nearme/plugin/framework/PluginStatic;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getOrCreateClassLoaderByPath(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    if-nez p1, :cond_6

    .line 66
    invoke-static {p0, p2}, Lcom/nearme/plugin/framework/PluginStatic;->getOrCreatePkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 68
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    sget-object v0, Lcom/nearme/plugin/framework/PluginStatic;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexClassLoader;

    .line 70
    if-nez v0, :cond_58

    .line 71
    sget-object v0, Lcom/nearme/plugin/framework/PluginStatic;->a:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexClassLoader;

    .line 72
    if-eqz v0, :cond_3b

    .line 73
    invoke-static {}, Lcom/nearme/plugin/framework/PluginStatic;->a()Z

    .line 74
    sget-object v0, Lcom/nearme/plugin/framework/PluginStatic;->a:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_3b
    invoke-static {p0}, Lcom/nearme/plugin/framework/PathUtils;->getOptimizedDexPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {p0}, Lcom/nearme/plugin/framework/PathUtils;->getLibPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 78
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, p2, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 79
    sget-object v2, Lcom/nearme/plugin/framework/PluginStatic;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lcom/nearme/plugin/framework/PluginStatic;->a:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_58
    sput-object v0, Lcom/nearme/plugin/framework/PluginStatic;->sClassloader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getOrCreatePkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4

    .prologue
    .line 52
    sget-object v0, Lcom/nearme/plugin/framework/PluginStatic;->sPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 53
    if-nez v0, :cond_1e

    .line 54
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/nearme/plugin/framework/ApkFileParser;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 55
    if-nez v0, :cond_19

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Get Package Info Failed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_19
    sget-object v1, Lcom/nearme/plugin/framework/PluginStatic;->sPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_1e
    return-object v0
.end method

.method public static remove(Lcom/nearme/plugin/framework/activity/IPluginActivity;)V
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcom/nearme/plugin/framework/PluginStatic;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method
