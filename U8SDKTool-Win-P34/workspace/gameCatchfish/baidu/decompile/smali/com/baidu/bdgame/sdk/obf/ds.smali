.class public Lcom/baidu/bdgame/sdk/obf/ds;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ds$m;,
        Lcom/baidu/bdgame/sdk/obf/ds$j;,
        Lcom/baidu/bdgame/sdk/obf/ds$k;,
        Lcom/baidu/bdgame/sdk/obf/ds$d;,
        Lcom/baidu/bdgame/sdk/obf/ds$f;,
        Lcom/baidu/bdgame/sdk/obf/ds$c;,
        Lcom/baidu/bdgame/sdk/obf/ds$h;,
        Lcom/baidu/bdgame/sdk/obf/ds$e;,
        Lcom/baidu/bdgame/sdk/obf/ds$b;,
        Lcom/baidu/bdgame/sdk/obf/ds$n;,
        Lcom/baidu/bdgame/sdk/obf/ds$i;,
        Lcom/baidu/bdgame/sdk/obf/ds$l;,
        Lcom/baidu/bdgame/sdk/obf/ds$a;,
        Lcom/baidu/bdgame/sdk/obf/ds$g;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ds$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    const-string v1, "AliPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ds$a;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ds$a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    const-string v1, "TencentPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ds$l;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ds$l;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    const-string v1, "Mo9Pay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ds$i;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ds$i;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    const-string v1, "RechargeCardPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ds$n;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ds$n;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    const-string v1, "BaiduPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ds$b;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ds$b;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    const-string v1, "Bean91Pay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ds$e;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ds$e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    const-string v1, "KubiPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ds$h;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ds$h;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    const-string v1, "BaiduBeanPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ds$c;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ds$c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    const-string v1, "GameCardPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ds$f;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ds$f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    const-string v1, "BankCardPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ds$d;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ds$d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    const-string v1, "QuickPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ds$k;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ds$k;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    const-string v1, "QQWalletPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ds$j;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ds$j;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    const-string v1, "YiBaoCashCardPay"

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ds$m;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ds$m;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 2

    .prologue
    .line 30
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ds;->e(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 2

    .prologue
    .line 30
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ds;->f(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 2

    .prologue
    .line 30
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/ds;->d(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 407
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 408
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 409
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 410
    const/4 v0, 0x0

    :goto_11
    array-length v3, v2

    if-ge v0, v3, :cond_31

    .line 412
    :try_start_14
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 413
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_24

    .line 410
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 414
    :catch_24
    move-exception v0

    .line 415
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 416
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 420
    :goto_30
    return-object v0

    .line 419
    :cond_31
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 420
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_30
.end method

.method private static e(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/Boolean;",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    .line 424
    if-eqz p0, :cond_e

    .line 425
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 427
    :cond_e
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 428
    new-instance v4, Lcom/baidu/bdgame/sdk/obf/ka;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v6, Lcom/baidu/bdgame/sdk/obf/ka;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v5, v6}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v4

    .line 461
    :goto_29
    return-object v0

    .line 431
    :cond_2a
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 432
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3b

    .line 433
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v7}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_29

    .line 437
    :cond_3b
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 438
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 439
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 441
    :try_start_4a
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 442
    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_80

    move-result-wide v0

    .line 449
    :cond_52
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 450
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 451
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 453
    :try_start_62
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 454
    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_8c

    move-result-wide v2

    .line 461
    :cond_6a
    new-instance v4, Lcom/baidu/bdgame/sdk/obf/ka;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v6, Lcom/baidu/bdgame/sdk/obf/ka;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v4, v5, v6}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_29

    .line 443
    :catch_80
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 445
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v7}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_29

    .line 455
    :catch_8c
    move-exception v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v7}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_29
.end method

.method private static f(Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 466
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 467
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 468
    const/4 v0, 0x0

    :goto_11
    array-length v3, v2

    if-ge v0, v3, :cond_35

    .line 470
    :try_start_14
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 471
    invoke-static {v4, v5}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_28

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 472
    :catch_28
    move-exception v0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 474
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    :goto_34
    return-object v0

    .line 478
    :cond_35
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 479
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_34
.end method


# virtual methods
.method public a(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    :try_start_5
    const-string v0, "PaymentChannel"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 72
    if-nez v4, :cond_1a

    .line 73
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ds;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentChannel absent"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 97
    :goto_19
    return-object v0

    .line 76
    :cond_1a
    const/4 v0, 0x0

    move v3, v0

    :goto_1c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_83

    .line 77
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 78
    const-string v1, "ID"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 80
    const-class v1, Lcom/baidu/bdgame/sdk/obf/ds;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID absent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_54
    :goto_54
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1c

    .line 83
    :cond_58
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ds;->a:Ljava/util/Map;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bdgame/sdk/obf/ds$g;

    .line 84
    if-nez v1, :cond_85

    .line 85
    const-class v0, Lcom/baidu/bdgame/sdk/obf/ds;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parser absent:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_7e} :catch_7f

    goto :goto_54

    .line 93
    :catch_7f
    move-exception v0

    .line 94
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_83
    move-object v0, v2

    .line 97
    goto :goto_19

    .line 88
    :cond_85
    :try_start_85
    invoke-virtual {v1, p1, v5, v0}, Lcom/baidu/bdgame/sdk/obf/ds$g;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/dp;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_54

    .line 90
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_85 .. :try_end_8e} :catch_7f

    goto :goto_54
.end method
