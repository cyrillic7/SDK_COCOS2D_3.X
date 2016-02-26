.class public final Lcom/baidu/bdgame/sdk/obf/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/k$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.baidu.platformsdk.intent.login"

.field public static final b:Ljava/lang/String; = "result_code"

.field public static final c:Ljava/lang/String; = "result_desc"

.field public static final d:I = -0x80000000

.field public static final e:I = 0x0

.field public static final f:I = -0x1

.field public static final g:I = -0x2

.field public static final h:I = 0x0

.field public static final i:I = -0x3e9

.field public static final j:I = -0x3ea

.field public static final k:I = -0x3eb

.field public static final l:I = 0x0

.field public static final m:I = -0xbb9

.field public static final n:I = -0xbba

.field public static final o:I = -0xbbb

.field public static final p:Ljava/lang/String; = "com.baidu.platformsdk.intent.guest2fullmember"

.field public static final q:Ljava/lang/String; = "com.baidu.platformsdk.intent.convert2baiduaccount"

.field public static final r:I = 0x0

.field public static final s:I = -0x7d1

.field public static final t:I = 0x0

.field public static final u:I = -0x7d1


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/k$1;)V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/k;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/bdgame/sdk/obf/k;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/k$a;->a:Lcom/baidu/bdgame/sdk/obf/k;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_24

    .line 50
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DENIED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_24
    return-void
.end method

.method private static a(Ljava/io/InputStream;)V
    .registers 2

    .prologue
    .line 79
    if-eqz p0, :cond_5

    .line 81
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 86
    :cond_5
    :goto_5
    return-void

    .line 82
    :catch_6
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method private a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/fx;)Z
    .registers 7

    .prologue
    .line 570
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 571
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 572
    const-string v1, "bundle_key_user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 573
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/l;

    const/4 v2, 0x0

    const-class v3, Lcom/baidu/platformsdk/BindPhoneActivity;

    invoke-direct {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/l;-><init>(Lcom/baidu/bdgame/sdk/obf/n;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 574
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method private static q(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 55
    const-string v0, "android.permission.SEND_SMS"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    const-string v0, "android.permission.INTERNET"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    const-string v0, "android.permission.GET_TASKS"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    const-string v0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method private static r(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 72
    :try_start_4
    const-string v1, "data.bin"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_e

    .line 76
    return-void

    .line 73
    :catch_e
    move-exception v0

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please check this file in assets: data.bin"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 739
    invoke-static {p2}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 740
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    const-string v1, "bundle_key_autologin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 215
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/l;

    const-class v2, Lcom/baidu/platformsdk/LoginActivity;

    invoke-direct {v1, p2, v2}, Lcom/baidu/bdgame/sdk/obf/l;-><init>(Lcom/baidu/bdgame/sdk/obf/n;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 216
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/platformsdk/BDPlatformSetting;)V
    .registers 7

    .prologue
    .line 110
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/k;->q(Landroid/content/Context;)V

    .line 111
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/k;->r(Landroid/content/Context;)V

    .line 112
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getAppID()I

    move-result v1

    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/kd;->a(Landroid/content/Context;ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/as;)V

    .line 114
    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getDomain()Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    .line 115
    const-string v1, "BaiduPlatformSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The status is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->b:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    sget-object v3, Lcom/baidu/platformsdk/BDPlatformSetting$Domain;->DOMAIN_DEBUG:Lcom/baidu/platformsdk/BDPlatformSetting$Domain;

    if-ne v0, v3, :cond_8c

    const-string v0, "debug"

    :goto_34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getOrientation()I

    move-result v0

    sput v0, Lcom/baidu/bdgame/sdk/obf/ju;->f:I

    .line 118
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ju;->b()V

    .line 121
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/kd;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getAppID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/bq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Lcom/baidu/platformsdk/BDPlatformSetting;->getAppID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ml;->a:Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/baidu/platformsdk/LoginActivity;->b()V

    .line 130
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;)V

    .line 132
    const-string v0, "BaiduPlatformSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 115
    :cond_8c
    const-string v0, "online"

    goto :goto_34
.end method

.method public a(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 721
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/as;->a(Landroid/content/Context;Z)V

    .line 722
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 3

    .prologue
    .line 713
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/as;->a(Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 714
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 729
    sput-object p1, Lcom/baidu/bdgame/sdk/obf/ju;->i:Ljava/lang/String;

    .line 730
    sput-object p2, Lcom/baidu/bdgame/sdk/obf/ju;->h:Ljava/lang/String;

    .line 731
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 142
    sget-boolean v0, Lcom/baidu/bdgame/sdk/obf/ju;->a:Z

    return v0
.end method

.method public a(Landroid/content/Context;Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/platformsdk/PayOrderInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v8, -0xbba

    .line 317
    if-nez p2, :cond_d

    .line 318
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BaiduPlatformSDK: payOrderInfo null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_d
    invoke-virtual {p2}, Lcom/baidu/platformsdk/PayOrderInfo;->isCooperatorOrderSerialValid()Z

    move-result v1

    if-nez v1, :cond_23

    .line 327
    if-eqz p4, :cond_22

    .line 328
    const-string v1, "bdp_sdk_pay_error_5"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v8, v1, p2}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 374
    :cond_22
    :goto_22
    return v0

    .line 333
    :cond_23
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/jg;

    move-result-object v1

    .line 334
    if-nez v1, :cond_39

    .line 335
    if-eqz p4, :cond_22

    .line 336
    const-string v1, "bdp_sdk_pay_error_1"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v8, v1, p2}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_22

    .line 341
    :cond_39
    invoke-virtual {p2}, Lcom/baidu/platformsdk/PayOrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 343
    if-eqz p4, :cond_22

    .line 344
    const-string v1, "bdp_sdk_pay_error_2"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p4, v8, v1, v2}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_22

    .line 349
    :cond_54
    invoke-virtual {p2}, Lcom/baidu/platformsdk/PayOrderInfo;->getTotalPriceCent()J

    move-result-wide v2

    .line 351
    const-wide/32 v4, 0x989680

    cmp-long v4, v2, v4

    if-lez v4, :cond_6f

    .line 352
    if-eqz p4, :cond_22

    .line 353
    const-string v1, "bdp_sdk_pay_error_3"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v8, v1, p2}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_22

    .line 359
    :cond_6f
    invoke-virtual {p2}, Lcom/baidu/platformsdk/PayOrderInfo;->getRatio()I

    move-result v4

    .line 360
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_8b

    if-gtz v4, :cond_8b

    .line 361
    if-eqz p4, :cond_22

    .line 362
    const-string v1, "bdp_sdk_pay_error_4"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v8, v1, p2}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_22

    .line 367
    :cond_8b
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 370
    const-string v1, "order"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 371
    const-string v1, "callback_extra"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/l;

    const-class v2, Lcom/baidu/platformsdk/CashierDeskActivity;

    invoke-direct {v1, p4, v2}, Lcom/baidu/bdgame/sdk/obf/l;-><init>(Lcom/baidu/bdgame/sdk/obf/n;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 373
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 374
    const/4 v0, 0x1

    goto/16 :goto_22
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/platformsdk/OrderStatus;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 387
    :cond_c
    const/4 v0, 0x0

    .line 390
    :goto_d
    return v0

    :cond_e
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/k$1;

    invoke-direct {v0, p0, p3}, Lcom/baidu/bdgame/sdk/obf/k$1;-><init>(Lcom/baidu/bdgame/sdk/obf/k;Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-static {p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    goto :goto_d
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    const-string v0, "3.5.2"

    return-object v0
.end method

.method public b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    const-string v1, "bundle_key_autologin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/l;

    const-class v2, Lcom/baidu/platformsdk/LoginActivity;

    invoke-direct {v1, p2, v2}, Lcom/baidu/bdgame/sdk/obf/l;-><init>(Lcom/baidu/bdgame/sdk/obf/n;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 239
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->c()Z

    move-result v0

    return v0
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 249
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_f

    .line 251
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->c()Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v0

    if-nez v0, :cond_e

    .line 466
    :cond_c
    const/4 v0, 0x0

    .line 473
    :goto_d
    return v0

    .line 469
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 470
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 471
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/l;

    const-class v2, Lcom/baidu/platformsdk/VisitorBindActivity;

    invoke-direct {v1, p2, v2}, Lcom/baidu/bdgame/sdk/obf/l;-><init>(Lcom/baidu/bdgame/sdk/obf/n;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 472
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 473
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 263
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_f

    .line 265
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->g()Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getUserType()Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    move-result-object v0

    sget-object v1, Lcom/baidu/platformsdk/BDPlatformUser$UserType;->Baidu:Lcom/baidu/platformsdk/BDPlatformUser$UserType;

    if-ne v0, v1, :cond_16

    .line 495
    :cond_14
    const/4 v0, 0x0

    .line 501
    :goto_15
    return v0

    .line 497
    :cond_16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 498
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 499
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/l;

    const-class v2, Lcom/baidu/platformsdk/VisitorBindActivity;

    invoke-direct {v1, p2, v2}, Lcom/baidu/bdgame/sdk/obf/l;-><init>(Lcom/baidu/bdgame/sdk/obf/n;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 500
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 501
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public e(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 281
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/bl;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 617
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 619
    :cond_c
    const/4 v0, 0x0

    .line 623
    :goto_d
    return v0

    :cond_e
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/k$2;

    invoke-direct {v0, p0, p2}, Lcom/baidu/bdgame/sdk/obf/k$2;-><init>(Lcom/baidu/bdgame/sdk/obf/k;Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    goto :goto_d
.end method

.method public f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 425
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/js;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/js;-><init>()V

    .line 426
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/js;->a(Landroid/content/Context;)V

    .line 427
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/js;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 717
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/bl;->f(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 718
    return-void
.end method

.method public g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;
    .registers 4

    .prologue
    .line 440
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_13

    .line 442
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ai;->a(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 444
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public h(Landroid/content/Context;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    .line 511
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->isThirdPartyUser()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 528
    :cond_14
    :goto_14
    return v0

    .line 515
    :cond_15
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/bl;->g(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/mh;

    move-result-object v2

    .line 516
    if-eqz v2, :cond_14

    .line 519
    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/mh;->a()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 520
    invoke-static {p1, v0}, Lcom/baidu/platformsdk/SapiWebActivity;->a(Landroid/content/Context;I)V

    move v0, v1

    .line 521
    goto :goto_14

    .line 523
    :cond_26
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 524
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 525
    const-string v3, "bundle_key_user"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 526
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/l;

    const/4 v3, 0x0

    const-class v4, Lcom/baidu/platformsdk/ModifyPasswordActivity;

    invoke-direct {v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/l;-><init>(Lcom/baidu/bdgame/sdk/obf/n;Ljava/lang/Class;)V

    invoke-static {v2}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 527
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 528
    goto :goto_14
.end method

.method public i(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 537
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/bl;->h(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public j(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 546
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v1

    .line 547
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 566
    :cond_d
    :goto_d
    return v0

    .line 551
    :cond_e
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/bl;->f(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/fx;

    move-result-object v1

    .line 552
    if-eqz v1, :cond_d

    .line 556
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fx;->e()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 561
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/fx;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 562
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/baidu/platformsdk/SapiWebActivity;->a(Landroid/content/Context;I)V

    .line 563
    const/4 v0, 0x1

    goto :goto_d

    .line 566
    :cond_26
    invoke-direct {p0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/fx;)Z

    move-result v0

    goto :goto_d
.end method

.method public k(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 584
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    .line 585
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 605
    :cond_e
    :goto_e
    return v0

    .line 589
    :cond_f
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/bl;->f(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/fx;

    move-result-object v2

    .line 591
    if-eqz v2, :cond_e

    .line 595
    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/fx;->e()Z

    move-result v3

    if-nez v3, :cond_e

    .line 600
    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/fx;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 601
    invoke-static {p1, v1}, Lcom/baidu/platformsdk/SapiWebActivity;->a(Landroid/content/Context;I)V

    move v0, v1

    .line 602
    goto :goto_e

    .line 605
    :cond_26
    invoke-direct {p0, p1, v2}, Lcom/baidu/bdgame/sdk/obf/k;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/fx;)Z

    move-result v0

    goto :goto_e
.end method

.method public l(Landroid/content/Context;)Z
    .registers 6

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 647
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 648
    :cond_c
    const/4 v0, 0x0

    .line 655
    :goto_d
    return v0

    .line 651
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 652
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 653
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/l;

    const/4 v2, 0x0

    const-class v3, Lcom/baidu/platformsdk/BaiduBeanDetailActivity;

    invoke-direct {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/l;-><init>(Lcom/baidu/bdgame/sdk/obf/n;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 654
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 655
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public m(Landroid/content/Context;)Z
    .registers 6

    .prologue
    .line 664
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 666
    :cond_c
    const/4 v0, 0x0

    .line 673
    :goto_d
    return v0

    .line 669
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/platformsdk/AssistActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 670
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 671
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/l;

    const/4 v2, 0x0

    const-class v3, Lcom/baidu/platformsdk/OrderDetailActivity;

    invoke-direct {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/l;-><init>(Lcom/baidu/bdgame/sdk/obf/n;Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/baidu/platformsdk/AssistActivity;->a(Lcom/baidu/bdgame/sdk/obf/i;)V

    .line 672
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 673
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public n(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 692
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/as;->c(Landroid/content/Context;)V

    .line 693
    invoke-static {}, Lcom/baidu/platformsdk/LoginActivity;->b()V

    .line 695
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/bv;->a()V

    .line 696
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/ju;->a()V

    .line 697
    return-void
.end method

.method public o(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 704
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/as;->e(Landroid/content/Context;)Z

    .line 705
    return-void
.end method

.method public p(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 743
    sget-boolean v0, Lcom/baidu/bdgame/sdk/obf/ju;->j:Z

    return v0
.end method
