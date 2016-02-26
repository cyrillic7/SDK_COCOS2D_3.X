.class public Lcom/tencent/msdk/doctor/MsdkDoctor;
.super Ljava/lang/Object;
.source "MsdkDoctor.java"


# instance fields
.field private checkList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/msdk/doctor/CheckBase;",
            ">;"
        }
    .end annotation
.end field

.field private checkedKey:Ljava/lang/String;

.field private ctx:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "ctx"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "configChecked"

    iput-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkedKey:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    .line 34
    iget-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/msdk/doctor/checklist/Global;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/doctor/checklist/Global;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/msdk/doctor/checklist/QQ;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/doctor/checklist/QQ;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/msdk/doctor/checklist/WX;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/doctor/checklist/WX;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/msdk/doctor/checklist/Myapp;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/doctor/checklist/Myapp;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method


# virtual methods
.method public checkAll()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "finalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_28

    .line 44
    iget-object v3, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 45
    iget-object v3, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/msdk/doctor/CheckBase;

    invoke-virtual {v3}, Lcom/tencent/msdk/doctor/CheckBase;->check()Ljava/util/ArrayList;

    move-result-object v0

    .line 46
    .local v0, "checkResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    .end local v0    # "checkResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 50
    :cond_28
    return-object v1
.end method

.method public checkConfig()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 55
    iget-object v6, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    iget-object v7, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkedKey:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 71
    :goto_c
    return v4

    .line 59
    :cond_d
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLogPlatformSDKVersion()V

    .line 61
    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkWxConfig()Z

    move-result v3

    .line 62
    .local v3, "wxConfig":Z
    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkQQConfig()Z

    move-result v2

    .line 63
    .local v2, "qqConfig":Z
    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkMsdkConfig()Z

    move-result v0

    .line 64
    .local v0, "msdkConfig":Z
    invoke-virtual {p0}, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkOtherConfig()Z

    move-result v1

    .line 66
    .local v1, "otherConfig":Z
    if-eqz v3, :cond_30

    if-eqz v2, :cond_30

    if-eqz v0, :cond_30

    if-eqz v1, :cond_30

    .line 67
    iget-object v5, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    iget-object v6, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkedKey:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lcom/tencent/msdk/tools/SharedPreferencesTool;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_c

    .line 70
    :cond_30
    const-string v4, "Config Error, Please correct all config error before go on"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    move v4, v5

    .line 71
    goto :goto_c
.end method

.method public checkMsdkConfig()Z
    .registers 9

    .prologue
    .line 185
    const-string v5, "msdkconfig.ini"

    .line 186
    .local v5, "msdkConfigFileName":Ljava/lang/String;
    const/4 v2, 0x1

    .line 187
    .local v2, "isConfigFileExited":Z
    const/4 v3, 0x1

    .line 190
    .local v3, "isDomainRight":Z
    :try_start_4
    iget-object v6, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 191
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_59

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 192
    const/4 v2, 0x1

    .line 194
    iget-object v6, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-static {v6}, Lcom/tencent/msdk/config/ConfigManager;->getApiDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "domain":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 196
    const/4 v3, 0x0

    .line 197
    const-string v6, "Msdk: MSDK_URL is not set properly in assets/msdkconfig.ini"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 212
    .end local v0    # "domain":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    :goto_33
    if-eqz v2, :cond_60

    if-eqz v3, :cond_60

    const/4 v6, 0x1

    :goto_38
    return v6

    .line 198
    .restart local v0    # "domain":Ljava/lang/String;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_33

    .line 199
    const/4 v3, 0x0

    .line 200
    const-string v6, "Msdk: MSDK_URL in msdkconfig.ini should not end with \'/\', maybe you should delete the \'/\' "

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4d} :catch_4e

    goto :goto_33

    .line 206
    .end local v0    # "domain":Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_4e
    move-exception v1

    .line 207
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "Msdk: msdkconfig.ini file must be put into assets dir"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 209
    const/4 v2, 0x0

    goto :goto_33

    .line 203
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_59
    :try_start_59
    const-string v6, "Msdk: msdkconfig.ini must be put into assets dir"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_4e

    .line 204
    const/4 v2, 0x0

    goto :goto_33

    .line 212
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_60
    const/4 v6, 0x0

    goto :goto_38
.end method

.method public checkOtherConfig()Z
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public checkQQConfig()Z
    .registers 15

    .prologue
    const/4 v10, 0x1

    .line 142
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v11

    iget-object v11, v11, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    invoke-static {v11}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 179
    :cond_d
    :goto_d
    return v10

    .line 145
    :cond_e
    const/4 v5, 0x1

    .line 146
    .local v5, "isAuthActivityExisted":Z
    const/4 v6, 0x1

    .line 148
    .local v6, "isQQAppIdRight":Z
    iget-object v11, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "packageName":Ljava/lang/String;
    const-string v1, "com.tencent.tauth.AuthActivity"

    .line 151
    .local v1, "cls":Ljava/lang/String;
    :try_start_18
    iget-object v11, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v8, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x80

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 153
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_32

    .line 154
    const/4 v5, 0x0

    .line 179
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2c
    :goto_2c
    if-eqz v5, :cond_30

    if-nez v6, :cond_d

    :cond_30
    const/4 v10, 0x0

    goto :goto_d

    .line 158
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_32
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v4, "intent":Landroid/content/Intent;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tencent"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v12

    iget-object v12, v12, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 160
    iget-object v11, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const/high16 v12, 0x10000

    invoke-virtual {v11, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 163
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v6, 0x0

    .line 164
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 165
    .local v9, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6e

    .line 166
    const/4 v6, 0x1

    .line 170
    .end local v9    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_85
    if-nez v6, :cond_2c

    .line 171
    const-string v11, "QQ AppID for Initialiezed must be the same as configed in AndroidMenifest.xml "

    invoke-static {v11}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V
    :try_end_8c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_8c} :catch_8d
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_8c} :catch_92

    goto :goto_2c

    .line 174
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_8d
    move-exception v2

    .line 175
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2c

    .line 176
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_92
    move-exception v2

    .line 177
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2c
.end method

.method public checkWxConfig()Z
    .registers 16

    .prologue
    .line 78
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v12

    iget-object v12, v12, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-static {v12}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 79
    const/4 v12, 0x1

    .line 136
    :goto_d
    return v12

    .line 81
    :cond_e
    const/4 v5, 0x1

    .line 82
    .local v5, "isWxaExisted":Z
    const/4 v6, 0x1

    .line 83
    .local v6, "isWxaSingleTop":Z
    const/4 v7, 0x1

    .line 84
    .local v7, "isWxaTaskAffinityDiff":Z
    const/4 v4, 0x1

    .line 86
    .local v4, "isWxAppIdRight":Z
    const-string v9, ""

    .line 87
    .local v9, "packageName":Ljava/lang/String;
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 88
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".wxapi.WXEntryActivity"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 90
    .local v11, "wxeClassName":Ljava/lang/String;
    :try_start_31
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 91
    const/4 v5, 0x1

    .line 92
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v9, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 94
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_53

    .line 95
    const/4 v5, 0x0

    .line 136
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_49
    :goto_49
    if-eqz v5, :cond_11b

    if-eqz v6, :cond_11b

    if-eqz v7, :cond_11b

    if-eqz v4, :cond_11b

    const/4 v12, 0x1

    goto :goto_d

    .line 97
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_53
    const/4 v5, 0x1

    .line 99
    iget v12, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5f

    .line 100
    const/4 v6, 0x0

    .line 101
    const-string v12, "LauchMode of WXEntryActivity should be SingleTop"

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 104
    :cond_5f
    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6d

    .line 105
    const/4 v7, 0x0

    .line 106
    const-string v12, "taskAffinity of WXEntryActivity must different from you app packageName"

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 109
    :cond_6d
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v3, "intent":Landroid/content/Intent;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v13

    iget-object v13, v13, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 111
    iget-object v12, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/high16 v13, 0x10000

    invoke-virtual {v12, v3, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 114
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 115
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_a3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ba

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 116
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a3

    .line 117
    const/4 v4, 0x1

    .line 122
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_ba
    if-nez v4, :cond_49

    .line 123
    const-string v12, "Weixin AppID for Initialiezed must be the same as configed in AndroidMenifest.xml "

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_c1} :catch_c2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_c1} :catch_ef

    goto :goto_49

    .line 126
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_c2
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Weixin: WXEntryActivity.java must be put into package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".wxapi"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 129
    const/4 v5, 0x0

    .line 130
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_49

    .line 131
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_ef
    move-exception v1

    .line 132
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Weixin: WXEntryActivity.java must be put into package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/tencent/msdk/doctor/MsdkDoctor;->ctx:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".wxapi"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_49

    .line 136
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_11b
    const/4 v12, 0x0

    goto/16 :goto_d
.end method
