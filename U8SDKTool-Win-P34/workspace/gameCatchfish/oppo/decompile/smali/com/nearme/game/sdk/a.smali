.class public abstract Lcom/nearme/game/sdk/a;
.super Ljava/lang/Object;
.source "GCInternal.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field private static d:Lcom/nearme/game/sdk/common/util/GCExecutor;

.field private static e:Lcom/nearme/game/sdk/common/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nearme/game/sdk/common/util/LongSparseArray",
            "<",
            "Lcom/nearme/game/sdk/callback/ApiCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

.field protected c:Landroid/os/Handler;

.field private h:Landroid/os/Messenger;

.field private i:Z

.field private final j:[B

.field private final k:[B

.field private l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m:Z

.field private n:I

.field private o:Landroid/content/ServiceConnection;

.field private p:Ljava/lang/Runnable;

.field private q:Ljava/lang/Runnable;

.field private r:Landroid/os/Messenger;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x1b67

    const/16 v2, 0x1b59

    .line 67
    new-instance v0, Lcom/nearme/game/sdk/common/util/LongSparseArray;

    invoke-direct {v0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/nearme/game/sdk/a;->e:Lcom/nearme/game/sdk/common/util/LongSparseArray;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    sput-object v0, Lcom/nearme/game/sdk/a;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/nearme/game/sdk/a;->f:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    sput-object v0, Lcom/nearme/game/sdk/a;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/nearme/game/sdk/a;->g:Ljava/util/List;

    const/16 v1, 0x1b60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/nearme/game/sdk/a;->g:Ljava/util/List;

    const/16 v1, 0x1b65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/nearme/game/sdk/a;->g:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/nearme/game/sdk/a;->g:Ljava/util/List;

    const/16 v1, 0x1b68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/nearme/game/sdk/a;->g:Ljava/util/List;

    const/16 v1, 0x1b69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lcom/nearme/game/sdk/common/util/GCExecutor;

    invoke-direct {v0}, Lcom/nearme/game/sdk/common/util/GCExecutor;-><init>()V

    sput-object v0, Lcom/nearme/game/sdk/a;->d:Lcom/nearme/game/sdk/common/util/GCExecutor;

    .line 81
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/nearme/game/sdk/a;->i:Z

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nearme/game/sdk/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    iput-boolean v2, p0, Lcom/nearme/game/sdk/a;->m:Z

    .line 64
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nearme/game/sdk/a;->n:I

    .line 156
    new-instance v0, Lcom/nearme/game/sdk/a$2;

    invoke-direct {v0, p0}, Lcom/nearme/game/sdk/a$2;-><init>(Lcom/nearme/game/sdk/a;)V

    iput-object v0, p0, Lcom/nearme/game/sdk/a;->o:Landroid/content/ServiceConnection;

    .line 395
    new-instance v0, Lcom/nearme/game/sdk/a$6;

    invoke-direct {v0, p0}, Lcom/nearme/game/sdk/a$6;-><init>(Lcom/nearme/game/sdk/a;)V

    iput-object v0, p0, Lcom/nearme/game/sdk/a;->p:Ljava/lang/Runnable;

    .line 416
    new-instance v0, Lcom/nearme/game/sdk/a$7;

    invoke-direct {v0, p0}, Lcom/nearme/game/sdk/a$7;-><init>(Lcom/nearme/game/sdk/a;)V

    iput-object v0, p0, Lcom/nearme/game/sdk/a;->q:Ljava/lang/Runnable;

    .line 429
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/nearme/game/sdk/a$8;

    invoke-direct {v1}, Lcom/nearme/game/sdk/a$8;-><init>()V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nearme/game/sdk/a;->r:Landroid/os/Messenger;

    .line 84
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/nearme/game/sdk/a;->j:[B

    .line 85
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/nearme/game/sdk/a;->k:[B

    .line 86
    iput-object p1, p0, Lcom/nearme/game/sdk/a;->a:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/nearme/game/sdk/a;->b:Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    .line 88
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->b:Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->pkgName:Ljava/lang/String;

    .line 90
    :try_start_49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nearme/game/sdk/a;->b:Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    iget-object v1, v1, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->pkgName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/nearme/game/sdk/a;->b:Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v2, v1, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionCode:I

    .line 92
    iget-object v1, p0, Lcom/nearme/game/sdk/a;->b:Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, v1, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->versionName:Ljava/lang/String;
    :try_end_62
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_62} :catch_86
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_62} :catch_8b

    .line 98
    :goto_62
    new-instance v0, Lcom/nearme/game/sdk/a$1;

    invoke-direct {v0}, Lcom/nearme/game/sdk/a$1;-><init>()V

    iput-object v0, p0, Lcom/nearme/game/sdk/a;->c:Landroid/os/Handler;

    .line 1122
    iget-boolean v0, p2, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isDebugModel:Z

    iput-boolean v0, p0, Lcom/nearme/game/sdk/a;->i:Z

    .line 1123
    iget-boolean v0, p0, Lcom/nearme/game/sdk/a;->i:Z

    const-string v1, "GameCenterSDK"

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->logInit(ZLjava/lang/String;)V

    .line 1124
    const-string v0, "oppo_game_service.so"

    const-string v1, "oppo_game_service_210.so"

    invoke-static {p1, v0, v1}, Lcom/nearme/plugin/framework/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1126
    if-nez v0, :cond_90

    .line 1127
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "install game service failed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :catch_86
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_62

    .line 96
    :catch_8b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_62

    .line 1130
    :cond_90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/nearme/game/sdk/common/util/AppUtil;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    .line 1131
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u8bf7\u53c2\u7167\u63a5\u5165\u6587\u6863\u53ea\u80fd\u5728\u6e38\u620f\u4e3b\u8fdb\u7a0b\u4e2d\u8c03\u7528init\u64cd\u4f5c!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1134
    :cond_a8
    invoke-static {p1}, Lcom/nearme/game/sdk/common/util/AppUtil;->exitSdkPluginProcess(Landroid/content/Context;)V

    .line 1136
    invoke-direct {p0, p1}, Lcom/nearme/game/sdk/a;->a(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/nearme/game/sdk/a;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nearme/game/sdk/a;->h:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 3295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.nearme.game.service.ui.activity."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nearme/game/sdk/component/proxy/ProxyApiService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    const-string v1, "PLUGIN_NAME"

    const-string v2, "oppo_game_service.so"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "LAUNCH_COMPONENT"

    const-string v2, "com.nearme.game.service.ui.service.ApiPluginService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "PARAM_COMM_ACT_NAME"

    const-class v2, Lcom/nearme/game/sdk/component/proxy/ProxyActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, "LOG_ENABLE"

    iget-boolean v2, p0, Lcom/nearme/game/sdk/a;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    const-string v1, "LOG_TAG"

    const-string v2, "GameCenterSDK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/nearme/game/sdk/a;->o:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/nearme/game/sdk/a;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/nearme/game/sdk/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nearme/game/sdk/a;Lcom/nearme/game/sdk/callback/ApiCallback;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 2384
    new-instance v0, Lcom/nearme/game/sdk/c;

    invoke-direct {v0}, Lcom/nearme/game/sdk/c;-><init>()V

    .line 2385
    new-instance v1, Lcom/nearme/game/sdk/common/model/ApiResult;

    invoke-direct {v1}, Lcom/nearme/game/sdk/common/model/ApiResult;-><init>()V

    .line 2386
    const/16 v2, 0x3f2

    iput v2, v1, Lcom/nearme/game/sdk/common/model/ApiResult;->resultCode:I

    .line 2387
    iput-object p2, v1, Lcom/nearme/game/sdk/common/model/ApiResult;->resultMsg:Ljava/lang/String;

    .line 2388
    iput-object p1, v0, Lcom/nearme/game/sdk/c;->a:Lcom/nearme/game/sdk/callback/ApiCallback;

    .line 2389
    iput-object v1, v0, Lcom/nearme/game/sdk/c;->b:Lcom/nearme/game/sdk/common/model/ApiResult;

    .line 2390
    iget-object v1, p0, Lcom/nearme/game/sdk/a;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2391
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2392
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/nearme/game/sdk/a;Z)Z
    .registers 2

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/nearme/game/sdk/a;->m:Z

    return p1
.end method

.method static synthetic a(Lcom/nearme/game/sdk/a;)[B
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->j:[B

    return-object v0
.end method

.method static synthetic b()Ljava/util/List;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/nearme/game/sdk/a;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/nearme/game/sdk/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c()Lcom/nearme/game/sdk/common/util/LongSparseArray;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/nearme/game/sdk/a;->e:Lcom/nearme/game/sdk/common/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic c(Lcom/nearme/game/sdk/a;)V
    .registers 4

    .prologue
    .line 39
    .line 2180
    const/16 v0, 0x1b59

    iget-object v1, p0, Lcom/nearme/game/sdk/a;->b:Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    new-instance v2, Lcom/nearme/game/sdk/a$3;

    invoke-direct {v2, p0}, Lcom/nearme/game/sdk/a$3;-><init>(Lcom/nearme/game/sdk/a;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/nearme/game/sdk/a;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 39
    return-void
.end method

.method static synthetic d(Lcom/nearme/game/sdk/a;)[B
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->k:[B

    return-object v0
.end method

.method static synthetic e(Lcom/nearme/game/sdk/a;)I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/nearme/game/sdk/a;->n:I

    return v0
.end method

.method static synthetic f(Lcom/nearme/game/sdk/a;)I
    .registers 2

    .prologue
    .line 39
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/nearme/game/sdk/a;->n:I

    return v0
.end method

.method static synthetic g(Lcom/nearme/game/sdk/a;)Z
    .registers 2

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/nearme/game/sdk/a;->m:Z

    return v0
.end method

.method static synthetic h(Lcom/nearme/game/sdk/a;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic i(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->r:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic j(Lcom/nearme/game/sdk/a;)Landroid/os/Messenger;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->h:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic k(Lcom/nearme/game/sdk/a;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic l(Lcom/nearme/game/sdk/a;)V
    .registers 3

    .prologue
    .line 4151
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/nearme/game/sdk/a;->o:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_f

    .line 4152
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nearme/game/sdk/a;->o:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 39
    :cond_f
    return-void
.end method


# virtual methods
.method final declared-synchronized a()V
    .registers 3

    .prologue
    .line 455
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nearme/game/sdk/a;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nearme/game/sdk/a;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 457
    sget-object v0, Lcom/nearme/game/sdk/a;->e:Lcom/nearme/game/sdk/common/util/LongSparseArray;

    invoke-virtual {v0}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->clear()V

    .line 458
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_28

    .line 459
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->h:Landroid/os/Messenger;

    if-eqz v0, :cond_23

    .line 460
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nearme/game/sdk/a;->o:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 462
    :cond_23
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nearme/game/sdk/common/util/AppUtil;->exitSdkPluginProcess(Landroid/content/Context;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 464
    :cond_28
    monitor-exit p0

    return-void

    .line 455
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(I)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, p1, v0, v0}, Lcom/nearme/game/sdk/a;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 208
    return-void
.end method

.method final a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 8

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/nearme/game/sdk/a;->m:Z

    if-nez v0, :cond_23

    .line 220
    const/16 v0, 0x1b68

    if-eq v0, p1, :cond_c

    const/16 v0, 0x1b69

    if-ne v0, p1, :cond_23

    .line 221
    :cond_c
    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receive resume or pause before init accomplish, request is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput p1, p0, Lcom/nearme/game/sdk/a;->n:I

    .line 233
    :goto_22
    return-void

    .line 226
    :cond_23
    new-instance v0, Lcom/nearme/game/sdk/common/model/ApiRequest;

    invoke-direct {v0}, Lcom/nearme/game/sdk/common/model/ApiRequest;-><init>()V

    .line 227
    iput p1, v0, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    .line 228
    if-eqz p2, :cond_32

    .line 229
    invoke-static {p2}, Lcom/nearme/game/sdk/common/util/IOUtil;->ObjectToByte(Ljava/lang/Object;)[B

    move-result-object v1

    .line 230
    iput-object v1, v0, Lcom/nearme/game/sdk/common/model/ApiRequest;->params:[B

    .line 1299
    :cond_32
    const-string v1, "GCInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receive request "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v1, p0, Lcom/nearme/game/sdk/a;->b:Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    iget-boolean v1, v1, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    if-eqz v1, :cond_73

    .line 1301
    sget-object v1, Lcom/nearme/game/sdk/a;->g:Ljava/util/List;

    iget v2, v0, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 1302
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5355\u673a\u6e38\u620f\u8bf7\u52ff\u8c03\u7528\u652f\u4ed8\u3001\u9000\u51fa\u5f15\u5bfc\u4e4b\u5916\u7684\u5176\u4ed6\u63a5\u53e3, requestCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/nearme/game/sdk/common/model/ApiRequest;->requestCode:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1305
    :cond_73
    sget-object v1, Lcom/nearme/game/sdk/a;->d:Lcom/nearme/game/sdk/common/util/GCExecutor;

    new-instance v2, Lcom/nearme/game/sdk/a$5;

    invoke-direct {v2, p0, v0, p3}, Lcom/nearme/game/sdk/a$5;-><init>(Lcom/nearme/game/sdk/a;Lcom/nearme/game/sdk/common/model/ApiRequest;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    invoke-virtual {v1, v2}, Lcom/nearme/game/sdk/common/util/GCExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_22
.end method

.method final a(Landroid/content/Context;ILcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 7

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nearme/game/sdk/a;->b:Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;

    iget-boolean v0, v0, Lcom/nearme/game/sdk/common/model/biz/GameCenterSettings;->isSingleGame:Z

    if-eqz v0, :cond_27

    .line 241
    sget-object v0, Lcom/nearme/game/sdk/a;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5355\u673a\u6e38\u620f\u8bf7\u52ff\u8c03\u7528\u652f\u4ed8\u3001\u9000\u51fa\u5f15\u5bfc\u4e4b\u5916\u7684\u5176\u4ed6\u63a5\u53e3, requestCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_27
    sget-object v0, Lcom/nearme/game/sdk/a;->d:Lcom/nearme/game/sdk/common/util/GCExecutor;

    new-instance v1, Lcom/nearme/game/sdk/a$4;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/nearme/game/sdk/a$4;-><init>(Lcom/nearme/game/sdk/a;ILcom/nearme/game/sdk/callback/ApiCallback;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/common/util/GCExecutor;->execute(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method final a(Lcom/nearme/game/sdk/callback/ApiCallback;)V
    .registers 4

    .prologue
    .line 211
    const/16 v0, 0x1b64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/nearme/game/sdk/a;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 212
    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 215
    const/16 v0, 0x1b65

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nearme/game/sdk/a;->a(ILjava/lang/Object;Lcom/nearme/game/sdk/callback/ApiCallback;)V

    .line 216
    return-void
.end method

.method protected abstract b(I)Ljava/lang/String;
.end method
