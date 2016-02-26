.class public Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;
.super Ljava/lang/Object;
.source "PluginFrameworkVersionSpUtils.java"


# static fields
.field public static final CUR_VERION_KEY_PREFIX:Ljava/lang/String; = "cur_version_of_"

.field public static final SP_NAME:Ljava/lang/String; = "plugin_framework"

.field public static final UPDATE_VERION_KEY_PREFIX:Ljava/lang/String; = "update_version_of_"

.field private static a:Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "plugin_framework"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->b:Landroid/content/SharedPreferences;

    .line 19
    iget-object v0, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->c:Landroid/content/SharedPreferences$Editor;

    .line 20
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;
    .registers 3

    .prologue
    .line 23
    sget-object v0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->a:Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    if-nez v0, :cond_13

    .line 24
    const-class v1, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    monitor-enter v1

    .line 25
    :try_start_7
    sget-object v0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->a:Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    if-nez v0, :cond_12

    .line 26
    new-instance v0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    invoke-direct {v0, p0}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->a:Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    .line 28
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 30
    :cond_13
    sget-object v0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->a:Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    return-object v0

    .line 28
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public getCurInstalledVersion(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cur_version_of_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUpdateVersion(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update_version_of_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public saveCurInstalledVersion(Ljava/lang/String;I)Z
    .registers 6

    .prologue
    .line 34
    iget-object v0, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->c:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cur_version_of_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 35
    iget-object v0, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public saveUpdateVersion(Ljava/lang/String;I)Z
    .registers 6

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->c:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update_version_of_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 44
    iget-object v0, p0, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
