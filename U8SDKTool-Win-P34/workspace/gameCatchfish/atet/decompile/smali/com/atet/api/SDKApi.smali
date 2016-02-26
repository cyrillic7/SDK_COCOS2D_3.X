.class public Lcom/atet/api/SDKApi;
.super Ljava/lang/Object;


# static fields
.field public static final LANDSCAPE:I = 0x2

.field public static final PAY_CANCEL:I = 0x3eb

.field public static final PAY_FAIL:I = 0x3ea

.field public static final PAY_HANDLING:I = 0x3ec

.field public static final PAY_SUCCESS:I = 0x3e9

.field public static final PORTRAIT:I = 0x1

.field private static l11l11l1l1:J

.field private static l1l111lll1:Ljava/lang/String;

.field private static l1lll1l1l1:J

.field private static lll11111l1:Z

.field private static lll1l111ll:Z

.field public static sOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    sput v0, Lcom/atet/api/SDKApi;->sOrientation:I

    sput-boolean v1, Lcom/atet/api/SDKApi;->lll1l111ll:Z

    sput-boolean v1, Lcom/atet/api/SDKApi;->lll11111l1:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/atet/api/SDKApi;->l11l11l1l1:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoginUI(Landroid/app/Activity;Lcom/atet/api/pay/ui/service/IAccountExCallback;)V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/atet/api/SDKApi;->l11l11l1l1:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_15

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_15

    :goto_14
    return-void

    :cond_15
    sput-wide v0, Lcom/atet/api/SDKApi;->l11l11l1l1:J

    if-nez p0, :cond_21

    const-string v0, "SDKApi"

    const-string v1, "Error: activity null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_21
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/atet/api/l1l111lll1;

    invoke-direct {v1, p0, p1}, Lcom/atet/api/l1l111lll1;-><init>(Landroid/app/Activity;Lcom/atet/api/pay/ui/service/IAccountExCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_14
.end method

.method public static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    :goto_18
    return-object v0

    :catch_19
    move-exception v0

    move-object v0, v1

    goto :goto_18
.end method

.method public static init(Landroid/app/Activity;ILjava/lang/String;Z)V
    .registers 6

    sget-boolean v0, Lcom/atet/api/SDKApi;->lll11111l1:Z

    if-eqz v0, :cond_c

    const-string v0, "SDKApi"

    const-string v1, "Warn: already init"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x1

    sput-boolean v0, Lcom/atet/api/SDKApi;->lll11111l1:Z

    sput p1, Lcom/atet/api/SDKApi;->sOrientation:I

    sput-boolean p3, Lcom/atet/api/SDKApi;->lll1l111ll:Z

    goto :goto_b
.end method

.method static synthetic l1l111lll1()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/atet/api/SDKApi;->l1lll1l1l1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static l1l111lll1(Landroid/content/Context;Lcom/atet/api/pay/ui/service/PayRequest;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    :try_start_1
    const-string v0, "appkey"

    invoke-virtual {p1, v0}, Lcom/atet/api/pay/ui/service/PayRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "appid"

    invoke-virtual {p1, v1}, Lcom/atet/api/pay/ui/service/PayRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "cpid"

    invoke-virtual {p1, v2}, Lcom/atet/api/pay/ui/service/PayRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "waresid"

    invoke-virtual {p1, v3}, Lcom/atet/api/pay/ui/service/PayRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "waresname"

    invoke-virtual {p1, v4}, Lcom/atet/api/pay/ui/service/PayRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "exorderno"

    invoke-virtual {p1, v5}, Lcom/atet/api/pay/ui/service/PayRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "price"

    invoke-virtual {p1, v6}, Lcom/atet/api/pay/ui/service/PayRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const-string v7, "quantity"

    invoke-virtual {p1, v7}, Lcom/atet/api/pay/ui/service/PayRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_75

    if-eqz v6, :cond_75

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_75

    if-eqz v7, :cond_75

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_77

    :cond_75
    move-object v0, v8

    :goto_76
    return-object v0

    :cond_77
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_88

    const-string v0, "SDKApi"

    const-string v1, "\u5916\u90e8\u8ba2\u5355\u53f7\u957f\u5ea6\u4e0d\u80fd\u8d85\u8fc750\u4f4d"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    goto :goto_76

    :cond_88
    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_98

    const-string v0, "&"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a1

    :cond_98
    const-string v0, "PayRequest"

    const-string v1, "\u5916\u90e8\u8ba2\u5355\u53f7\u4e0d\u80fd\u5305\u542b=\u548c&"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    goto :goto_76

    :cond_a1
    const-string v0, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "amountType"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "orientation"

    sget v1, Lcom/atet/api/SDKApi;->sOrientation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/atet/api/SDKApi;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cb

    const-string v0, "Unknown"

    :cond_cb
    const-string v1, "gameName"

    invoke-virtual {p1, v1, v0}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/atet/api/SDKApi;->l1l111lll1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f2

    sget-wide v0, Lcom/atet/api/SDKApi;->l1lll1l1l1:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f2

    const-string v0, "userName"

    sget-object v1, Lcom/atet/api/SDKApi;->l1l111lll1:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "userId"

    sget-wide v2, Lcom/atet/api/SDKApi;->l1lll1l1l1:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f2
    const-string v0, "sdkVersion"

    const v1, 0x9c43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_fe} :catch_142

    :try_start_fe
    const-string v0, "partnerId"

    const-string v1, "partnerId"

    invoke-virtual {p1, v1}, Lcom/atet/api/pay/ui/service/PayRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_109} :catch_14d

    :goto_109
    :try_start_109
    const-string v0, "notifyurl"

    const-string v1, "notifyurl"

    invoke-virtual {p1, v1}, Lcom/atet/api/pay/ui/service/PayRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_114} :catch_14b

    :goto_114
    :try_start_114
    const-string v0, "cpprivateinfo"

    const-string v1, "cpprivateinfo"

    invoke-virtual {p1, v1}, Lcom/atet/api/pay/ui/service/PayRequest;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/atet/api/pay/ui/service/PayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_11f} :catch_149

    :goto_11f
    :try_start_11f
    invoke-virtual {p1}, Lcom/atet/api/pay/ui/service/PayRequest;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/atet/api/pay/ui/service/PayRequest;->l1l111lll1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&sign="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_13f} :catch_142

    move-result-object v0

    goto/16 :goto_76

    :catch_142
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v8

    goto/16 :goto_76

    :catch_149
    move-exception v0

    goto :goto_11f

    :catch_14b
    move-exception v0

    goto :goto_114

    :catch_14d
    move-exception v0

    goto :goto_109
.end method

.method static synthetic l1l111lll1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/atet/api/SDKApi;->l1lll1l1l1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l1l111lll1(J)V
    .registers 2

    sput-wide p0, Lcom/atet/api/SDKApi;->l1lll1l1l1:J

    return-void
.end method

.method static synthetic l1l111lll1(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/atet/api/SDKApi;->l1l111lll1:Ljava/lang/String;

    return-void
.end method

.method private static l1lll1l1l1()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "orientation"

    sget v2, Lcom/atet/api/SDKApi;->sOrientation:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static l1lll1l1l1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    if-eqz p2, :cond_14

    :try_start_b
    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_13
    return-object p0

    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_19

    move-result-object p0

    goto :goto_13

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public static recycle()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    sput v0, Lcom/atet/api/SDKApi;->sOrientation:I

    sput-boolean v1, Lcom/atet/api/SDKApi;->lll1l111ll:Z

    sput-boolean v1, Lcom/atet/api/SDKApi;->lll11111l1:Z

    return-void
.end method

.method public static startPay(Landroid/app/Activity;Lcom/atet/api/pay/ui/service/PayRequest;Lcom/atet/api/pay/ui/service/IPayResultCallback;)V
    .registers 11

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/atet/api/SDKApi;->l11l11l1l1:J

    sub-long v2, v0, v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_15

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_15

    :goto_14
    return-void

    :cond_15
    sput-wide v0, Lcom/atet/api/SDKApi;->l11l11l1l1:J

    if-eqz p0, :cond_1b

    if-nez p1, :cond_23

    :cond_1b
    const-string v0, "SDKApi"

    const-string v1, "Error: activity or payRequest null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_23
    sget-boolean v0, Lcom/atet/api/SDKApi;->lll1l111ll:Z

    if-eqz v0, :cond_3e

    sget-object v0, Lcom/atet/api/SDKApi;->l1l111lll1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-wide v0, Lcom/atet/api/SDKApi;->l1lll1l1l1:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_3e

    :cond_35
    new-instance v0, Lcom/atet/api/lll1l111ll;

    invoke-direct {v0, p0}, Lcom/atet/api/lll1l111ll;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_14

    :cond_3e
    invoke-static {p0, p1}, Lcom/atet/api/SDKApi;->l1l111lll1(Landroid/content/Context;Lcom/atet/api/pay/ui/service/PayRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_51

    new-instance v0, Lcom/atet/api/lll11111l1;

    invoke-direct {v0, p0}, Lcom/atet/api/lll11111l1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_14

    :cond_51
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/atet/api/l11l11l1l1;

    invoke-direct {v2, p0, v0, p2}, Lcom/atet/api/l11l11l1l1;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/atet/api/pay/ui/service/IPayResultCallback;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_14
.end method
