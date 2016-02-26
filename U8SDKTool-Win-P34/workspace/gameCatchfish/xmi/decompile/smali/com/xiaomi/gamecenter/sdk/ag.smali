.class public final Lcom/xiaomi/gamecenter/sdk/ag;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/xiaomi/gamecenter/sdk/ag;


# instance fields
.field private a:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/util/concurrent/ConcurrentHashMap;

.field private g:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ag;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ag;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ag;->b:Lcom/xiaomi/gamecenter/sdk/ag;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ag;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ag;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/aj;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/aj;-><init>(Lcom/xiaomi/gamecenter/sdk/ag;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->g:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ag;I)I
    .registers 2

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ag;->e:I

    return p1
.end method

.method public static a()Lcom/xiaomi/gamecenter/sdk/ag;
    .registers 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ag;->b:Lcom/xiaomi/gamecenter/sdk/ag;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ag;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ag;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ag;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/app/Activity;Lcom/xiaomi/licensinglibrary/ILicenseService;)I
    .registers 7

    monitor-enter p0

    if-eqz p1, :cond_5

    if-nez p2, :cond_9

    :cond_5
    const/16 v0, 0x1389

    :cond_7
    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    :try_start_9
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/ag;->b(Landroid/app/Activity;Lcom/xiaomi/licensinglibrary/ILicenseService;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/gamecenter/sdk/ag;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/licensinglibrary/ILicenseService;)Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "orderid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x138d

    if-ne v0, v2, :cond_7

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ah;

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaomi/gamecenter/sdk/ah;-><init>(Lcom/xiaomi/gamecenter/sdk/ag;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ag;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_49

    :try_start_35
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->a:Ljava/lang/Object;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_3d} :catch_41
    .catchall {:try_start_35 .. :try_end_3d} :catchall_46

    :goto_3d
    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_46

    :try_start_3e
    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->e:I
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_49

    goto :goto_7

    :catch_41
    move-exception v0

    :try_start_42
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3d

    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_46

    :try_start_48
    throw v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4c
    const/16 v0, 0x138a

    goto :goto_7
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/licensinglibrary/ILicenseService;)Landroid/os/Bundle;
    .registers 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/gamecenter/sdk/ag;->b(Landroid/app/Activity;Lcom/xiaomi/licensinglibrary/ILicenseService;)Ljava/lang/String;

    move-result-object p2

    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1b

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fuid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pkgName"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "versionCode"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p3, v1}, Lcom/xiaomi/licensinglibrary/ILicenseService;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "orderid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errcode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/16 v1, 0x138d

    if-ne v2, v1, :cond_1a

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ag;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a
.end method

.method public b(Landroid/app/Activity;Lcom/xiaomi/licensinglibrary/ILicenseService;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    invoke-interface {p2}, Lcom/xiaomi/licensinglibrary/ILicenseService;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ag;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->c:Ljava/lang/String;

    :goto_1b
    return-object v0

    :cond_1c
    iput-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ag;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ag;->d:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ag;->g:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ag;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2c
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->a:Ljava/lang/Object;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_34} :catch_4c
    .catchall {:try_start_2c .. :try_end_34} :catchall_51

    :goto_34
    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_51

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    invoke-interface {p2}, Lcom/xiaomi/licensinglibrary/ILicenseService;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->d:Ljava/lang/String;

    :cond_49
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ag;->c:Ljava/lang/String;

    goto :goto_1b

    :catch_4c
    move-exception v0

    :try_start_4d
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_34

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_51

    throw v0
.end method
