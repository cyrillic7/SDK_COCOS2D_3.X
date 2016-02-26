.class public final Lcom/duoku/platform/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/duoku/platform/util/k;

.field private b:Lorg/json/JSONObject;

.field private c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/duoku/platform/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    .line 32
    iput-object v1, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    .line 34
    iput-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    .line 39
    return-void
.end method

.method private g()Lorg/json/JSONObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/duoku/platform/g/b;

    invoke-direct {v0}, Lcom/duoku/platform/g/b;-><init>()V

    .line 45
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    .line 46
    invoke-virtual {v0}, Lcom/duoku/platform/g/b;->g()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->e()Ljava/lang/String;

    move-result-object v2

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static {}, Lcom/duoku/platform/util/l;->a()Ljava/lang/String;

    move-result-object v4

    .line 53
    iget-object v5, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v6, "version"

    const-string v7, "3.5.2"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v5, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v6, "ua"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    iget-object v5, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v6, "os"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "android"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object v5, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v6, "gameversion"

    invoke-static {}, Lcom/duoku/platform/util/q;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object v5, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v6, "channel"

    invoke-static {}, Lcom/duoku/platform/util/q;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object v5, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v6, "connecttype"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v5, "imei"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v4, "appid"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "appkey"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "app_secret"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "sessionid"

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v2

    const-string v3, "91sessionId"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "udid"

    invoke-static {}, Lcom/duoku/platform/util/l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "androidid"

    invoke-static {}, Lcom/duoku/platform/util/l;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "ipaddress"

    invoke-static {}, Lcom/duoku/platform/util/q;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "bdcuid"

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/StatSDKService;->getCuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "push_channelid"

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v2

    const-string v3, "push_channelid"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    const-string v1, "push_userid"

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v2

    const-string v3, "push_userid"

    invoke-virtual {v2, v3}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    iget-object v0, p0, Lcom/duoku/platform/f/a;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method private h()Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 849
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    .line 851
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v0

    .line 852
    iget-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    const-string v2, "sessionid"

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduBDUSS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 853
    iget-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    const-string v2, "duokuid"

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v3

    const-string v4, "dkuserid"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    iget-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    const-string v2, "uid"

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduOAuthUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 856
    iget-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    const-string v2, "uname"

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getBaiduAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 857
    iget-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    const-string v2, "displayname"

    invoke-virtual {v0}, Lcom/baidu/platformsdk/BDPlatformUser;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 858
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/duoku/platform/f/a;->c:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 142
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 143
    const-string v2, "tag"

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    .line 153
    :goto_14
    return-object v0

    .line 146
    :catch_15
    move-exception v1

    .line 149
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public a(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 360
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 361
    const-string v2, "state_code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 362
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    .line 369
    :goto_f
    return-object v0

    .line 364
    :catch_10
    move-exception v1

    .line 367
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 319
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 320
    const-string v2, "tag"

    const/16 v3, 0x67

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 321
    const-string v2, "logintype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v2, "baidu91sessionid"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_26} :catch_28

    move-result-object v0

    .line 332
    :goto_27
    return-object v0

    .line 326
    :catch_28
    move-exception v1

    .line 328
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 329
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 340
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 341
    const-string v2, "state_code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 342
    const-string v2, "user_id"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v2, "user_name"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v2, "user_sessionid"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 352
    :goto_1e
    return-object v0

    .line 347
    :catch_1f
    move-exception v1

    .line 350
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    .prologue
    .line 881
    const/4 v1, 0x0

    .line 884
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v0

    .line 885
    const-string v2, "quarry"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 886
    const-string v2, "lottaryid"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 887
    const-string v2, "cardid"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 888
    const-string v2, "title"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 889
    const-string v2, "cost"

    invoke-virtual {v0, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 890
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_21} :catch_28

    move-result-object v0

    .line 892
    :try_start_22
    iget-object v1, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1, v0}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_27} :catch_39

    .line 899
    :goto_27
    return-object v0

    .line 894
    :catch_28
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 896
    :goto_2c
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 897
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_27

    .line 894
    :catch_39
    move-exception v1

    goto :goto_2c
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 203
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v2

    .line 204
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 206
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_4a

    .line 209
    invoke-virtual {v1}, Lcom/baidu/platformsdk/BDPlatformUser;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string v3, "tag"

    const/16 v4, 0x68

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v3, "sessionid"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v3, "statisticsid"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v3, "userid"

    if-nez v1, :cond_40

    const-string v1, ""

    :cond_40
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v1, "product_key"

    const-string v3, "opengame"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    :cond_4a
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_4d} :catch_4f

    move-result-object v0

    .line 226
    :goto_4e
    return-object v0

    .line 220
    :catch_4f
    move-exception v1

    .line 222
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 223
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_4e
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 399
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 400
    const-string v2, "tag"

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    const-string v2, "bduserid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    const-string v2, "dkuserid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 410
    :goto_1e
    return-object v0

    .line 405
    :catch_1f
    move-exception v1

    .line 407
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 408
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 779
    const/4 v0, 0x0

    .line 782
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 783
    const-string v2, "tag"

    const/16 v3, 0x3a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 784
    const-string v2, "messageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 785
    const-string v2, "dkuserid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 786
    const-string v2, "type"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 787
    const-string v2, "welfareinfo"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_29

    move-result-object v0

    .line 795
    :goto_28
    return-object v0

    .line 790
    :catch_29
    move-exception v1

    .line 792
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 793
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_28
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 243
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v2

    .line 244
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 246
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v1

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_59

    .line 249
    invoke-virtual {v1}, Lcom/baidu/platformsdk/BDPlatformUser;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string v3, "tag"

    const/16 v4, 0x68

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v3, "sessionid"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v3, "statisticsid"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v3, "userid"

    if-nez v1, :cond_40

    const-string v1, ""

    :cond_40
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v1, "product_key"

    const-string v3, "opengame"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v1, "push_title"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v1, "push_content"

    invoke-virtual {v2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    :cond_54
    :goto_54
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_58
    return-object v0

    .line 260
    :cond_59
    const-string v1, "tag"

    const/16 v3, 0x68

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v1, "statisticsid"

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v1, "product_key"

    const-string v3, "opengame"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v1, "push_title"

    invoke-virtual {v2, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v1, "push_content"

    invoke-virtual {v2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_7a} :catch_7b

    goto :goto_54

    .line 270
    :catch_7b
    move-exception v1

    .line 272
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 273
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_58
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    .prologue
    .line 1023
    const/4 v0, 0x0

    .line 1027
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 1028
    const-string v2, "tag"

    const/16 v3, 0x258

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1029
    const-string v2, "userid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1030
    const-string v2, "logintype"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1031
    const-string v2, "accesstoken"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1032
    const-string v2, "screen_orient"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1033
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_2b} :catch_2d

    move-result-object v0

    .line 1040
    :goto_2c
    return-object v0

    .line 1035
    :catch_2d
    move-exception v1

    .line 1037
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1038
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 172
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 173
    const-string v2, "tag"

    const/16 v3, 0x3d

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v2, "type"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v2, "question"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v2, "phone"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v2, "logintype"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_27} :catch_29

    move-result-object v0

    .line 188
    :goto_28
    return-object v0

    .line 181
    :catch_29
    move-exception v1

    .line 184
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 185
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_28
.end method

.method public b()Ljava/lang/String;
    .registers 5

    .prologue
    .line 578
    const/4 v0, 0x0

    .line 581
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 582
    const-string v2, "tag"

    const/16 v3, 0x6e

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    .line 590
    :goto_14
    return-object v0

    .line 585
    :catch_15
    move-exception v1

    .line 587
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 588
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public b(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 377
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 378
    const-string v2, "init_state"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 379
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    .line 385
    :goto_f
    return-object v0

    .line 381
    :catch_10
    move-exception v1

    .line 383
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_f
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 424
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 425
    const-string v2, "tag"

    const/16 v3, 0x4c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 426
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 434
    :goto_19
    return-object v0

    .line 429
    :catch_1a
    move-exception v1

    .line 431
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 432
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 451
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 452
    const-string v2, "tag"

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 453
    const-string v2, "dkuserid"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    const-string v2, "messageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 462
    :goto_1e
    return-object v0

    .line 457
    :catch_1f
    move-exception v1

    .line 459
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 460
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 963
    const/4 v0, 0x0

    .line 966
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 967
    const-string v2, "gameid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 968
    const-string v2, "gamename"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 969
    const-string v2, "packagename"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 970
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_17} :catch_19

    move-result-object v0

    .line 977
    :goto_18
    return-object v0

    .line 972
    :catch_19
    move-exception v1

    .line 974
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 975
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 480
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 481
    const-string v2, "tag"

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    const-string v2, "bduserid"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    const-string v2, "dkuserid"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 484
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    const-string v2, "msgcount"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_27} :catch_29

    move-result-object v0

    .line 493
    :goto_28
    return-object v0

    .line 488
    :catch_29
    move-exception v1

    .line 490
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 491
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_28
.end method

.method public c()Ljava/lang/String;
    .registers 5

    .prologue
    .line 805
    const/4 v0, 0x0

    .line 808
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 809
    const-string v2, "tag"

    const/16 v3, 0x2b

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 810
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    .line 817
    :goto_14
    return-object v0

    .line 812
    :catch_15
    move-exception v1

    .line 814
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 815
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 601
    const/4 v0, 0x0

    .line 604
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 605
    const-string v2, "tag"

    const/16 v3, 0x43

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 606
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 607
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 615
    :goto_19
    return-object v0

    .line 609
    :catch_1a
    move-exception v1

    .line 611
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 612
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 529
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 530
    const-string v2, "tag"

    const/16 v3, 0x41

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 532
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 542
    :goto_1e
    return-object v0

    .line 535
    :catch_1f
    move-exception v1

    .line 538
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 539
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public d()Ljava/lang/String;
    .registers 5

    .prologue
    .line 827
    const/4 v0, 0x0

    .line 830
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 831
    const-string v2, "tag"

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 832
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    .line 839
    :goto_14
    return-object v0

    .line 834
    :catch_15
    move-exception v1

    .line 836
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 837
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 704
    const/4 v0, 0x0

    .line 708
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 709
    const-string v2, "tag"

    const/16 v3, 0x45

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 710
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 711
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 719
    :goto_19
    return-object v0

    .line 713
    :catch_1a
    move-exception v1

    .line 715
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 716
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 556
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 557
    const-string v2, "tag"

    const/16 v3, 0x42

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 558
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 560
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 567
    :goto_1e
    return-object v0

    .line 562
    :catch_1f
    move-exception v1

    .line 564
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 565
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public e()Ljava/lang/String;
    .registers 4

    .prologue
    .line 982
    const/4 v0, 0x0

    .line 985
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 986
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 993
    :goto_9
    return-object v0

    .line 988
    :catch_a
    move-exception v1

    .line 990
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 991
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 729
    const/4 v0, 0x0

    .line 733
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 734
    const-string v2, "tag"

    const/16 v3, 0x4a

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 735
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 736
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 744
    :goto_19
    return-object v0

    .line 738
    :catch_1a
    move-exception v1

    .line 740
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 741
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 629
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 630
    const-string v2, "tag"

    const/16 v3, 0x47

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 641
    :goto_1e
    return-object v0

    .line 635
    :catch_1f
    move-exception v1

    .line 637
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 638
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public f()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1049
    const/4 v0, 0x0

    .line 1052
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 1053
    const-string v2, "dkuserid"

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/duoku/platform/util/o;->a(Landroid/content/Context;)Lcom/duoku/platform/util/o;

    move-result-object v3

    const-string v4, "dkuserid"

    invoke-virtual {v3, v4}, Lcom/duoku/platform/util/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1054
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 1056
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v2

    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/duoku/platform/b;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/k;->g(Landroid/content/Context;)Lcom/baidu/platformsdk/BDPlatformUser;

    move-result-object v2

    .line 1057
    if-eqz v2, :cond_41

    .line 1059
    const-string v3, "username"

    invoke-virtual {v2}, Lcom/baidu/platformsdk/BDPlatformUser;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1062
    :cond_41
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_44} :catch_46

    move-result-object v0

    .line 1069
    :goto_45
    return-object v0

    .line 1064
    :catch_46
    move-exception v1

    .line 1066
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1067
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_45
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 911
    const/4 v0, 0x0

    .line 914
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 915
    const-string v2, "gameActivityId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 916
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v0

    .line 923
    :goto_e
    return-object v0

    .line 918
    :catch_f
    move-exception v1

    .line 920
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 921
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 651
    const/4 v0, 0x0

    .line 655
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 656
    const-string v2, "tag"

    const/16 v3, 0x48

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 659
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 668
    :goto_1e
    return-object v0

    .line 661
    :catch_1f
    move-exception v1

    .line 664
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 665
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 935
    const/4 v0, 0x0

    .line 938
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    .line 939
    const-string v2, "giftbagId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 940
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v0

    .line 947
    :goto_e
    return-object v0

    .line 942
    :catch_f
    move-exception v1

    .line 944
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 945
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 682
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 683
    const-string v2, "tag"

    const/16 v3, 0x49

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 684
    const-string v2, "baidu91token"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    const-string v2, "pageid"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 694
    :goto_1e
    return-object v0

    .line 688
    :catch_1f
    move-exception v1

    .line 690
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 691
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1005
    :try_start_1
    invoke-direct {p0}, Lcom/duoku/platform/f/a;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 1006
    const-string v2, "tag"

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1007
    const-string v2, "identifyname"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1008
    const-string v2, "identifynumber"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1009
    const-string v2, "identifytype"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1010
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_23
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_23} :catch_25

    move-result-object v0

    .line 1017
    :goto_24
    return-object v0

    .line 1012
    :catch_25
    move-exception v1

    .line 1014
    iget-object v2, p0, Lcom/duoku/platform/f/a;->a:Lcom/duoku/platform/util/k;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    goto :goto_24
.end method
