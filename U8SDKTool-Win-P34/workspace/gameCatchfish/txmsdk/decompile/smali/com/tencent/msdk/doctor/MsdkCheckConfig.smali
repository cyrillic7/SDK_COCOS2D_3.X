.class public Lcom/tencent/msdk/doctor/MsdkCheckConfig;
.super Ljava/lang/Object;
.source "MsdkCheckConfig.java"


# instance fields
.field private final OFFERID:B

.field private final QQAPPID:B

.field private final QQAPPKEY:B

.field private final QQBASEINFO:B

.field private final WXAPPID:B

.field private final WXAPPKEY:B

.field private final WXBASEINFO:B

.field private channelFileName:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private msdkConfigFileName:Ljava/lang/String;

.field private needCheck:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x13

    iput-byte v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->QQBASEINFO:B

    .line 34
    const/16 v0, 0x1c

    iput-byte v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->WXBASEINFO:B

    .line 36
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->QQAPPID:B

    .line 37
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->QQAPPKEY:B

    .line 38
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->WXAPPID:B

    .line 39
    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->WXAPPKEY:B

    .line 40
    const/16 v0, 0x10

    iput-byte v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->OFFERID:B

    .line 43
    const-string v0, "msdkconfig.ini"

    iput-object v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->msdkConfigFileName:Ljava/lang/String;

    .line 44
    const-string v0, "channel.ini"

    iput-object v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->channelFileName:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    .line 46
    invoke-direct {p0}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->isNeedCheck()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    .line 47
    return-void
.end method

.method private containPermissions(Ljava/util/List;[Ljava/lang/String;)Z
    .registers 7
    .param p2, "needPermissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 166
    .local v0, "containAllPermissions":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_29

    .line 167
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Msdk: Missing Android Permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x0

    .line 166
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 172
    :cond_29
    return v0
.end method

.method private getValueFromAssetsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 152
    .local v2, "properties":Ljava/util/Properties;
    :try_start_5
    iget-object v4, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 153
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_16} :catch_22

    .line 159
    const-string v4, ""

    invoke-virtual {v2, p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "value":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "value":Ljava/lang/String;
    :goto_21
    return-object v3

    .line 154
    :catch_22
    move-exception v0

    .line 155
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Msdk: read assets/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 157
    const-string v3, "error"

    goto :goto_21
.end method

.method private isNeedCheck()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 53
    const-string v0, "MSDK_URL"

    .line 54
    .local v0, "urlKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->msdkConfigFileName:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->getValueFromAssetsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "urlValue":Ljava/lang/String;
    const-string v3, "error"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 71
    :cond_11
    :goto_11
    return v2

    .line 57
    :cond_12
    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 58
    const-string v3, "Msdk: MSDK_URL is not set properly in assets/msdkconfig.ini"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_11

    .line 60
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_32

    .line 61
    const-string v3, "Msdk: MSDK_URL in msdkconfig.ini should not end with \'/\', maybe you should delete the \'/\' "

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_11

    .line 64
    :cond_32
    const-string v3, "msdktest.qq.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string v3, "opensdktest.tencent.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string v3, "msdkdev.qq.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 66
    :cond_4a
    const/4 v2, 0x1

    goto :goto_11

    .line 67
    :cond_4c
    const-string v3, "opensdk.tencent.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "msdk.qq.com"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 70
    const-string v3, "Msdk: MSDK_URL may be illegal, are you sure to use it"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_11
.end method

.method private queryBaseInfo(B)Z
    .registers 3
    .param p1, "selectCode"    # B

    .prologue
    .line 143
    const/4 v0, 0x1

    .line 145
    .local v0, "bRet":Z
    return v0
.end method

.method private queryIntentFilter(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v1, 0x0

    .line 305
    .local v1, "isConfigCorrect":Z
    iget-object v4, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 307
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 308
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 309
    const/4 v1, 0x1

    .line 313
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_28
    if-nez v1, :cond_46

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Msdk: the intent-filter of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has not be configured correctly"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 316
    :cond_46
    return v1
.end method


# virtual methods
.method public checkAllConfig()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 86
    iget-boolean v1, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    if-nez v1, :cond_b

    .line 87
    const-string v1, "MSDK:MsdkCheckConfig is closed"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 90
    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->checkBasicConfig()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->checkQQConfig()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->checkWXConfig()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->checkPushConfig()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_23
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public checkBasicConfig()Z
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 99
    iget-boolean v10, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    if-nez v10, :cond_c

    .line 100
    const-string v9, "MSDK:MsdkCheckConfig is closed"

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 136
    :goto_b
    return v8

    .line 103
    :cond_c
    const-string v5, ""

    .line 104
    .local v5, "packageName":Ljava/lang/String;
    const-string v0, ""

    .line 105
    .local v0, "channel":Ljava/lang/String;
    const-string v1, "CHANNEL"

    .line 106
    .local v1, "channelKey":Ljava/lang/String;
    const/4 v4, 0x0

    .line 107
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    const/16 v10, 0xb

    new-array v3, v10, [Ljava/lang/String;

    const-string v10, "android.permission.INTERNET"

    aput-object v10, v3, v9

    const-string v10, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v10, v3, v8

    const/4 v8, 0x2

    const-string v10, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v10, v3, v8

    const/4 v8, 0x3

    const-string v10, "android.permission.READ_PHONE_STATE"

    aput-object v10, v3, v8

    const/4 v8, 0x4

    const-string v10, "android.permission.ACCESS_WIFI_STATE"

    aput-object v10, v3, v8

    const/4 v8, 0x5

    const-string v10, "android.permission.CHANGE_WIFI_STATE"

    aput-object v10, v3, v8

    const/4 v8, 0x6

    const-string v10, "android.permission.RESTART_PACKAGES"

    aput-object v10, v3, v8

    const/4 v8, 0x7

    const-string v10, "android.permission.GET_TASKS"

    aput-object v10, v3, v8

    const/16 v8, 0x8

    const-string v10, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    aput-object v10, v3, v8

    const/16 v8, 0x9

    const-string v10, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v10, v3, v8

    const/16 v8, 0xa

    const-string v10, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v10, v3, v8

    .line 120
    .local v3, "needPermissions":[Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/msdk/pf/WGPfManager;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 121
    const-string v8, "00000000"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6b

    iget-object v8, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->channelFileName:Ljava/lang/String;

    invoke-direct {p0, v1, v8}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->getValueFromAssetsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 122
    :cond_6b
    const-string v8, "Msdk: You are using a test channel"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 127
    :cond_70
    :goto_70
    iget-object v8, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 128
    .local v7, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 130
    const/16 v8, 0x1000

    :try_start_7e
    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_81
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7e .. :try_end_81} :catch_9a

    move-result-object v4

    .line 135
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 136
    .local v6, "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v6, v3}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->containPermissions(Ljava/util/List;[Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_b

    .line 123
    .end local v6    # "permissionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    :cond_8e
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 124
    const-string v8, "Msdk: channelID is empty"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_70

    .line 131
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    :catch_9a
    move-exception v2

    .line 132
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v8, v9

    .line 133
    goto/16 :goto_b
.end method

.method public checkPushConfig()Z
    .registers 16

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 390
    iget-boolean v12, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    if-nez v12, :cond_d

    .line 391
    const-string v12, "MSDK:MsdkCheckConfig is closed"

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    move v2, v11

    .line 474
    :cond_c
    :goto_c
    return v2

    .line 394
    :cond_d
    const-string v12, "PUSH"

    iget-object v13, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->msdkConfigFileName:Ljava/lang/String;

    invoke-direct {p0, v12, v13}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->getValueFromAssetsFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 395
    .local v8, "pushSwitch":Ljava/lang/String;
    const-string v12, "false"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    move v2, v11

    .line 396
    goto :goto_c

    .line 397
    :cond_1f
    const-string v12, "true"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2d

    .line 398
    const-string v11, "Msdk: PUSH in assets/msdkconfig.ini is not set properly"

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_c

    .line 402
    :cond_2d
    const/4 v0, 0x0

    .line 403
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v10, 0x0

    .line 404
    .local v10, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v9, 0x0

    .line 405
    .local v9, "receiverInfo":Landroid/content/pm/ActivityInfo;
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, "packageName":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".push.ForwardActivity"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, "pushActivityName":Ljava/lang/String;
    const-string v7, "com.tencent.msdk.push.HttpPushService"

    .line 408
    .local v7, "pushServiceName":Ljava/lang/String;
    const-string v6, "com.tencent.msdk.push.AlarmReveiver"

    .line 409
    .local v6, "pushReceiverName":Ljava/lang/String;
    const-string v4, ".msdk_push_v_1"

    .line 411
    .local v4, "processName":Ljava/lang/String;
    :try_start_4f
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 412
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 414
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v10

    .line 416
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_84
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4f .. :try_end_84} :catch_183
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4f .. :try_end_84} :catch_1e9

    move-result-object v9

    .line 436
    const/4 v2, 0x1

    .line 437
    .local v2, "isCorrect":Z
    iget v12, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v12, v12, 0x20

    const/16 v13, 0x20

    if-eq v12, v13, :cond_ab

    .line 438
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msdk: the excludeFromRecents of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " must be true"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 439
    const/4 v2, 0x0

    .line 441
    :cond_ab
    iget-boolean v12, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eq v12, v11, :cond_cc

    .line 442
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msdk: the exported of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " must be true"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 443
    const/4 v2, 0x0

    .line 445
    :cond_cc
    iget v12, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v12, v11, :cond_ed

    .line 446
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msdk: the launchMose of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " must be singleTop"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 447
    const/4 v2, 0x0

    .line 449
    :cond_ed
    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_116

    .line 450
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msdk: the taskAffinity of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " must be different from the PackageName of the game: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 452
    const/4 v2, 0x0

    .line 455
    :cond_116
    iget-boolean v12, v10, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eq v12, v11, :cond_137

    .line 456
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: the exported of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " must be true"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 457
    const/4 v2, 0x0

    .line 464
    :cond_137
    iget-object v11, v10, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_15c

    .line 465
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: the process of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " must be .msdk_push_v_1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 466
    const/4 v2, 0x0

    .line 469
    :cond_15c
    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 470
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: the process of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " must be .msdk_push_v_1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 471
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 418
    .end local v2    # "isCorrect":Z
    :catch_183
    move-exception v1

    .line 419
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 420
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1a7

    .line 421
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: Lack of activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 423
    :cond_1a7
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1c7

    .line 424
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: Lack of service: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 426
    :cond_1c7
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 427
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: Lack of recevice: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 430
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1e9
    move-exception v1

    .line 431
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 432
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Msdk: ForwardActivity.java must be put into package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".push"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method public checkQQConfig()Z
    .registers 22

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    move/from16 v18, v0

    if-nez v18, :cond_f

    .line 181
    const-string v18, "MSDK:MsdkCheckConfig is closed"

    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 182
    const/4 v12, 0x1

    .line 297
    :cond_e
    :goto_e
    return v12

    .line 184
    :cond_f
    const/16 v18, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->queryBaseInfo(B)Z

    move-result v18

    if-nez v18, :cond_1d

    .line 185
    const/4 v12, 0x0

    goto :goto_e

    .line 187
    :cond_1d
    const/4 v2, 0x0

    .line 188
    .local v2, "activityInfo1":Landroid/content/pm/ActivityInfo;
    const/4 v3, 0x0

    .line 189
    .local v3, "activityInfo2":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 190
    .local v15, "packageName":Ljava/lang/String;
    const-string v6, "com.tencent.tauth.AuthActivity"

    .line 191
    .local v6, "cls1":Ljava/lang/String;
    const-string v7, "com.tencent.connect.common.AssistActivity"

    .line 192
    .local v7, "cls2":Ljava/lang/String;
    sget-object v17, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 195
    .local v17, "sdkVersion":Ljava/lang/String;
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    invoke-direct {v0, v15, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x80

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x80

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_5c} :catch_197

    move-result-object v3

    .line 210
    const/4 v12, 0x1

    .line 211
    .local v12, "isCorrect":Z
    iget v0, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_89

    .line 212
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Msdk: the launchMose of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " be singleTask"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 213
    const/4 v12, 0x0

    .line 215
    :cond_89
    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    const/16 v19, 0x80

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_ba

    .line 216
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Msdk: the noHistory of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " must be true"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 217
    const/4 v12, 0x0

    .line 220
    :cond_ba
    iget v0, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e5

    .line 221
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Msdk: the screenOrientation of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " must be portrait"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 222
    const/4 v12, 0x0

    .line 225
    :cond_e5
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 226
    .local v16, "sdk":I
    const/16 v18, 0xd

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1e6

    .line 227
    const/16 v8, 0xa0

    .line 231
    .local v8, "config":I
    :goto_f3
    iget v0, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    move/from16 v18, v0

    and-int v18, v18, v8

    move/from16 v0, v18

    if-eq v0, v8, :cond_12a

    .line 232
    const/16 v18, 0xd

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1ea

    .line 233
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Msdk: the configChanges of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " must be "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "orientation|keyboardHidden"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 239
    :goto_129
    const/4 v12, 0x0

    .line 241
    :cond_12a
    iget v0, v3, Landroid/content/pm/ActivityInfo;->theme:I

    move/from16 v18, v0

    const v19, 0x1030010

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_156

    .line 242
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Msdk: the theme of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " must be Theme.Translucent.NoTitleBar"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 243
    const/4 v12, 0x0

    .line 246
    :cond_156
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v11, "intent":Landroid/content/Intent;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "tencent"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 248
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->queryIntentFilter(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_210

    .line 249
    const-string v18, "Msdk: QQ AppID for Initialiezed must be the same as configed in AndroidMenifest.xml"

    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 250
    const/4 v12, 0x0

    .line 251
    goto/16 :goto_e

    .line 199
    .end local v8    # "config":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "isCorrect":Z
    .end local v16    # "sdk":I
    :catch_197
    move-exception v9

    .line 200
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 201
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1bf

    .line 202
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Msdk: Lack of activity: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 204
    :cond_1bf
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1e3

    .line 205
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Msdk: Lack of activity: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 207
    :cond_1e3
    const/4 v12, 0x0

    goto/16 :goto_e

    .line 229
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "isCorrect":Z
    .restart local v16    # "sdk":I
    :cond_1e6
    const/16 v8, 0x4a0

    .restart local v8    # "config":I
    goto/16 :goto_f3

    .line 236
    :cond_1ea
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Msdk: the configChanges of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " must be "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "orientation|screenSize|keyboardHidden"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_129

    .line 253
    .restart local v11    # "intent":Landroid/content/Intent;
    :cond_210
    const-string v18, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v18, "android.intent.category.DEFAULT"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v18, "android.intent.category.BROWSABLE"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->queryIntentFilter(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_22e

    .line 257
    const/4 v12, 0x0

    .line 262
    :cond_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 263
    .local v14, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 266
    invoke-virtual {v14}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    .line 267
    .local v5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_e

    .line 270
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_264
    :goto_264
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 271
    .local v4, "cName":Ljava/lang/String;
    const-string v18, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_264

    .line 274
    const/4 v13, 0x0

    .line 276
    .local v13, "launchActivity":Landroid/content/pm/ActivityInfo;
    :try_start_27b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    new-instance v19, Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v15, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x80

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_29b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27b .. :try_end_29b} :catch_2d4

    move-result-object v13

    .line 283
    iget v0, v13, Landroid/content/pm/ActivityInfo;->configChanges:I

    move/from16 v18, v0

    and-int v18, v18, v8

    move/from16 v0, v18

    if-eq v0, v8, :cond_264

    .line 284
    const/16 v18, 0xd

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_2db

    .line 285
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Msdk: if the game Activity is Launch Activity,the configChanges of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " must be orientation|keyboardHidden"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 293
    :goto_2d2
    const/4 v12, 0x0

    goto :goto_264

    .line 279
    :catch_2d4
    move-exception v9

    .line 280
    .restart local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 281
    const/4 v12, 0x0

    goto/16 :goto_e

    .line 289
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2db
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Msdk: if the game Activity is Launch Activity,the configChanges of "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " must be orientation|screenSize|keyboardHidden"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto :goto_2d2
.end method

.method public checkWXConfig()Z
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 326
    iget-boolean v7, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    if-nez v7, :cond_d

    .line 327
    const-string v7, "MSDK:MsdkCheckConfig is closed"

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    move v3, v6

    .line 382
    :cond_c
    :goto_c
    return v3

    .line 330
    :cond_d
    const/16 v7, 0x1c

    invoke-direct {p0, v7}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->queryBaseInfo(B)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 334
    const/4 v0, 0x0

    .line 335
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "packageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".wxapi.WXEntryActivity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "wxeClassName":Ljava/lang/String;
    :try_start_2f
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 339
    iget-object v7, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_42} :catch_b8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_42} :catch_d4

    move-result-object v0

    .line 351
    const/4 v3, 0x1

    .line 352
    .local v3, "isCorrect":Z
    iget v7, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v7, v7, 0x20

    const/16 v8, 0x20

    if-eq v7, v8, :cond_52

    .line 353
    const-string v7, "Msdk: the excludeFromRecents of WXEntryActivity must be true"

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 354
    const/4 v3, 0x0

    .line 356
    :cond_52
    iget-boolean v7, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eq v7, v6, :cond_5c

    .line 357
    const-string v7, "Msdk: the exported of WXEntryActivity must be true"

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 358
    const/4 v3, 0x0

    .line 360
    :cond_5c
    iget v7, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v7, v6, :cond_66

    .line 361
    const-string v6, "Msdk: the launchMose of WXEntryActivity must be singleTop"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 362
    const/4 v3, 0x0

    .line 364
    :cond_66
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 365
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Msdk: the taskAffinity of WXEntryActivity must be different from the PackageName of the game: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 366
    const/4 v3, 0x0

    .line 369
    :cond_85
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 370
    .local v2, "intent":Landroid/content/Intent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v7

    iget-object v7, v7, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 371
    invoke-direct {p0, v2, v5}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->queryIntentFilter(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_fc

    .line 372
    const-string v6, "Msdk: WeiXin AppID for Initialiezed must be the same as configed in AndroidMenifest.xml"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 373
    const/4 v3, 0x0

    .line 374
    goto/16 :goto_c

    .line 341
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isCorrect":Z
    :catch_b8
    move-exception v1

    .line 342
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 343
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Msdk:  Lack of activity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 345
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_d4
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Msdk: WXEntryActivity.java must be put into package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".wxapi"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 376
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "isCorrect":Z
    :cond_fc
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-direct {p0, v2, v5}, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->queryIntentFilter(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 379
    const/4 v3, 0x0

    goto/16 :goto_c
.end method

.method public closeCheck()V
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    .line 83
    return-void
.end method

.method public openCheck()V
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/msdk/doctor/MsdkCheckConfig;->needCheck:Z

    .line 80
    return-void
.end method
