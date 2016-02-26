.class public Lcom/qbao/sdk/a/e;
.super Lcom/qbao/sdk/a/d;
.source "QbaoPayMain.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "QbaoSdk"

.field private static dg:Lcom/qbao/sdk/a/e;

.field private static dh:Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

.field private static dk:Landroid/os/Handler;


# instance fields
.field private di:Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

.field private dj:Lcom/qbao/sdk/d/a;

.field private dl:Ljava/lang/String;

.field private dm:Lorg/json/JSONObject;

.field private dn:Lcom/qbao/sdk/ui/BaseView;

.field private u:Lcom/qbao/core/c/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/qbao/sdk/a/e;->dk:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/qbao/sdk/a/d;-><init>(Landroid/app/Activity;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/qbao/sdk/a/d;-><init>(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method private Y(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 298
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 300
    :try_start_6
    const-string v2, "&"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 301
    :goto_c
    array-length v3, v2

    if-lt v0, v3, :cond_10

    .line 308
    :goto_f
    return-object v1

    .line 302
    :cond_10
    aget-object v3, v2, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 303
    const/4 v4, 0x0

    aget-object v4, v3, v4

    aget-object v5, v2, v0

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_30

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 305
    :catch_30
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method static synthetic a(Lcom/qbao/sdk/a/e;)Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->dm:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;)V
    .registers 7

    .prologue
    .line 110
    invoke-static {p0}, Lcom/qbao/core/util/k;->o(Landroid/content/Context;)V

    .line 111
    new-instance v0, Lcom/qbao/sdk/a/e;

    invoke-direct {v0, p0}, Lcom/qbao/sdk/a/e;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/qbao/sdk/a/e;->dg:Lcom/qbao/sdk/a/e;

    .line 112
    sget-object v0, Lcom/qbao/sdk/a/e;->dg:Lcom/qbao/sdk/a/e;

    invoke-virtual {v0, p0}, Lcom/qbao/sdk/a/e;->setActivity(Landroid/app/Activity;)V

    .line 115
    invoke-static {p0}, Lcom/qbao/core/b/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qbao/sdk/e/a;->fw:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcom/qbao/sdk/e/g;->init()V

    .line 121
    sget-object v0, Lcom/qbao/sdk/a/e;->dk:Landroid/os/Handler;

    invoke-static {v0}, Lcom/qbao/sdk/a/e;->a(Landroid/os/Handler;)V

    .line 123
    sget-object v0, Lcom/qbao/sdk/a/e;->dg:Lcom/qbao/sdk/a/e;

    invoke-virtual {v0}, Lcom/qbao/sdk/a/e;->aj()V

    .line 126
    sget-object v0, Lcom/qbao/sdk/a/e;->dg:Lcom/qbao/sdk/a/e;

    new-instance v1, Lcom/qbao/core/c/c;

    invoke-static {}, Lcom/qbao/sdk/a/e;->af()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qbao/core/c/c;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/qbao/sdk/a/e;->b(Lcom/qbao/core/c/c;)V

    .line 127
    sget-object v0, Lcom/qbao/sdk/a/e;->dg:Lcom/qbao/sdk/a/e;

    invoke-direct {v0}, Lcom/qbao/sdk/a/e;->ag()V

    .line 128
    sget-object v0, Lcom/qbao/sdk/a/e;->dg:Lcom/qbao/sdk/a/e;

    invoke-direct {v0}, Lcom/qbao/sdk/a/e;->ah()V

    .line 131
    sget-object v0, Lcom/qbao/sdk/a/e;->dg:Lcom/qbao/sdk/a/e;

    invoke-virtual {v0, p1}, Lcom/qbao/sdk/a/e;->Z(Ljava/lang/String;)V

    .line 133
    if-eqz p3, :cond_45

    .line 134
    sget-object v0, Lcom/qbao/sdk/a/e;->dg:Lcom/qbao/sdk/a/e;

    iput-object p3, v0, Lcom/qbao/sdk/a/e;->di:Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    .line 138
    :cond_45
    new-instance v0, Lcom/qbao/sdk/a/a;

    invoke-direct {v0, p0, p2}, Lcom/qbao/sdk/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qbao/sdk/a/a;->login()V

    .line 139
    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 221
    :try_start_0
    new-instance v0, Lcom/qbao/sdk/ui/PayView;

    invoke-direct {v0, p0, p1, p2}, Lcom/qbao/sdk/ui/PayView;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 222
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/qbao/sdk/ui/a;->a(Landroid/content/Context;Landroid/view/View;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 226
    :goto_9
    return-void

    .line 223
    :catch_a
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static a(Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)V
    .registers 1

    .prologue
    .line 455
    sput-object p0, Lcom/qbao/sdk/a/e;->dh:Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    .line 456
    return-void
.end method

.method public static a(Z)V
    .registers 2

    .prologue
    .line 413
    if-eqz p0, :cond_b

    .line 414
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->runFinalizersOnExit(Z)V

    .line 415
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 419
    :goto_a
    return-void

    .line 417
    :cond_b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_a
.end method

.method private static a(Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)Z
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 266
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v1

    invoke-direct {v1, p0}, Lcom/qbao/sdk/a/e;->Y(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 268
    :try_start_a
    const-string v2, "appCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 270
    const/4 v1, 0x2

    const-string v2, ""

    const-string v3, "pay info is not available,please check payInfo param >>appCode"

    invoke-interface {p1, v1, v2, v3}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    .line 294
    :goto_1e
    return v0

    .line 273
    :cond_1f
    const-string v2, "orderNo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_48

    .line 275
    :cond_33
    const/4 v1, 0x2

    const-string v2, ""

    const-string v3, "pay info is not available,please check payInfo param >>orderNo"

    invoke-interface {p1, v1, v2, v3}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3b} :catch_3c

    goto :goto_1e

    .line 288
    :catch_3c
    move-exception v1

    .line 289
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    const-string v1, ""

    const-string v2, "pay info is not available,please check payInfo param"

    invoke-interface {p1, v4, v1, v2}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1e

    .line 278
    :cond_48
    :try_start_48
    const-string v2, "payCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 280
    const/4 v1, 0x2

    const-string v2, ""

    const-string v3, "pay info is not available,please check payInfo param >>payCode"

    invoke-interface {p1, v1, v2, v3}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1e

    .line 283
    :cond_5d
    const-string v2, "payNotifyUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 285
    const/4 v1, 0x2

    const-string v2, ""

    const-string v3, "pay info is not available,please check payInfo param >>payNotifyUrl"

    invoke-interface {p1, v1, v2, v3}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_71} :catch_3c

    goto :goto_1e

    .line 293
    :cond_72
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    iput-object v1, v0, Lcom/qbao/sdk/a/e;->dm:Lorg/json/JSONObject;

    .line 294
    const/4 v0, 0x1

    goto :goto_1e
.end method

.method private ag()V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->de:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {}, Lcom/qbao/sdk/a/e;->af()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/qbao/sdk/a/f;->a(Landroid/content/Context;ZLandroid/os/Handler;)V

    .line 143
    return-void
.end method

.method private ah()V
    .registers 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qbao/sdk/a/e$1;

    invoke-direct {v1, p0}, Lcom/qbao/sdk/a/e$1;-><init>(Lcom/qbao/sdk/a/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    return-void
.end method

.method private al()V
    .registers 2

    .prologue
    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->de:Landroid/app/Activity;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/qbao/sdk/a/e;->de:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 391
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->de:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 393
    :cond_11
    invoke-static {}, Lcom/qbao/sdk/d/a;->release()V

    .line 394
    invoke-static {}, Lcom/qbao/sdk/e/b;->release()V

    .line 395
    invoke-virtual {p0}, Lcom/qbao/sdk/a/e;->ak()V

    .line 396
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qbao/sdk/a/e;->p(Landroid/content/Context;)V

    .line 397
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qbao/sdk/a/e;->a(Landroid/os/Handler;)V

    .line 398
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qbao/sdk/a/e;->a(Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)V

    .line 399
    const/4 v0, 0x0

    sput-object v0, Lcom/qbao/sdk/a/e;->dg:Lcom/qbao/sdk/a/e;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 403
    :goto_29
    return-void

    .line 400
    :catch_2a
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public static an()Lcom/qbao/sdk/a/e;
    .registers 1

    .prologue
    .line 435
    sget-object v0, Lcom/qbao/sdk/a/e;->dg:Lcom/qbao/sdk/a/e;

    return-object v0
.end method

.method public static ao()Lcom/qbao/core/c/c;
    .registers 1

    .prologue
    .line 443
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    iget-object v0, v0, Lcom/qbao/sdk/a/e;->u:Lcom/qbao/core/c/c;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static ap()Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;
    .registers 1

    .prologue
    .line 451
    sget-object v0, Lcom/qbao/sdk/a/e;->dh:Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 206
    invoke-static {p0, p1, p2}, Lcom/qbao/sdk/a/e;->a(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)Z
    .registers 3

    .prologue
    .line 265
    invoke-static {p0, p1}, Lcom/qbao/sdk/a/e;->a(Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)Z

    move-result v0

    return v0
.end method

.method public static exit(Landroid/content/Context;Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;)V
    .registers 4

    .prologue
    .line 336
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    if-eqz v0, :cond_8

    if-nez p0, :cond_9

    .line 346
    :cond_8
    :goto_8
    return-void

    .line 338
    :cond_9
    invoke-static {}, Lcom/qbao/sdk/a/e;->af()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qbao/sdk/a/e$5;

    invoke-direct {v1, p0, p1}, Lcom/qbao/sdk/a/e$5;-><init>(Landroid/content/Context;Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8
.end method

.method public static exitApp()V
    .registers 1

    .prologue
    .line 352
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 353
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    invoke-direct {v0}, Lcom/qbao/sdk/a/e;->al()V

    .line 355
    :cond_d
    return-void
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)V
    .registers 5

    .prologue
    .line 169
    invoke-static {}, Lcom/qbao/sdk/a/e;->af()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qbao/sdk/a/e$2;

    invoke-direct {v1, p2, p1, p0}, Lcom/qbao/sdk/a/e$2;-><init>(Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    return-void
.end method

.method private static q(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 233
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    iget-object v0, v0, Lcom/qbao/sdk/a/e;->dm:Lorg/json/JSONObject;

    if-nez v0, :cond_f

    .line 259
    :cond_e
    :goto_e
    return-void

    .line 236
    :cond_f
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u83b7\u53d6\u652f\u4ed8\u4fe1\u606f\uff0c\u8bf7\u7a0d\u540e\u2026"

    invoke-virtual {v0, p0, v1}, Lcom/qbao/sdk/a/e;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    iget-object v0, v0, Lcom/qbao/sdk/a/e;->dm:Lorg/json/JSONObject;

    new-instance v1, Lcom/qbao/sdk/a/e$3;

    invoke-direct {v1, p0}, Lcom/qbao/sdk/a/e$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/qbao/sdk/a/b;->a(Lorg/json/JSONObject;Lcom/qbao/core/a/b;)V

    goto :goto_e
.end method

.method public static r(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 316
    new-instance v0, Lcom/qbao/sdk/a/e$4;

    invoke-direct {v0}, Lcom/qbao/sdk/a/e$4;-><init>()V

    invoke-static {p0, v0}, Lcom/qbao/sdk/a/e;->exit(Landroid/content/Context;Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;)V

    .line 329
    return-void
.end method

.method static synthetic s(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 232
    invoke-static {p0}, Lcom/qbao/sdk/a/e;->q(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public Z(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 473
    iput-object p1, p0, Lcom/qbao/sdk/a/e;->dl:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public a(Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;)V
    .registers 3

    .prologue
    .line 463
    sget-object v0, Lcom/qbao/sdk/a/e;->dg:Lcom/qbao/sdk/a/e;

    if-eqz v0, :cond_8

    .line 464
    sget-object v0, Lcom/qbao/sdk/a/e;->dg:Lcom/qbao/sdk/a/e;

    iput-object p1, v0, Lcom/qbao/sdk/a/e;->di:Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    .line 466
    :cond_8
    return-void
.end method

.method public ai()Lcom/qbao/sdk/d/a;
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->dj:Lcom/qbao/sdk/d/a;

    if-nez v0, :cond_19

    .line 159
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->de:Landroid/app/Activity;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/qbao/sdk/a/e;->de:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 160
    new-instance v0, Lcom/qbao/sdk/d/a;

    iget-object v1, p0, Lcom/qbao/sdk/a/e;->de:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/qbao/sdk/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qbao/sdk/a/e;->dj:Lcom/qbao/sdk/d/a;

    .line 165
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->dj:Lcom/qbao/sdk/d/a;

    return-object v0

    .line 162
    :cond_1c
    new-instance v0, Lcom/qbao/sdk/d/a;

    invoke-static {}, Lcom/qbao/sdk/a/e;->ae()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qbao/sdk/d/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qbao/sdk/a/e;->dj:Lcom/qbao/sdk/d/a;

    goto :goto_19
.end method

.method public aj()V
    .registers 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->df:Lcom/qbao/sdk/service/NetworkChangeReceiver;

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/qbao/sdk/a/e;->ae()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 365
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    new-instance v1, Lcom/qbao/sdk/service/NetworkChangeReceiver;

    invoke-direct {v1}, Lcom/qbao/sdk/service/NetworkChangeReceiver;-><init>()V

    iput-object v1, p0, Lcom/qbao/sdk/a/e;->df:Lcom/qbao/sdk/service/NetworkChangeReceiver;

    .line 368
    invoke-static {}, Lcom/qbao/sdk/a/e;->ae()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qbao/sdk/a/e;->df:Lcom/qbao/sdk/service/NetworkChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    :cond_2d
    return-void
.end method

.method public ak()V
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->df:Lcom/qbao/sdk/service/NetworkChangeReceiver;

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/qbao/sdk/a/e;->ae()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 380
    invoke-static {}, Lcom/qbao/sdk/a/e;->ae()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qbao/sdk/a/e;->df:Lcom/qbao/sdk/service/NetworkChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qbao/sdk/a/e;->df:Lcom/qbao/sdk/service/NetworkChangeReceiver;

    .line 383
    :cond_1a
    return-void
.end method

.method public am()V
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->dn:Lcom/qbao/sdk/ui/BaseView;

    if-eqz v0, :cond_9

    .line 430
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->dn:Lcom/qbao/sdk/ui/BaseView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/BaseView;->am()V

    .line 432
    :cond_9
    return-void
.end method

.method public aq()Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->di:Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;

    return-object v0
.end method

.method public ar()Ljava/lang/String;
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->dl:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/qbao/core/c/c;)V
    .registers 2

    .prologue
    .line 447
    iput-object p1, p0, Lcom/qbao/sdk/a/e;->u:Lcom/qbao/core/c/c;

    .line 448
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 422
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->dn:Lcom/qbao/sdk/ui/BaseView;

    if-nez v0, :cond_b

    .line 423
    new-instance v0, Lcom/qbao/sdk/ui/BaseView;

    invoke-direct {v0, p1}, Lcom/qbao/sdk/ui/BaseView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qbao/sdk/a/e;->dn:Lcom/qbao/sdk/ui/BaseView;

    .line 425
    :cond_b
    iget-object v0, p0, Lcom/qbao/sdk/a/e;->dn:Lcom/qbao/sdk/ui/BaseView;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/qbao/sdk/ui/BaseView;->b(Ljava/lang/String;Z)V

    .line 426
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 439
    iput-object p1, p0, Lcom/qbao/sdk/a/e;->de:Landroid/app/Activity;

    .line 440
    return-void
.end method
