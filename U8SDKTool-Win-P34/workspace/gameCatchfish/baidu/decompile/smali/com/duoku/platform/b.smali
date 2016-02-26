.class public Lcom/duoku/platform/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/duoku/platform/b;


# instance fields
.field private b:Lcom/duoku/platform/DkPlatformSettings;

.field private c:Lcom/duoku/platform/c/a;

.field private d:Landroid/content/Context;

.field private e:Landroid/content/Context;

.field private f:Lcom/duoku/platform/view/StartView;

.field private g:Lcom/duoku/platform/view/c;

.field private h:Lcom/duoku/platform/util/k;

.field private i:J

.field private j:Lcom/duoku/platform/IDKSDKCallBack;

.field private k:Landroid/app/Application;

.field private l:Lcom/duoku/platform/floatview/a;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-class v0, Lcom/duoku/platform/DkPlatform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/b;->h:Lcom/duoku/platform/util/k;

    .line 77
    new-instance v0, Lcom/duoku/platform/c/a;

    invoke-direct {v0}, Lcom/duoku/platform/c/a;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/b;->c:Lcom/duoku/platform/c/a;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/baidu/platformsdk/BDPlatformUser$UserType;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 509
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v1

    .line 513
    if-nez p1, :cond_e

    .line 537
    :cond_d
    :goto_d
    return-object v0

    .line 518
    :cond_e
    sget-object v2, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne p1, v2, :cond_2f

    .line 520
    const-string v0, "3"

    .line 521
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v2

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 523
    invoke-virtual {v1}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 525
    const-string v0, "0"

    goto :goto_d

    .line 529
    :cond_2f
    sget-object v1, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->_91:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne p1, v1, :cond_36

    .line 531
    const-string v0, "2"

    goto :goto_d

    .line 533
    :cond_36
    sget-object v1, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Duoku:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne p1, v1, :cond_d

    .line 535
    const-string v0, "1"

    goto :goto_d
.end method

.method private a(Landroid/app/Activity;Lcom/duoku/platform/ui/a/c;)V
    .registers 7

    .prologue
    .line 757
    invoke-virtual {p2}, Lcom/duoku/platform/ui/a/c;->a()Ljava/util/List;

    move-result-object v0

    .line 758
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_time"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 759
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_title"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 760
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_content"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 761
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_link"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/util/o;->e(Ljava/lang/String;)Z

    .line 762
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_69

    .line 764
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/a;

    .line 765
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_time"

    invoke-virtual {v0}, Lcom/duoku/platform/bean/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 766
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_title"

    invoke-virtual {v0}, Lcom/duoku/platform/bean/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 767
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_content"

    invoke-virtual {v0}, Lcom/duoku/platform/bean/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 768
    invoke-static {p1}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v1

    const-string v2, "dk_actionanno_link"

    invoke-virtual {v0}, Lcom/duoku/platform/bean/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 770
    :cond_69
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/b;Landroid/app/Activity;Lcom/duoku/platform/ui/a/c;)V
    .registers 3

    .prologue
    .line 755
    invoke-direct {p0, p1, p2}, Lcom/duoku/platform/b;->a(Landroid/app/Activity;Lcom/duoku/platform/ui/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/b;Lcom/duoku/platform/view/StartView;JI)V
    .registers 5

    .prologue
    .line 472
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/duoku/platform/b;->a(Lcom/duoku/platform/view/StartView;JI)V

    return-void
.end method

.method private a(Lcom/duoku/platform/view/StartView;JI)V
    .registers 11

    .prologue
    const-wide/16 v4, 0xbb8

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 475
    sub-long/2addr v0, p2

    .line 476
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_21

    cmp-long v2, v4, v0

    if-lez v2, :cond_21

    .line 478
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/duoku/platform/b$2;

    invoke-direct {v3, p0, p1, p4}, Lcom/duoku/platform/b$2;-><init>(Lcom/duoku/platform/b;Lcom/duoku/platform/view/StartView;I)V

    .line 496
    sub-long v0, v4, v0

    .line 478
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 505
    :goto_20
    return-void

    .line 500
    :cond_21
    invoke-virtual {p1}, Lcom/duoku/platform/view/StartView;->b()V

    .line 501
    invoke-virtual {p1}, Lcom/duoku/platform/view/StartView;->c()V

    .line 502
    iget-object v0, p0, Lcom/duoku/platform/b;->g:Lcom/duoku/platform/view/c;

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->cancel()V

    .line 503
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/duoku/platform/f/a;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/DKProCallbackListener;->onInitComplete(Ljava/lang/String;)V

    goto :goto_20
.end method

.method static synthetic b(Lcom/duoku/platform/b;)Lcom/duoku/platform/IDKSDKCallBack;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/duoku/platform/b;->j:Lcom/duoku/platform/IDKSDKCallBack;

    return-object v0
.end method

.method public static declared-synchronized b()Lcom/duoku/platform/b;
    .registers 2

    .prologue
    .line 320
    const-class v1, Lcom/duoku/platform/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/duoku/platform/b;->a:Lcom/duoku/platform/b;

    if-nez v0, :cond_e

    .line 322
    new-instance v0, Lcom/duoku/platform/b;

    invoke-direct {v0}, Lcom/duoku/platform/b;-><init>()V

    sput-object v0, Lcom/duoku/platform/b;->a:Lcom/duoku/platform/b;

    .line 325
    :cond_e
    sget-object v0, Lcom/duoku/platform/b;->a:Lcom/duoku/platform/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 320
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/duoku/platform/b;)Lcom/duoku/platform/view/StartView;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/duoku/platform/b;->f:Lcom/duoku/platform/view/StartView;

    return-object v0
.end method

.method static synthetic d(Lcom/duoku/platform/b;)J
    .registers 3

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/duoku/platform/b;->i:J

    return-wide v0
.end method

.method static synthetic e(Lcom/duoku/platform/b;)Lcom/duoku/platform/view/c;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/duoku/platform/b;->g:Lcom/duoku/platform/view/c;

    return-object v0
.end method

.method public static l()Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 1

    .prologue
    .line 638
    invoke-static {}, Lcom/duoku/platform/util/q;->f()Lcom/duoku/platform/bean/SynLoginUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public static m()Lcom/duoku/platform/bean/SynLoginUserInfo;
    .registers 1

    .prologue
    .line 643
    invoke-static {}, Lcom/duoku/platform/util/q;->e()Lcom/duoku/platform/bean/SynLoginUserInfo;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 85
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v1}, Lcom/duoku/platform/DkPlatformSettings;->getAppkey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/game/DKGameSDK;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    const-string v1, "deb6af019f"

    invoke-static {v0, v1}, Lcom/duoku/game/DKGameSDK;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v1}, Lcom/duoku/platform/DkPlatformSettings;->getAppid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v2}, Lcom/duoku/platform/DkPlatformSettings;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lcom/duoku/game/DKGameSDK;->setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v1}, Lcom/duoku/platform/DkPlatformSettings;->getAppid()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deb6af019f"

    invoke-static {v0, v1, v3, v2}, Lcom/duoku/game/DKGameSDK;->setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v0}, Lcom/duoku/platform/DkPlatformSettings;->getmVersionName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v1}, Lcom/duoku/platform/DkPlatformSettings;->getAppkey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/game/DKGameSDK;->setAppVersionName(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    const-string v1, "deb6af019f"

    invoke-static {v0, v1}, Lcom/duoku/game/DKGameSDK;->setOn(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private p()V
    .registers 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "mAppid"

    iget-object v2, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v2}, Lcom/duoku/platform/DkPlatformSettings;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 227
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "mAppkey"

    iget-object v2, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v2}, Lcom/duoku/platform/DkPlatformSettings;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "mGameCategory"

    iget-object v2, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v2}, Lcom/duoku/platform/DkPlatformSettings;->getGameCategory()Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/DkPlatformSettings$GameCategory;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;I)Z

    .line 231
    return-void
.end method

.method private q()V
    .registers 5

    .prologue
    .line 238
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "dkAppFirstStart"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/o;->d(Ljava/lang/String;)Z

    move-result v0

    .line 239
    if-nez v0, :cond_27

    .line 241
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v1, "34"

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v0

    const-string v1, "dkAppFirstStart"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;Z)Z

    .line 244
    :cond_27
    return-void
.end method

.method private r()V
    .registers 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/duoku/platform/util/Constants;->BAIDU_PUSH_API_KEY:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/baidu/android/pushservice/PushManager;->startWork(Landroid/content/Context;ILjava/lang/String;)V

    .line 293
    return-void
.end method


# virtual methods
.method public a()Lcom/duoku/platform/c/a;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/duoku/platform/b;->c:Lcom/duoku/platform/c/a;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 696
    const-string v0, "DKPlatformInternal\u83b7\u53d6\u516c\u544a\u63a5\u53e3\u8c03\u7528"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    new-instance v0, Lcom/duoku/platform/e/a;

    invoke-direct {v0, p1}, Lcom/duoku/platform/e/a;-><init>(Landroid/content/Context;)V

    .line 698
    invoke-virtual {v0, v2}, Lcom/duoku/platform/e/a;->setCancelable(Z)V

    .line 699
    invoke-virtual {v0, v2}, Lcom/duoku/platform/e/a;->setCanceledOnTouchOutside(Z)V

    .line 700
    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/e/a;->a(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/f/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v2

    sget-object v3, Lcom/duoku/platform/util/Constants;->DK_GET_ANNOUNCEMENT:Ljava/lang/String;

    const/16 v4, 0x6e

    new-instance v5, Lcom/duoku/platform/b$3;

    invoke-direct {v5, p0, v0, p1}, Lcom/duoku/platform/b$3;-><init>(Lcom/duoku/platform/b;Lcom/duoku/platform/e/a;Landroid/app/Activity;)V

    invoke-interface {v2, v3, v4, v1, v5}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 753
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/duoku/platform/DkPlatformSettings;Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 8

    .prologue
    .line 122
    invoke-static {}, Lcom/duoku/platform/util/c;->a()V

    .line 124
    if-eqz p1, :cond_6b

    if-eqz p2, :cond_6b

    .line 126
    iput-object p1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    .line 135
    :goto_b
    invoke-static {p3}, Lcom/duoku/platform/DKProCallbackListener;->setmOnInitCompleteListener(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 138
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    if-eqz v0, :cond_43

    .line 140
    new-instance v0, Lcom/duoku/platform/view/StartView;

    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/duoku/platform/view/StartView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/b;->f:Lcom/duoku/platform/view/StartView;

    .line 141
    new-instance v0, Lcom/duoku/platform/view/c;

    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    const-string v3, "fullscreen_dialog"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/view/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/duoku/platform/b;->g:Lcom/duoku/platform/view/c;

    .line 142
    iget-object v0, p0, Lcom/duoku/platform/b;->g:Lcom/duoku/platform/view/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/c;->setCancelable(Z)V

    .line 143
    iget-object v0, p0, Lcom/duoku/platform/b;->g:Lcom/duoku/platform/view/c;

    iget-object v1, p0, Lcom/duoku/platform/b;->f:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/view/c;->setContentView(Landroid/view/View;)V

    .line 144
    iget-object v0, p0, Lcom/duoku/platform/b;->g:Lcom/duoku/platform/view/c;

    invoke-virtual {v0}, Lcom/duoku/platform/view/c;->show()V

    .line 146
    iget-object v0, p0, Lcom/duoku/platform/b;->f:Lcom/duoku/platform/view/StartView;

    invoke-virtual {v0}, Lcom/duoku/platform/view/StartView;->a()V

    .line 148
    :cond_43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duoku/platform/b;->i:J

    .line 150
    iget-object v0, p0, Lcom/duoku/platform/b;->c:Lcom/duoku/platform/c/a;

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->b()Lcom/duoku/platform/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    new-instance v2, Lcom/duoku/platform/b$1;

    invoke-direct {v2, p0}, Lcom/duoku/platform/b$1;-><init>(Lcom/duoku/platform/b;)V

    invoke-interface {v0, v1, v2}, Lcom/duoku/platform/b/a;->a(Landroid/content/Context;Lcom/duoku/platform/c;)V

    .line 166
    invoke-direct {p0}, Lcom/duoku/platform/b;->p()V

    .line 171
    :try_start_5c
    invoke-direct {p0}, Lcom/duoku/platform/b;->o()V

    .line 174
    invoke-direct {p0}, Lcom/duoku/platform/b;->r()V

    .line 177
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/util/c;->b(Landroid/content/Context;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_67} :catch_71

    .line 188
    :goto_67
    invoke-direct {p0}, Lcom/duoku/platform/b;->q()V

    .line 189
    return-void

    .line 131
    :cond_6b
    const-string v0, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {p1, v0}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 179
    :catch_71
    move-exception v0

    .line 181
    const-string v0, " TiebaSDK.init"

    const-string v1, "\u521d\u59cb\u5316\u5f02\u5e38"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method

.method public a(Landroid/app/Application;)V
    .registers 4

    .prologue
    .line 198
    iput-object p1, p0, Lcom/duoku/platform/b;->k:Landroid/app/Application;

    .line 208
    :try_start_2
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/i/a;->a(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    .line 214
    :goto_9
    return-void

    .line 210
    :catch_a
    move-exception v0

    .line 212
    invoke-static {}, Lcom/duoku/platform/i/a;->a()Lcom/duoku/platform/i/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoku/platform/i/a;->a(Ljava/lang/Throwable;)Z

    goto :goto_9
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 654
    iput-object p1, p0, Lcom/duoku/platform/b;->e:Landroid/content/Context;

    .line 655
    if-nez p1, :cond_f

    .line 657
    const-string v0, "context is null"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 675
    :goto_e
    return-void

    .line 661
    :cond_f
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 663
    const-string v0, "user unlogin"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_e

    .line 667
    :cond_23
    invoke-virtual {p0}, Lcom/duoku/platform/b;->n()V

    .line 669
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/a;->a(Z)V

    .line 671
    new-instance v0, Lcom/duoku/platform/floatview/a;

    invoke-direct {v0, p1}, Lcom/duoku/platform/floatview/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoku/platform/b;->l:Lcom/duoku/platform/floatview/a;

    .line 673
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duoku/platform/ui/b/c;->a(Landroid/content/Context;)V

    goto :goto_e
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 6

    .prologue
    .line 309
    iget-object v0, p0, Lcom/duoku/platform/b;->h:Lcom/duoku/platform/util/k;

    sget-object v1, Lcom/duoku/platform/b;->a:Lcom/duoku/platform/b;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->c(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/duoku/platform/b;->g()Z

    move-result v0

    if-nez v0, :cond_12

    .line 316
    :goto_11
    return-void

    .line 315
    :cond_12
    iget-object v0, p0, Lcom/duoku/platform/b;->c:Lcom/duoku/platform/c/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/duoku/platform/c/a;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/duoku/platform/IDKSDKCallBack;)V

    goto :goto_11
.end method

.method public a(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;)V
    .registers 2

    .prologue
    .line 451
    if-eqz p1, :cond_5

    .line 453
    invoke-virtual {p1}, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;->showView()V

    .line 455
    :cond_5
    return-void
.end method

.method public a(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 8

    .prologue
    .line 100
    iput-object p1, p0, Lcom/duoku/platform/b;->j:Lcom/duoku/platform/IDKSDKCallBack;

    .line 101
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 112
    :cond_e
    :goto_e
    return-void

    .line 105
    :cond_f
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_e

    .line 108
    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v1}, Lcom/duoku/platform/DkPlatformSettings;->getOrient()I

    move-result v1

    .line 109
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/duoku/platform/b;->a(Lcom/baidu/platformsdk/BDPlatformUser$UserType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduOAuthAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/duoku/platform/f/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->TIPS_INFO_URL:Ljava/lang/String;

    const/16 v3, 0x258

    new-instance v4, Lcom/duoku/platform/b$a;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/b$a;-><init>(Lcom/duoku/platform/b;Lcom/duoku/platform/b$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    goto :goto_e
.end method

.method public b(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;)V
    .registers 2

    .prologue
    .line 459
    if-eqz p1, :cond_5

    .line 461
    invoke-virtual {p1}, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;->closeView()V

    .line 463
    :cond_5
    return-void
.end method

.method public b(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 4

    .prologue
    .line 425
    const-string v0, "DKSuspendWindowCallBack\u60ac\u6d6e\u7a97\u56de\u8c03\u65b9\u6cd5"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/duoku/platform/util/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {p1}, Lcom/duoku/platform/DKProCallbackListener;->setDKSuspendWindowListener(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 427
    return-void
.end method

.method public c()Landroid/content/Context;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    return-object v0
.end method

.method public c(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 2

    .prologue
    .line 436
    invoke-static {p1}, Lcom/duoku/platform/DKProCallbackListener;->setmOnsessionFailedListener(Lcom/duoku/platform/IDKSDKCallBack;)V

    .line 437
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v0}, Lcom/duoku/platform/DkPlatformSettings;->getAppid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v0}, Lcom/duoku/platform/DkPlatformSettings;->getAppkey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 398
    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    if-eqz v1, :cond_e

    .line 400
    iget-object v1, p0, Lcom/duoku/platform/b;->b:Lcom/duoku/platform/DkPlatformSettings;

    invoke-virtual {v1}, Lcom/duoku/platform/DkPlatformSettings;->getOrient()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    .line 404
    :cond_e
    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 412
    const/4 v0, 0x0

    .line 415
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public h()V
    .registers 2

    .prologue
    .line 444
    invoke-static {}, Lcom/duoku/platform/ui/b/c;->c()Lcom/duoku/platform/ui/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/b/c;->f()V

    .line 445
    return-void
.end method

.method public i()V
    .registers 1

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/duoku/platform/b;->k()V

    .line 599
    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 603
    const-string v0, "3.5.2"

    return-object v0
.end method

.method public k()V
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/duoku/platform/b;->e:Landroid/content/Context;

    if-eqz v0, :cond_18

    .line 615
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/ui/b/a;->a(Z)V

    .line 617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.ACTION_VISITOR_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 620
    :cond_18
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/b;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    .line 634
    return-void
.end method

.method public n()V
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/duoku/platform/b;->l:Lcom/duoku/platform/floatview/a;

    if-eqz v0, :cond_c

    .line 688
    iget-object v0, p0, Lcom/duoku/platform/b;->l:Lcom/duoku/platform/floatview/a;

    invoke-virtual {v0}, Lcom/duoku/platform/floatview/a;->f()V

    .line 689
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/b;->l:Lcom/duoku/platform/floatview/a;

    .line 691
    :cond_c
    return-void
.end method
