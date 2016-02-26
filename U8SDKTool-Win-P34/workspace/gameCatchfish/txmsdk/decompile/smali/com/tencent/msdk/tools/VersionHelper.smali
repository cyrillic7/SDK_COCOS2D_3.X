.class public Lcom/tencent/msdk/tools/VersionHelper;
.super Ljava/lang/Object;
.source "VersionHelper.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/tools/VersionHelper;->pkgName:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/tencent/msdk/tools/VersionHelper;->ctx:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/tencent/msdk/tools/VersionHelper;->pkgName:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 38
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 39
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_c} :catch_d

    .line 41
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_c
    return v3

    .line 40
    :catch_d
    move-exception v0

    .line 41
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_c
.end method

.method public static getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 27
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 28
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_b} :catch_c

    .line 30
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_b
    return-object v3

    .line 29
    :catch_c
    move-exception v0

    .line 30
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, ""

    goto :goto_b
.end method


# virtual methods
.method public compareVersion(Ljava/lang/String;)I
    .registers 5
    .param p1, "comparedVersion"    # Ljava/lang/String;

    .prologue
    .line 18
    iget-object v1, p0, Lcom/tencent/msdk/tools/VersionHelper;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/msdk/tools/VersionHelper;->pkgName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, "appVersion":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appVersion :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/tencent/msdk/tools/VersionHelper;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "version1"    # Ljava/lang/String;
    .param p2, "version2"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 52
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 85
    :cond_7
    :goto_7
    return v6

    .line 54
    :cond_8
    if-eqz p1, :cond_e

    if-nez p2, :cond_e

    move v6, v7

    .line 55
    goto :goto_7

    .line 56
    :cond_e
    if-nez p1, :cond_14

    if-eqz p2, :cond_14

    move v6, v8

    .line 57
    goto :goto_7

    .line 61
    :cond_14
    const-string v9, "\\."

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "versionArray1":[Ljava/lang/String;
    const-string v9, "\\."

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "versionArray2":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    :try_start_21
    array-length v9, v4

    if-ge v1, v9, :cond_3e

    array-length v9, v5

    if-ge v1, v9, :cond_3e

    .line 67
    aget-object v9, v4, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, "ver1":I
    aget-object v9, v5, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 69
    .local v3, "ver2":I
    if-ge v2, v3, :cond_37

    move v6, v8

    .line 70
    goto :goto_7

    .line 71
    :cond_37
    if-le v2, v3, :cond_3b

    move v6, v7

    .line 72
    goto :goto_7

    .line 66
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 76
    .end local v2    # "ver1":I
    .end local v3    # "ver2":I
    :cond_3e
    array-length v9, v4

    if-le v9, v1, :cond_43

    move v6, v7

    .line 77
    goto :goto_7

    .line 78
    :cond_43
    array-length v7, v5
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_44} :catch_48

    if-le v7, v1, :cond_7

    move v6, v8

    .line 79
    goto :goto_7

    .line 83
    :catch_48
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "NumberFormatException "

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    goto :goto_7
.end method
