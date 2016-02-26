.class public Lcom/baidu/mtjstatsdk/game/BDGameDataCore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mtjstatsdk/GameCacheLoadListener;


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Landroid/content/Context;

.field private static f:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

.field private static g:Landroid/os/HandlerThread;

.field private static h:Landroid/os/Handler;


# instance fields
.field e:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Ljava/util/HashMap;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GameDataThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->g:Landroid/os/HandlerThread;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->g:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    new-instance v2, Lcom/baidu/mtjstatsdk/game/a/f;

    invoke-direct {v2}, Lcom/baidu/mtjstatsdk/game/a/f;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method private a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_19

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v3

    const-string v1, "on task fail, taskID can\'t be null"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-static {p4, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0, p4}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getBDGameAccountHash(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/game/a/f;->d(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/a/d;

    move-result-object v1

    if-nez v1, :cond_3d

    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v3

    const-string v1, "You forget called onTaskStart first or you haven\'t called onTaskStart"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto :goto_18

    :cond_3d
    invoke-virtual {v1, p2}, Lcom/baidu/mtjstatsdk/game/a/d;->a(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mtjstatsdk/game/a/d;->b(J)V

    if-eqz p3, :cond_4c

    invoke-virtual {v1, p3}, Lcom/baidu/mtjstatsdk/game/a/d;->a(Ljava/lang/String;)V

    :cond_4c
    invoke-virtual {p0, p4, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->putBDGameAccountHash(Ljava/lang/String;Lcom/baidu/mtjstatsdk/game/a/f;)V

    goto :goto_18
.end method

.method static a(Ljava/lang/String;Z)Z
    .registers 6

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_d
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "statsdk"

    aput-object v3, v2, v0

    const-string v3, "AppKey can not be null"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_20
    :goto_20
    return v0

    :cond_21
    if-eqz p1, :cond_3f

    sget-object v2, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {p0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "statsdk"

    aput-object v3, v2, v0

    const-string v3, "accountID can not be null, you must set it before call any other game interface, use BDGameSDK.setAccount"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto :goto_20

    :cond_3f
    move v0, v1

    goto :goto_20
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/h;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mtjstatsdk/game/h;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/BDGameDataCore;
    .registers 2

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->f:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->f:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    :cond_b
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->f:Lcom/baidu/mtjstatsdk/game/BDGameDataCore;

    return-object v0
.end method


# virtual methods
.method public clearDataCoreHashWithAPPKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    sput-object p1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->e:Lorg/json/JSONArray;

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;)V

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    if-nez v0, :cond_37

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v0

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getAccountIDWithAppKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    :cond_37
    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    if-nez v0, :cond_3c

    :goto_3b
    return-void

    :cond_3c
    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/lang/String;

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v0

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    sget-object v2, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, v2}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getAccountServerWithAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/lang/String;

    :cond_4e
    invoke-virtual {p0, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getBDGameAccountHash(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/a/f;

    move-result-object v0

    sget-object v1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/game/a/f;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v1

    sget-object v2, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    sget-object v3, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getAccountAgeWithAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/game/a/f;->a(I)V

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v1

    sget-object v2, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    sget-object v3, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getAccountGenderWithAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/game/a/f;->c(I)V

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v1

    sget-object v2, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    sget-object v3, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getAccountLevelWithAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v2

    sget-object v3, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    sget-object v4, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getAccountLevelTimeWithAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    sget-object v4, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/baidu/mtjstatsdk/game/a/f;->a(ILjava/lang/String;J)V

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v1

    sget-object v2, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    sget-object v3, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getAccountNameWithAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/game/BDGStoreTools;

    move-result-object v2

    sget-object v3, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    sget-object v4, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    sget-object v5, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/mtjstatsdk/game/BDGStoreTools;->getAccountTypeWithAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1}, Lcom/baidu/mtjstatsdk/game/a/f;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/baidu/mtjstatsdk/game/a/f;->b(I)V

    goto :goto_3b
.end method

.method public getBDGameAccountHash(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/game/a/f;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getBDGameAccountHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getCurrentAccountID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/game/a/f;

    if-nez v0, :cond_15

    new-instance v0, Lcom/baidu/mtjstatsdk/game/a/f;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/game/a/f;-><init>()V

    :cond_15
    return-object v0
.end method

.method public getBDGameAccountHashMap(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;)V

    :cond_b
    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public getCacheJSONArray(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 4

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->e:Lorg/json/JSONArray;

    if-nez v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->readLogFromFileJSONArray(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    :cond_7
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->e:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getCacheLog(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getCacheJSONArray(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccountID()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentServer()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, ""

    sput-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/lang/String;

    :cond_8
    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->c:Ljava/lang/String;

    return-object v0
.end method

.method public initGameSDK(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/DataCore;->haveSetCacheLogWithCoreDataLock()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1}, Lcom/baidu/mtjstatsdk/DataCore;->getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mtjstatsdk/DataCore;->setCacheLogWithCoreDataLock(Lcom/baidu/mtjstatsdk/GameCacheLoadListener;)V

    :cond_11
    return-void
.end method

.method protected onPurchase(Ljava/lang/String;IDLjava/lang/String;)V
    .registers 15

    const/4 v3, 0x1

    invoke-virtual {p0, p5}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    invoke-direct {p0, p5}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_11

    if-ltz p2, :cond_11

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_27

    :cond_11
    invoke-static {p5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const-string v1, "onPurchase called failed, please check your parameters"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_26
    :goto_26
    return-void

    :cond_27
    invoke-static {p5, v3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v7, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/mtjstatsdk/game/c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mtjstatsdk/game/c;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;IDLjava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_26
.end method

.method protected onRechargeRequest(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    if-nez p2, :cond_20

    :cond_9
    invoke-static/range {p8 .. p8}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "statsdk"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "on charge request, the forward two parameters orderId and Iapid can not be nil"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const-wide/16 v2, 0x0

    cmpg-double v2, p3, v2

    if-ltz v2, :cond_2c

    const-wide/16 v2, 0x0

    cmpg-double v2, p5, v2

    if-gez v2, :cond_43

    :cond_2c
    invoke-static/range {p8 .. p8}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "statsdk"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "on charge request, the center two parameters amount and virtualAmount can not be nil"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto :goto_1f

    :cond_43
    const/4 v2, 0x1

    move-object/from16 v0, p8

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    sget-object v12, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v2, Lcom/baidu/mtjstatsdk/game/o;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/baidu/mtjstatsdk/game/o;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1f
.end method

.method protected onRechargeSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x1

    invoke-virtual {p0, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    if-nez p1, :cond_1c

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const-string v1, "on charge request, the forward two parameters orderId and Iapid can not be nil"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-static {p2, v3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/p;

    invoke-direct {v1, p0, p2, p1}, Lcom/baidu/mtjstatsdk/game/p;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1b
.end method

.method protected onTaskFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/g;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/game/g;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onTaskFinished(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/f;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onTaskStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x1

    invoke-virtual {p0, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    if-nez p1, :cond_1f

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const-string v1, "on task fail, taskID can\'t be null"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    invoke-static {p2, v3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/e;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e
.end method

.method protected onUse(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    const/4 v3, 0x1

    invoke-virtual {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_b

    if-gez p2, :cond_21

    :cond_b
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const-string v1, "onUse called failed, please check your parameters"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_20
    :goto_20
    return-void

    :cond_21
    invoke-static {p3, v3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/d;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/game/d;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20
.end method

.method public putBDGameAccountHash(Ljava/lang/String;Lcom/baidu/mtjstatsdk/game/a/f;)V
    .registers 5

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->getCurrentAccountID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected readLogFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "game"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_stat_cache.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/baidu/mtjstatsdk/b/c;->a(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLogFromFileDataCoreHash(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sget-object v3, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_c
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->readLogFromFileJSONArray(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_f} :catch_2d
    .catchall {:try_start_c .. :try_end_f} :catchall_55

    move-result-object v4

    if-nez v4, :cond_14

    :try_start_12
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_55

    :goto_13
    return-object v0

    :cond_14
    :try_start_14
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v2, v1

    :goto_19
    if-ge v2, v5, :cond_53

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    new-instance v6, Lcom/baidu/mtjstatsdk/game/a/f;

    invoke-direct {v6, v1}, Lcom/baidu/mtjstatsdk/game/a/f;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, p2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_29} :catch_2d
    .catchall {:try_start_14 .. :try_end_29} :catchall_55

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_19

    :catch_2d
    move-exception v1

    const/4 v2, 0x2

    :try_start_2f
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "statsdk"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readLogFromFileDataCoreHash error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_53
    monitor-exit v3

    goto :goto_13

    :catchall_55
    move-exception v0

    monitor-exit v3
    :try_end_57
    .catchall {:try_start_2f .. :try_end_57} :catchall_55

    throw v0
.end method

.method protected readLogFromFileJSONArray(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "game"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_stat_cache.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/baidu/mtjstatsdk/b/c;->a(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->e:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->e:Lorg/json/JSONArray;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_27} :catch_28

    :goto_27
    return-object v0

    :catch_28
    move-exception v0

    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readLogFromFileJSONArray error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_27
.end method

.method protected setAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x1

    if-eqz p2, :cond_b

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_b
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const-string v1, "\u8bbe\u7f6e\u7684\u8d26\u53f7id\u4e0d\u80fd\u4e3a\u7a7a\u6216\u8005\u4e3anull || The account that you have been set is null or empty, please check it."

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_20
    invoke-static {p3, v3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_27

    :goto_26
    return-void

    :cond_27
    if-eqz p1, :cond_2b

    sput-object p1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    :cond_2b
    invoke-direct {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/game/b;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_26
.end method

.method protected setAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    if-eqz p2, :cond_d

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_d
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "statsdk"

    const-string v1, "\u8bbe\u7f6e\u7684\u8d26\u53f7\u540d\u79f0\u4e3a\u7a7a\u6216\u8005\u4e3anull || The account that you have been set is null or empty."

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_22

    :goto_21
    return-void

    :cond_22
    if-eqz p1, :cond_26

    sput-object p1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    :cond_26
    invoke-direct {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/i;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/game/i;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21
.end method

.method protected setAccountType(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    sput-object p1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    :cond_7
    invoke-direct {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-le p2, v0, :cond_20

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/j;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/game/j;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    :cond_20
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "statsdk"

    const-string v1, "account type that you set is not right"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method protected setAge(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    sput-object p1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    :cond_7
    if-lez p2, :cond_1f

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-direct {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/m;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/game/m;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    :cond_1f
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "statsdk"

    const-string v1, "Age that you set is not right"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method protected setGender(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    sput-object p1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    :cond_7
    if-ltz p2, :cond_c

    const/4 v0, 0x2

    if-le p2, v0, :cond_19

    :cond_c
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "statsdk"

    const-string v1, "Gender that you set is not right"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_21

    :goto_20
    return-void

    :cond_21
    const-string v0, "statsdk"

    const-string v1, "setGender checkLoadCacheWait"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/l;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/baidu/mtjstatsdk/game/l;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;ILandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_20
.end method

.method protected setLevel(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    sput-object p1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    :cond_7
    if-lez p2, :cond_1f

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-direct {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/k;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/mtjstatsdk/game/k;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    :cond_1f
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "statsdk"

    const-string v1, "Level that you set is null"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method protected setServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->initGameSDK(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    sput-object p1, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->d:Landroid/content/Context;

    :cond_7
    if-eqz p2, :cond_27

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-direct {p0, p3}, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->h:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mtjstatsdk/game/n;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/baidu/mtjstatsdk/game/n;-><init>(Lcom/baidu/mtjstatsdk/game/BDGameDataCore;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_18

    :cond_27
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "statsdk"

    const-string v1, "server that you set is nil"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    sget-object v2, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_3
    sget-object v0, Lcom/baidu/mtjstatsdk/game/BDGameDataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_59

    :try_start_24
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mtjstatsdk/game/a/f;

    invoke-virtual {v1, p1, p2}, Lcom/baidu/mtjstatsdk/game/a/f;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_31} :catch_32
    .catchall {:try_start_24 .. :try_end_31} :catchall_59

    goto :goto_18

    :catch_32
    move-exception v1

    const/4 v5, 0x2

    :try_start_34
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "statsdk"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accountToJSONObject error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    goto :goto_18

    :catchall_59
    move-exception v0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_34 .. :try_end_5b} :catchall_59

    throw v0

    :cond_5c
    :try_start_5c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_b3

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accountToJSONObject:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "size="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "game"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "__local_stat_cache.json"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, p1, v1, v3, v4}, Lcom/baidu/mtjstatsdk/b/c;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_b3
    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_5c .. :try_end_b4} :catchall_59

    return-void
.end method
