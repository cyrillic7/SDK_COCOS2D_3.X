.class public final Lcom/tencent/open/utils/Global;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/tencent/open/utils/Global;->a:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 56
    const/4 v0, 0x0

    .line 59
    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/tencent/open/utils/Global;->a:Landroid/content/Context;

    goto :goto_5
.end method

.method public static final getFilesDir()Ljava/io/File;
    .registers 1

    .prologue
    .line 85
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    .line 86
    const/4 v0, 0x0

    .line 88
    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    goto :goto_7
.end method

.method public static final getPackageName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 69
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    .line 70
    const-string v0, ""

    .line 72
    :goto_8
    return-object v0

    :cond_9
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static final getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 77
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_7
.end method

.method public static getVersionCode()I
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 111
    sget-object v0, Lcom/tencent/open/utils/Global;->a:Landroid/content/Context;

    const-string v1, "openSdk.pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    const-string v1, "app.vercode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static saveVersionCode()V
    .registers 4

    .prologue
    .line 92
    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    if-nez v0, :cond_7

    .line 108
    :cond_6
    :goto_6
    return-void

    .line 98
    :cond_7
    :try_start_7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_6

    .line 100
    const-string v2, "openSdk.pref"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 102
    const-string v2, "app.vercode"

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_2b} :catch_2c

    goto :goto_6

    .line 105
    :catch_2c
    move-exception v0

    .line 106
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_6
.end method

.method public static final setContext(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 64
    sput-object p0, Lcom/tencent/open/utils/Global;->a:Landroid/content/Context;

    .line 65
    return-void
.end method
