.class public Lcom/tencent/msdk/tools/WeGameTools;
.super Ljava/lang/Object;
.source "WeGameTools.java"


# static fields
.field public static WXPAKAGENAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-string v0, "com.tencent.mm"

    sput-object v0, Lcom/tencent/msdk/tools/WeGameTools;->WXPAKAGENAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WGGetPlatformAPPVersion(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "platform"    # I

    .prologue
    .line 67
    sget v0, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    if-ne p1, v0, :cond_1e

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wechat version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    invoke-static {p0, v1}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_1d
    return-object v0

    .line 69
    :cond_1e
    sget v0, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-ne p1, v0, :cond_3c

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QQ version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.tencent.mobileqq"

    invoke-static {p0, v1}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 72
    :cond_3c
    const-string v0, ""

    goto :goto_1d
.end method

.method public static isInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_a} :catch_10

    move-result-object v1

    .line 35
    if-nez v1, :cond_e

    .line 41
    :goto_d
    return v2

    .line 38
    :cond_e
    const/4 v2, 0x1

    goto :goto_d

    .line 40
    :catch_10
    move-exception v0

    .line 41
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_d
.end method

.method public static isPlatformInstalled(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "platform"    # I

    .prologue
    .line 46
    sget v1, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    if-ne p1, v1, :cond_13

    .line 47
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 48
    .local v0, "wxapi":Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v1

    .line 53
    .end local v0    # "wxapi":Lcom/tencent/mm/sdk/openapi/IWXAPI;
    :goto_12
    return v1

    .line 49
    :cond_13
    sget v1, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-ne p1, v1, :cond_1e

    .line 50
    const-string v1, "com.tencent.mobileqq"

    invoke-static {p0, v1}, Lcom/tencent/msdk/tools/WeGameTools;->isInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_12

    .line 53
    :cond_1e
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static isPlatformSupportApi(Landroid/content/Context;I)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "platform"    # I

    .prologue
    .line 57
    sget v1, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    if-ne p1, v1, :cond_13

    .line 58
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 59
    .local v0, "wxapi":Lcom/tencent/mm/sdk/openapi/IWXAPI;
    invoke-interface {v0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v1

    .line 64
    .end local v0    # "wxapi":Lcom/tencent/mm/sdk/openapi/IWXAPI;
    :goto_12
    return v1

    .line 60
    :cond_13
    sget v1, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    if-ne p1, v1, :cond_19

    .line 61
    const/4 v1, 0x1

    goto :goto_12

    .line 64
    :cond_19
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static reflectResouce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p0, "RclassName"    # Ljava/lang/String;
    .param p1, "para"    # Ljava/lang/String;
    .param p2, "filed"    # Ljava/lang/String;

    .prologue
    .line 17
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    .line 18
    :cond_6
    const/4 v4, 0x0

    .line 28
    :goto_7
    return v4

    .line 19
    :cond_8
    const/4 v3, 0x0

    .line 21
    .local v3, "oj":Ljava/lang/Object;
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 23
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_37} :catch_39

    move-result v4

    goto :goto_7

    .line 25
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "oj":Ljava/lang/Object;
    :catch_39
    move-exception v1

    .line 26
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    const/4 v4, -0x1

    goto :goto_7
.end method
