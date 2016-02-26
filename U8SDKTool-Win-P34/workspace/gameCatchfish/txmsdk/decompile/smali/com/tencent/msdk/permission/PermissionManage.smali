.class public Lcom/tencent/msdk/permission/PermissionManage;
.super Ljava/lang/Object;
.source "PermissionManage.java"


# static fields
.field private static volatile instance:Lcom/tencent/msdk/permission/PermissionManage; = null

.field public static final skipWhitelist:Ljava/lang/String; = "SkipWhitelist"

.field public static final wgLoginQQ:Ljava/lang/String; = "WGLoginQQ"

.field public static final wgLoginWX:Ljava/lang/String; = "WGLoginWX"

.field public static final wgRefreshWXToken:Ljava/lang/String; = "WGRefreshWXToken"

.field public static final wgSendToQQ:Ljava/lang/String; = "WGSendToQQ"

.field public static final wgSendToWeixin:Ljava/lang/String; = "WGSendToWeixin"

.field public static final wgSendToWeixinWithPhoto:Ljava/lang/String; = "WGSendToWeixinWithPhoto"


# instance fields
.field private model:Lcom/tencent/msdk/db/PermissionModel;

.field private permissionJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/permission/PermissionManage;->instance:Lcom/tencent/msdk/permission/PermissionManage;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/tencent/msdk/db/PermissionModel;

    invoke-direct {v0}, Lcom/tencent/msdk/db/PermissionModel;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/permission/PermissionManage;->model:Lcom/tencent/msdk/db/PermissionModel;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/permission/PermissionManage;->permissionJson:Lorg/json/JSONObject;

    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/permission/PermissionManage;
    .registers 2

    .prologue
    .line 28
    sget-object v0, Lcom/tencent/msdk/permission/PermissionManage;->instance:Lcom/tencent/msdk/permission/PermissionManage;

    if-nez v0, :cond_13

    .line 29
    const-class v1, Lcom/tencent/msdk/permission/PermissionManage;

    monitor-enter v1

    .line 30
    :try_start_7
    sget-object v0, Lcom/tencent/msdk/permission/PermissionManage;->instance:Lcom/tencent/msdk/permission/PermissionManage;

    if-nez v0, :cond_12

    .line 31
    new-instance v0, Lcom/tencent/msdk/permission/PermissionManage;

    invoke-direct {v0}, Lcom/tencent/msdk/permission/PermissionManage;-><init>()V

    sput-object v0, Lcom/tencent/msdk/permission/PermissionManage;->instance:Lcom/tencent/msdk/permission/PermissionManage;

    .line 33
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 35
    :cond_13
    sget-object v0, Lcom/tencent/msdk/permission/PermissionManage;->instance:Lcom/tencent/msdk/permission/PermissionManage;

    return-object v0

    .line 33
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private readPermissionFromDb()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/msdk/permission/PermissionManage;->model:Lcom/tencent/msdk/db/PermissionModel;

    invoke-virtual {v0}, Lcom/tencent/msdk/db/PermissionModel;->getRecord()V

    .line 76
    iget-object v0, p0, Lcom/tencent/msdk/permission/PermissionManage;->model:Lcom/tencent/msdk/db/PermissionModel;

    iget-object v0, v0, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/msdk/permission/PermissionManage;->setPermission(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private saveDefaultData()V
    .registers 4

    .prologue
    .line 45
    const-string v0, "{ \"WGLoginQQ\" : 0,\"WGLoginWX\" : 0 ,\"WGSendToQQ\" : 0 ,\"WGSendToWeixin\" : 0 ,\"WGSendToWeixinWithPhoto\" : 0 ,\"WGRefreshWXToken\" : 0 }"

    .line 47
    .local v0, "permission":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/msdk/permission/PermissionManage;->model:Lcom/tencent/msdk/db/PermissionModel;

    iput-object v0, v1, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/tencent/msdk/permission/PermissionManage;->model:Lcom/tencent/msdk/db/PermissionModel;

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/tencent/msdk/permission/PermissionManage;->model:Lcom/tencent/msdk/db/PermissionModel;

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/msdk/db/PermissionModel;->wxAppId:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/tencent/msdk/permission/PermissionManage;->model:Lcom/tencent/msdk/db/PermissionModel;

    invoke-virtual {v1}, Lcom/tencent/msdk/db/PermissionModel;->firstTimeSave()Z

    .line 51
    return-void
.end method

.method private savePermissionToDb(Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 62
    if-nez p1, :cond_3

    .line 69
    :goto_2
    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/tencent/msdk/permission/PermissionManage;->model:Lcom/tencent/msdk/db/PermissionModel;

    iput-object p1, v0, Lcom/tencent/msdk/db/PermissionModel;->permission:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/tencent/msdk/permission/PermissionManage;->model:Lcom/tencent/msdk/db/PermissionModel;

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/PermissionModel;->qqAppId:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/tencent/msdk/permission/PermissionManage;->model:Lcom/tencent/msdk/db/PermissionModel;

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/db/PermissionModel;->wxAppId:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/tencent/msdk/permission/PermissionManage;->model:Lcom/tencent/msdk/db/PermissionModel;

    invoke-virtual {v0}, Lcom/tencent/msdk/db/PermissionModel;->save()Z

    goto :goto_2
.end method

.method private setPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 83
    if-eqz p1, :cond_9

    .line 85
    :try_start_2
    new-instance v1, Lcom/tencent/msdk/remote/api/SafeJSONObject;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/remote/api/SafeJSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/msdk/permission/PermissionManage;->permissionJson:Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_9} :catch_a

    .line 89
    :cond_9
    :goto_9
    return-void

    .line 86
    :catch_a
    move-exception v0

    .line 87
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9
.end method


# virtual methods
.method public init()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tencent/msdk/permission/PermissionManage;->saveDefaultData()V

    .line 40
    invoke-direct {p0}, Lcom/tencent/msdk/permission/PermissionManage;->readPermissionFromDb()V

    .line 41
    return-void
.end method

.method public isHavePermission(Ljava/lang/String;)Z
    .registers 6
    .param p1, "func"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    :try_start_2
    iget-object v3, p0, Lcom/tencent/msdk/permission/PermissionManage;->permissionJson:Lorg/json/JSONObject;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/tencent/msdk/permission/PermissionManage;->permissionJson:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/tencent/msdk/permission/PermissionManage;->permissionJson:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_13} :catch_17

    move-result v3

    if-ne v1, v3, :cond_1d

    .line 102
    :goto_16
    return v1

    .line 98
    :catch_17
    move-exception v0

    .line 99
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v1, v2

    .line 100
    goto :goto_16

    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1d
    move v1, v2

    .line 102
    goto :goto_16
.end method

.method public updateDataFromNet(Ljava/lang/String;)V
    .registers 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/tencent/msdk/permission/PermissionManage;->savePermissionToDb(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/tencent/msdk/permission/PermissionManage;->setPermission(Ljava/lang/String;)V

    .line 59
    return-void
.end method
