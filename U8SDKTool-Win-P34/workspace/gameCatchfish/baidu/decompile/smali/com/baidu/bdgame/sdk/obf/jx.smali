.class public Lcom/baidu/bdgame/sdk/obf/jx;
.super Lcom/baidu/bdgame/sdk/obf/kc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kc",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:S = 0x1s


# instance fields
.field private b:Z

.field private g:[B


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 5

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/jx;->b:Z

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/jx;
    .registers 4

    .prologue
    .line 56
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jx;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/jx;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 57
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jx;->b(I)V

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jx;->a(S)V

    .line 59
    return-object v0
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 287
    invoke-virtual {p1, p2}, Lcom/baidu/bdgame/sdk/obf/kd;->b(Landroid/content/Context;)V

    .line 288
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/kd;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/kl;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 114
    :try_start_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 115
    const-string p5, ""

    .line 117
    :cond_8
    invoke-virtual {p3, p5}, Lcom/baidu/bdgame/sdk/obf/kl;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kn;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_13} :catch_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_13} :catch_1e
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_13} :catch_23
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_13} :catch_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_2d

    .line 131
    :goto_13
    return-void

    .line 118
    :catch_14
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_13

    .line 120
    :catch_19
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_13

    .line 122
    :catch_1e
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_13

    .line 124
    :catch_23
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_13

    .line 126
    :catch_28
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_13

    .line 128
    :catch_2d
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 255
    .line 256
    const-string v1, "ConfigureVersion"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 257
    if-nez v1, :cond_a

    .line 267
    :cond_9
    :goto_9
    return v0

    .line 260
    :cond_a
    const-string v2, "ErrorDescVer"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 266
    invoke-virtual {p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/kd;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/kd;Lorg/json/JSONObject;)Z
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 402
    const-string v1, "ServerTime"

    invoke-static {p2, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 413
    :goto_d
    return v0

    .line 406
    :cond_e
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 408
    :try_start_15
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 409
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kg;->a(J)V
    :try_end_20
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_20} :catch_22

    .line 410
    const/4 v0, 0x1

    goto :goto_d

    .line 411
    :catch_22
    move-exception v1

    goto :goto_d
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 100
    const-string v0, ""

    .line 102
    :try_start_2
    invoke-static {p0}, Lcom/baidu/android/common/util/CommonParam;->getCUID(Landroid/content/Context;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_b

    move-result-object v0

    .line 106
    :goto_6
    if-nez v0, :cond_a

    .line 107
    const-string v0, ""

    .line 109
    :cond_a
    return-object v0

    .line 103
    :catch_b
    move-exception v1

    .line 104
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method private b(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 271
    .line 272
    const-string v1, "ConfigureVersion"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 273
    if-nez v1, :cond_a

    .line 283
    :cond_9
    :goto_9
    return v0

    .line 276
    :cond_a
    const-string v2, "PayConfigVer"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 282
    invoke-virtual {p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/kd;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 417
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/kw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 421
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method private c(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 291
    const-string v0, "BackCallUrl"

    invoke-static {p3, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_d

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v0, v1

    .line 309
    :goto_14
    return v0

    .line 302
    :cond_15
    :try_start_15
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_15 .. :try_end_1a} :catch_1f

    .line 308
    invoke-static {v0, v0}, Lcom/baidu/bdgame/sdk/obf/ju;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x1

    goto :goto_14

    .line 303
    :catch_1f
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move v0, v1

    .line 305
    goto :goto_14
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 425
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/kw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 429
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method private d(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 313
    .line 314
    const-string v1, "ConfigureVersion"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 315
    if-nez v1, :cond_a

    .line 325
    :cond_9
    :goto_9
    return v0

    .line 318
    :cond_a
    const-string v2, "BasicConfigVer"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 324
    invoke-virtual {p1, p2, v1}, Lcom/baidu/bdgame/sdk/obf/kd;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private e(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/cf;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 330
    :try_start_1
    const-string v1, "SdkConfig"

    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 331
    if-nez v1, :cond_a

    .line 364
    :cond_9
    :goto_9
    return-object v0

    .line 335
    :cond_a
    const-string v2, "sdk_baidu"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 336
    if-eqz v1, :cond_9

    .line 340
    const-string v2, "appid"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    const-string v3, "appkey"

    invoke-static {v1, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 342
    const-string v4, "tpl"

    invoke-static {v1, v4}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 347
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 351
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 356
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cf;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/cf;-><init>()V

    .line 357
    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/cf;->a(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, v3}, Lcom/baidu/bdgame/sdk/obf/cf;->b(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1, v4}, Lcom/baidu/bdgame/sdk/obf/cf;->c(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_44} :catch_46

    move-object v0, v1

    .line 360
    goto :goto_9

    .line 361
    :catch_46
    move-exception v1

    .line 362
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 433
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 437
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method private static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 441
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/kw;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 445
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 446
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 447
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 450
    :cond_26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 452
    :goto_32
    return-object v0

    :cond_33
    const-string v0, ""

    goto :goto_32
.end method

.method private f(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 376
    sput-boolean v1, Lcom/baidu/bdgame/sdk/obf/ju;->j:Z

    .line 378
    :try_start_4
    const-string v2, "SdkConfig"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 379
    if-nez v2, :cond_d

    .line 397
    :cond_c
    :goto_c
    return v0

    .line 382
    :cond_d
    const-string v3, "sdk_duoku"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 383
    if-eqz v2, :cond_c

    .line 386
    const-string v3, "Open"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 391
    const-string v0, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 392
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/bdgame/sdk/obf/ju;->j:Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_2e

    :cond_2c
    :goto_2c
    move v0, v1

    .line 397
    goto :goto_c

    .line 394
    :catch_2e
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 456
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/kw;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 457
    if-nez v0, :cond_8

    .line 458
    const-string v0, ""

    .line 460
    :cond_8
    return-object v0
.end method

.method private static l()[B
    .registers 1

    .prologue
    .line 63
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kl;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/kl;-><init>()V

    .line 64
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kl;->a()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 469
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 470
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    .line 472
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jx;->l()[B

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jx;->g:[B

    .line 71
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v6

    .line 74
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/kl;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jx;->g:[B

    invoke-direct {v3, v0}, Lcom/baidu/bdgame/sdk/obf/kl;-><init>([B)V

    .line 75
    const-string v0, "Sign"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kd;->f(Landroid/content/Context;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v1

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/jx;->g:[B

    invoke-static {v1, v4}, Lcom/baidu/bdgame/sdk/obf/kp;->a(Ljava/security/Key;[B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/kn;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v4, "AppKey"

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/kd;->d()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/jx;->a(Lcom/baidu/bdgame/sdk/obf/kd;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/kl;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "IMSI"

    invoke-static {v6}, Lcom/baidu/bdgame/sdk/obf/jx;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/jx;->a(Lcom/baidu/bdgame/sdk/obf/kd;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/kl;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v4, "IMEI"

    invoke-static {v6}, Lcom/baidu/bdgame/sdk/obf/jx;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/jx;->a(Lcom/baidu/bdgame/sdk/obf/kd;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/kl;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v4, "AdId"

    invoke-static {v6}, Lcom/baidu/bdgame/sdk/obf/jx;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/jx;->a(Lcom/baidu/bdgame/sdk/obf/kd;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/kl;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v4, "MAC"

    invoke-static {v6}, Lcom/baidu/bdgame/sdk/obf/jx;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/jx;->a(Lcom/baidu/bdgame/sdk/obf/kd;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/kl;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v4, "ICCID"

    invoke-static {v6}, Lcom/baidu/bdgame/sdk/obf/jx;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/jx;->a(Lcom/baidu/bdgame/sdk/obf/kd;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/kl;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v4, "MCC"

    invoke-static {v6}, Lcom/baidu/bdgame/sdk/obf/kw;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/jx;->a(Lcom/baidu/bdgame/sdk/obf/kd;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/kl;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v4, "MNC"

    invoke-static {v6}, Lcom/baidu/bdgame/sdk/obf/kw;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/jx;->a(Lcom/baidu/bdgame/sdk/obf/kd;Lorg/json/JSONObject;Lcom/baidu/bdgame/sdk/obf/kl;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "CUID"

    invoke-static {v6}, Lcom/baidu/bdgame/sdk/obf/jx;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v0, "AccountTypePrefer"

    invoke-virtual {p1, v6}, Lcom/baidu/bdgame/sdk/obf/kd;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v0, "AppVersionName"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/le;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v0, "AppVersionCode"

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/le;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    return-object v2
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kc;->b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z

    .line 142
    if-nez p2, :cond_c7

    .line 145
    const-string v2, "SessionId"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 147
    const-string v1, "SessionId"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/jx;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 219
    :goto_1b
    return v0

    .line 151
    :cond_1c
    const/4 v3, 0x0

    .line 153
    :try_start_1d
    const-string v4, "utf-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_4a

    move-result-object v2

    .line 157
    :goto_23
    if-eqz v2, :cond_bd

    array-length v3, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_bd

    .line 159
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/kf;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/kf;-><init>()V

    .line 160
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/kf;->a([B)V

    .line 161
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jx;->g:[B

    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/kf;->b([B)V

    .line 163
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, p1, v2, p4}, Lcom/baidu/bdgame/sdk/obf/jx;->e(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/cf;

    move-result-object v2

    .line 164
    if-nez v2, :cond_50

    .line 165
    const-string v1, "SdkConfig"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/jx;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    goto :goto_1b

    .line 154
    :catch_4a
    move-exception v2

    .line 155
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    goto :goto_23

    .line 169
    :cond_50
    invoke-virtual {p1, v2}, Lcom/baidu/bdgame/sdk/obf/kd;->a(Lcom/baidu/bdgame/sdk/obf/cf;)V

    .line 170
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/baidu/bdgame/sdk/obf/kd;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kf;)V

    .line 172
    const-string v0, "ok"

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bv;->b(Landroid/content/Context;)V

    .line 180
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/baidu/bdgame/sdk/obf/jx;->c(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;Lorg/json/JSONObject;)Z

    .line 182
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/baidu/bdgame/sdk/obf/jx;->d(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 183
    const-string v0, "BaiduPlatformSDK"

    const-string v2, "format BasicConfigVer"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_7d
    invoke-direct {p0, p1, p4}, Lcom/baidu/bdgame/sdk/obf/jx;->a(Lcom/baidu/bdgame/sdk/obf/kd;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 186
    const-string v0, "BaiduPlatformSDK"

    const-string v2, "format ServerTime"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_8a
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/baidu/bdgame/sdk/obf/jx;->a(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 189
    const-string v0, "BaiduPlatformSDK"

    const-string v2, "format ErrorDescVer"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_9b
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/baidu/bdgame/sdk/obf/jx;->b(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_ac

    .line 192
    const-string v0, "BaiduPlatformSDK"

    const-string v2, "format PayConfigVer"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_ac
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/jx;->a(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;)V

    .line 198
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/baidu/bdgame/sdk/obf/jx;->f(Lcom/baidu/bdgame/sdk/obf/kd;Landroid/content/Context;Lorg/json/JSONObject;)Z

    :cond_ba
    :goto_ba
    move v0, v1

    .line 219
    goto/16 :goto_1b

    .line 200
    :cond_bd
    const-string v1, "SessionId"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/jx;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    goto/16 :goto_1b

    .line 203
    :cond_c7
    const/16 v2, 0x3ea

    if-ne p2, v2, :cond_eb

    .line 205
    const-string v2, "PubKey"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e1

    .line 207
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/kd;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 208
    iput-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/jx;->b:Z

    goto :goto_ba

    .line 210
    :cond_e1
    const-string v1, "PubKey"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/jx;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    goto/16 :goto_1b

    .line 213
    :cond_eb
    const/16 v0, 0x3eb

    if-ne p2, v0, :cond_ba

    .line 215
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jx;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kd;->e(Landroid/content/Context;)V

    .line 216
    iput-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/jx;->b:Z

    goto :goto_ba
.end method

.method protected b()[B
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jx;->g:[B

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/jx;->b:Z

    return v0
.end method
