.class public Lcom/baidu/mtjstatsdk/DataCore;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/mtjstatsdk/DataCoreObject;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/baidu/mtjstatsdk/DataCore;


# instance fields
.field b:Lcom/baidu/mtjstatsdk/GameCacheLoadListener;

.field c:Lcom/baidu/mtjstatsdk/GameExceptionListener;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->e:Z

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_a
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AppKey can not be null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_20
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :goto_28
    return-void

    :cond_29
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/baidu/mtjstatsdk/DataCoreObject;

    invoke-direct {v1}, Lcom/baidu/mtjstatsdk/DataCoreObject;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28
.end method

.method private a(ZLjava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iput-boolean p1, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->g:Z

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-boolean v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->g:Z

    return v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/DataCore;
    .registers 2

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->d:Lcom/baidu/mtjstatsdk/DataCore;

    if-nez v0, :cond_b

    new-instance v0, Lcom/baidu/mtjstatsdk/DataCore;

    invoke-direct {v0}, Lcom/baidu/mtjstatsdk/DataCore;-><init>()V

    sput-object v0, Lcom/baidu/mtjstatsdk/DataCore;->d:Lcom/baidu/mtjstatsdk/DataCore;

    :cond_b
    invoke-static {p0}, Lcom/baidu/mtjstatsdk/DataCore;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->d:Lcom/baidu/mtjstatsdk/DataCore;

    return-object v0
.end method


# virtual methods
.method public flush(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flush cache to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "__local_stat_cache.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2a
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_35} :catch_b3

    :try_start_35
    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v0, "pr"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_b0

    :try_start_4e
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_59
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_59} :catch_b3

    :try_start_59
    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v0, "ev"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v2
    :try_end_72
    .catchall {:try_start_59 .. :try_end_72} :catchall_c2

    :try_start_72
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    monitor-enter v2
    :try_end_7d
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_7d} :catch_b3

    :try_start_7d
    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const-string v0, "ex"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v2
    :try_end_96
    .catchall {:try_start_7d .. :try_end_96} :catchall_c5

    :cond_96
    :goto_96
    const-string v0, "{}"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/baidu/mtjstatsdk/DataCore;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_af

    const-string v0, "statsdk"

    const-string v1, "cache.json exceed 204800B,stop flush."

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    :goto_af
    return-void

    :catchall_b0
    move-exception v0

    :try_start_b1
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    :try_start_b2
    throw v0
    :try_end_b3
    .catch Lorg/json/JSONException; {:try_start_b2 .. :try_end_b3} :catch_b3

    :catch_b3
    move-exception v0

    const-string v0, "flushLogWithoutHeader() construct cache error"

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    :catchall_c2
    move-exception v0

    :try_start_c3
    monitor-exit v2
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    :try_start_c4
    throw v0
    :try_end_c5
    .catch Lorg/json/JSONException; {:try_start_c4 .. :try_end_c5} :catch_b3

    :catchall_c5
    move-exception v0

    :try_start_c6
    monitor-exit v2
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    :try_start_c7
    throw v0
    :try_end_c8
    .catch Lorg/json/JSONException; {:try_start_c7 .. :try_end_c8} :catch_b3

    :cond_c8
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v2, v0

    const v0, 0x32000

    if-lt v2, v0, :cond_d7

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/baidu/mtjstatsdk/DataCore;->a(ZLjava/lang/String;)V

    goto :goto_af

    :cond_d7
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iput v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_109

    const-string v2, "statsdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flush:cacheFileSize is:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "__local_stat_cache.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p1, v0, v1, v4}, Lcom/baidu/mtjstatsdk/b/c;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_af
.end method

.method public getCacheLogWithCoreDataLock()Lcom/baidu/mtjstatsdk/GameCacheLoadListener;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->b:Lcom/baidu/mtjstatsdk/GameCacheLoadListener;

    return-object v0
.end method

.method public getGameExceptionOperation()Lcom/baidu/mtjstatsdk/GameExceptionListener;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->c:Lcom/baidu/mtjstatsdk/GameExceptionListener;

    return-object v0
.end method

.method public getMemInfo(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public haveSetCacheLogWithCoreDataLock()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->b:Lcom/baidu/mtjstatsdk/GameCacheLoadListener;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public haveSetExceptionListener()Z
    .registers 2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->c:Lcom/baidu/mtjstatsdk/GameExceptionListener;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isPartEmpty(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x0

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x1

    goto :goto_31
.end method

.method public loadLastSession(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "statsdk"

    const-string v1, "LoadLastSession()"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-nez p1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__local_last_session.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "__local_last_session.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, p1, v0}, Lcom/baidu/mtjstatsdk/b/c;->a(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "statsdk"

    const-string v1, "loadLastSession(): last_session.json file not found."

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "__local_last_session.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, p1, v2, v1, v4}, Lcom/baidu/mtjstatsdk/b/c;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, p2}, Lcom/baidu/mtjstatsdk/DataCore;->putSession(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public loadStatData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 15

    const-wide/32 v10, 0x240c8400

    const/4 v1, 0x0

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "__local_stat_cache.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/mtjstatsdk/b/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "__local_stat_cache.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/baidu/mtjstatsdk/b/c;->a(ZLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "statsdk"

    const-string v1, "stat_cache file not found."

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_4d
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "statsdk"

    const-string v3, "loadStatData, "

    invoke-static {v0, v3}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    :try_start_5a
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    iput v3, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    const-string v3, "statsdk"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load Stat Data:cacheFileSize is:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    const-string v0, "statsdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load cache:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v0, "pr"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    :goto_bf
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_fe

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_d8

    :goto_d5
    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    :cond_d8
    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7, p2}, Lcom/baidu/mtjstatsdk/DataCore;->putSession(Lorg/json/JSONObject;ZLjava/lang/String;)V
    :try_end_dc
    .catch Lorg/json/JSONException; {:try_start_5a .. :try_end_dc} :catch_dd

    goto :goto_d5

    :catch_dd
    move-exception v0

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load stat data error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_fe
    :try_start_fe
    const-string v0, "ev"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    :goto_105
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_123

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "t"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long v8, v4, v8

    cmp-long v7, v8, v10

    if-lez v7, :cond_11e

    :goto_11b
    add-int/lit8 v0, v0, 0x1

    goto :goto_105

    :cond_11e
    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7, p2}, Lcom/baidu/mtjstatsdk/DataCore;->putEvent(Lorg/json/JSONObject;ZLjava/lang/String;)V

    goto :goto_11b

    :cond_123
    const-string v0, "ex"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    :goto_12a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "t"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v4, v6

    cmp-long v3, v6, v10

    if-lez v3, :cond_143

    :goto_140
    add-int/lit8 v0, v0, 0x1

    goto :goto_12a

    :cond_143
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, p2}, Lcom/baidu/mtjstatsdk/DataCore;->putException(Lorg/json/JSONObject;ZLjava/lang/String;)V
    :try_end_147
    .catch Lorg/json/JSONException; {:try_start_fe .. :try_end_147} :catch_dd

    goto :goto_140
.end method

.method public putEvent(Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/String;)V
    .registers 13

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "i"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "l"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "c"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "t"

    invoke-virtual {v0, v1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "d"

    invoke-virtual {v0, v1, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p8}, Lcom/baidu/mtjstatsdk/DataCore;->putEvent(Lorg/json/JSONObject;ZLjava/lang/String;)V

    invoke-static {p8}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_44} :catch_45

    :cond_44
    :goto_44
    return-void

    :catch_45
    move-exception v0

    invoke-static {p8}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "statsdk"

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44
.end method

.method public putEvent(Lorg/json/JSONObject;ZLjava/lang/String;)V
    .registers 23

    if-eqz p1, :cond_4a

    if-nez p2, :cond_4a

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "statsdk"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "putEvent:eventSize is:"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/b/f;->a([Ljava/lang/Object;)I

    :cond_2a
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget v2, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    add-int/2addr v2, v3

    const v3, 0x32000

    if-le v2, v3, :cond_4a

    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "statsdk"

    const-string v3, "putEvent: size is full!"

    invoke-static {v2, v3}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    return-void

    :cond_4a
    const/4 v2, 0x0

    :try_start_4b
    const-string v3, "i"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "l"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/32 v8, 0x36ee80

    div-long v8, v4, v8

    const-string v3, "s"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_4b .. :try_end_6f} :catch_e9

    move-result-object v3

    :try_start_70
    const-string v4, "d"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_77} :catch_f7

    move-result v2

    :cond_78
    :goto_78
    if-nez v2, :cond_1c6

    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v10, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    monitor-enter v10

    :try_start_87
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_116

    move-result v5

    if-eqz v3, :cond_a1

    :try_start_99
    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    :cond_a1
    const-string v2, "s"

    const-string v3, "0|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_99 .. :try_end_aa} :catch_107
    .catchall {:try_start_99 .. :try_end_aa} :catchall_116

    :cond_aa
    :goto_aa
    const/4 v4, 0x0

    move v3, v5

    :goto_ac
    if-ge v4, v5, :cond_215

    :try_start_ae
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v2, "i"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "l"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "t"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/32 v16, 0x36ee80

    div-long v14, v14, v16
    :try_end_d5
    .catch Lorg/json/JSONException; {:try_start_ae .. :try_end_d5} :catch_128
    .catchall {:try_start_ae .. :try_end_d5} :catchall_116

    const/4 v2, 0x0

    :try_start_d6
    const-string v16, "d"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_dd
    .catch Lorg/json/JSONException; {:try_start_d6 .. :try_end_dd} :catch_119
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_116

    move-result v2

    :cond_de
    :goto_de
    cmp-long v14, v14, v8

    if-nez v14, :cond_e4

    if-eqz v2, :cond_13a

    :cond_e4
    move v2, v3

    :cond_e5
    :goto_e5
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_ac

    :catch_e9
    move-exception v2

    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    const-string v3, "statsdk"

    invoke-static {v3, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_49

    :catch_f7
    move-exception v4

    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    const-string v4, "statsdk"

    const-string v5, "old version data, No duration Tag"

    invoke-static {v4, v5}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_78

    :catch_107
    move-exception v2

    :try_start_108
    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_aa

    const-string v2, "statsdk"

    const-string v3, "event put s fail"

    invoke-static {v2, v3}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    :catchall_116
    move-exception v2

    monitor-exit v10
    :try_end_118
    .catchall {:try_start_108 .. :try_end_118} :catchall_116

    throw v2

    :catch_119
    move-exception v16

    :try_start_11a
    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_de

    const-string v16, "statsdk"

    const-string v17, "old version data, No duration Tag"

    invoke-static/range {v16 .. v17}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_127
    .catch Lorg/json/JSONException; {:try_start_11a .. :try_end_127} :catch_128
    .catchall {:try_start_11a .. :try_end_127} :catchall_116

    goto :goto_de

    :catch_128
    move-exception v2

    move-object/from16 v18, v2

    move v2, v3

    move-object/from16 v3, v18

    :goto_12e
    :try_start_12e
    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e5

    const-string v11, "statsdk"

    invoke-static {v11, v3}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_139
    .catchall {:try_start_12e .. :try_end_139} :catchall_116

    goto :goto_e5

    :cond_13a
    :try_start_13a
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    const-string v2, "c"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v12, "c"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v2

    const-string v2, "s"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_165

    const-string v13, ""

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_167

    :cond_165
    const-string v2, "0|"

    :cond_167
    const-string v13, "t"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v13, "t"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    sub-long v14, v14, v16

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "|"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_18d
    .catch Lorg/json/JSONException; {:try_start_13a .. :try_end_18d} :catch_128
    .catchall {:try_start_13a .. :try_end_18d} :catchall_116

    move-result-object v2

    :try_start_18e
    const-string v3, "c"

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "c"

    invoke-virtual {v11, v3, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "s"

    invoke-virtual {v11, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19d
    .catch Lorg/json/JSONException; {:try_start_18e .. :try_end_19d} :catch_210
    .catchall {:try_start_18e .. :try_end_19d} :catchall_116

    :goto_19d
    if-ge v4, v5, :cond_1a5

    :try_start_19f
    monitor-exit v10
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_116

    goto/16 :goto_49

    :cond_1a2
    move v2, v3

    goto/16 :goto_e5

    :cond_1a5
    :try_start_1a5
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1b6
    .catch Lorg/json/JSONException; {:try_start_1a5 .. :try_end_1b6} :catch_1b9
    .catchall {:try_start_1a5 .. :try_end_1b6} :catchall_116

    :cond_1b6
    :goto_1b6
    :try_start_1b6
    monitor-exit v10

    goto/16 :goto_49

    :catch_1b9
    move-exception v2

    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b6

    const-string v3, "statsdk"

    invoke-static {v3, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c5
    .catchall {:try_start_1b6 .. :try_end_1c5} :catchall_116

    goto :goto_1b6

    :cond_1c6
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v3, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    monitor-enter v3

    :try_start_1d3
    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_1e2
    .catchall {:try_start_1d3 .. :try_end_1e2} :catchall_200

    move-result v4

    :try_start_1e3
    const-string v2, "s"

    const-string v5, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v2, v2, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1fd
    .catch Lorg/json/JSONException; {:try_start_1e3 .. :try_end_1fd} :catch_203
    .catchall {:try_start_1e3 .. :try_end_1fd} :catchall_200

    :cond_1fd
    :goto_1fd
    :try_start_1fd
    monitor-exit v3

    goto/16 :goto_49

    :catchall_200
    move-exception v2

    monitor-exit v3
    :try_end_202
    .catchall {:try_start_1fd .. :try_end_202} :catchall_200

    throw v2

    :catch_203
    move-exception v2

    :try_start_204
    invoke-static/range {p3 .. p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1fd

    const-string v4, "statsdk"

    invoke-static {v4, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20f
    .catchall {:try_start_204 .. :try_end_20f} :catchall_200

    goto :goto_1fd

    :catch_210
    move-exception v2

    move-object v3, v2

    move v2, v4

    goto/16 :goto_12e

    :cond_215
    move v4, v3

    goto :goto_19d
.end method

.method public putException(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/16 v2, 0x1400

    const/4 v5, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_8
    const-string v0, "t"

    invoke-virtual {v1, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "y"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v2, :cond_4f

    const/16 v0, 0x1400

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x1400

    const/4 v4, 0x0

    invoke-virtual {p3, v2, v3, v0, v4}, Ljava/lang/String;->getBytes(II[BI)V

    array-length v2, v0

    invoke-static {p5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;)I

    :cond_41
    const-string v2, "c"

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_4b} :catch_55

    :cond_4b
    :goto_4b
    invoke-virtual {p0, v1, v5, p5}, Lcom/baidu/mtjstatsdk/DataCore;->putException(Lorg/json/JSONObject;ZLjava/lang/String;)V

    return-void

    :cond_4f
    :try_start_4f
    const-string v0, "c"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_4f .. :try_end_54} :catch_55

    goto :goto_4b

    :catch_55
    move-exception v0

    invoke-static {p5}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b
.end method

.method public putException(Lorg/json/JSONObject;ZLjava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_48

    if-nez p2, :cond_48

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "putException:addSize is:"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a([Ljava/lang/Object;)I

    :cond_2a
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    add-int/2addr v0, v1

    const v1, 0x32000

    if-le v0, v1, :cond_48

    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "statsdk"

    const-string v1, "putException: size is full!"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_47
    return-void

    :cond_48
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v1, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    monitor-enter v1

    :try_start_53
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_70

    move-result v2

    :try_start_61
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_6e} :catch_73
    .catchall {:try_start_61 .. :try_end_6e} :catchall_70

    :cond_6e
    :goto_6e
    :try_start_6e
    monitor-exit v1

    goto :goto_47

    :catchall_70
    move-exception v0

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_70

    throw v0

    :catch_73
    move-exception v0

    :try_start_74
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_70

    goto :goto_6e
.end method

.method public putExceptionToCache(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->loadExceptionTurn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->e:Z

    const-string v0, "statsdk"

    const-string v1, "putExceptionToCache in"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->e:Z

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->c:Lcom/baidu/mtjstatsdk/GameExceptionListener;

    if-eqz v0, :cond_72

    const-string v0, "statsdk"

    const-string v1, "putExceptionToCache in in"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->c:Lcom/baidu/mtjstatsdk/GameExceptionListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/mtjstatsdk/GameExceptionListener;->exceptonAnalysis(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const-string v0, "statsdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putExceptionToCache in inexceptArray="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_72

    const/4 v0, 0x0

    move v7, v0

    :goto_42
    :try_start_42
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_72

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "c"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "y"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/baidu/mtjstatsdk/DataCore;->putException(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_68} :catch_6c

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_42

    :catch_6c
    move-exception v0

    const-string v1, "statsdk"

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_72
    return-void
.end method

.method public putSession(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "{}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lcom/baidu/mtjstatsdk/DataCore;->putSession(Lorg/json/JSONObject;ZLjava/lang/String;)V

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load last session:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_38} :catch_39

    goto :goto_10

    :catch_39
    move-exception v0

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "statsdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putSession()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method public putSession(Lorg/json/JSONObject;ZLjava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_48

    if-nez p2, :cond_48

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "statsdk"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "putSession:addSize is:"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->a([Ljava/lang/Object;)I

    :cond_2a
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->a:I

    add-int/2addr v0, v1

    const v1, 0x32000

    if-le v0, v1, :cond_48

    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "statsdk"

    const-string v1, "putSession: size is full!"

    invoke-static {v0, v1}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_47
    return-void

    :cond_48
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v1, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    monitor-enter v1

    :try_start_53
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_70

    move-result v2

    :try_start_61
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_6e} :catch_73
    .catchall {:try_start_61 .. :try_end_6e} :catchall_70

    :cond_6e
    :goto_6e
    :try_start_6e
    monitor-exit v1

    goto :goto_47

    :catchall_70
    move-exception v0

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_70

    throw v0

    :catch_73
    move-exception v0

    :try_start_74
    invoke-static {p3}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_70

    goto :goto_6e
.end method

.method public declared-synchronized sendLogData(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 15

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v3, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "statsdk"

    const-string v4, "sendLogData() begin."

    invoke-static {v0, v4}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "statsdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendLogData appkey= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "statsdk"

    const-string v4, "start installHeader begin."

    invoke-static {v0, v4}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, p1, v0, p2}, Lcom/baidu/mtjstatsdk/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "statsdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAppKey appkey= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    if-eqz v3, :cond_a5

    invoke-virtual {v3}, Lcom/baidu/mtjstatsdk/HeadObject;->getAppKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_78

    const-string v0, ""

    invoke-virtual {v3}, Lcom/baidu/mtjstatsdk/HeadObject;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    :cond_78
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, p1, v0, p2}, Lcom/baidu/mtjstatsdk/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/baidu/mtjstatsdk/HeadObject;->getAppKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    const-string v0, ""

    invoke-virtual {v3}, Lcom/baidu/mtjstatsdk/HeadObject;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a5

    :cond_97
    const-string v0, "APP Key\u4e22\u5931||can\'t find app key."

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c(Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_3 .. :try_end_a2} :catchall_31c

    :cond_a2
    move v0, v1

    :goto_a3
    monitor-exit p0

    return v0

    :cond_a5
    :try_start_a5
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iput-object v3, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d1

    const-string v0, "statsdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end setAppKey appkey= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/baidu/mtjstatsdk/HeadObject;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    if-nez v0, :cond_e7

    const-string v0, "Log"

    const-string v3, ""

    invoke-static {v0, v3}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e7
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v5, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->b:Lorg/json/JSONObject;

    monitor-enter v5
    :try_end_f2
    .catchall {:try_start_a5 .. :try_end_f2} :catchall_31c

    :try_start_f2
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->b:Lorg/json/JSONObject;

    const-string v3, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v3, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->b:Lorg/json/JSONObject;

    const-string v6, "ss"

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/m;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->getSessionStartTime()J

    move-result-wide v8

    invoke-virtual {v3, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "he"

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->b:Lorg/json/JSONObject;

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_135
    .catch Lorg/json/JSONException; {:try_start_f2 .. :try_end_135} :catch_279
    .catchall {:try_start_f2 .. :try_end_135} :catchall_319

    :try_start_135
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v6, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    monitor-enter v6
    :try_end_140
    .catchall {:try_start_135 .. :try_end_140} :catchall_319

    :try_start_140
    const-string v3, "pr"

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14f
    .catch Lorg/json/JSONException; {:try_start_140 .. :try_end_14f} :catch_289
    .catchall {:try_start_140 .. :try_end_14f} :catchall_316

    :try_start_14f
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v7, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    monitor-enter v7
    :try_end_15a
    .catchall {:try_start_14f .. :try_end_15a} :catchall_316

    :try_start_15a
    const-string v3, "ev"

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_169
    .catch Lorg/json/JSONException; {:try_start_15a .. :try_end_169} :catch_29e
    .catchall {:try_start_15a .. :try_end_169} :catchall_313

    :try_start_169
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v8, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->e:Lorg/json/JSONArray;

    monitor-enter v8
    :try_end_174
    .catchall {:try_start_169 .. :try_end_174} :catchall_313

    :try_start_174
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v9, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    monitor-enter v9
    :try_end_17f
    .catchall {:try_start_174 .. :try_end_17f} :catchall_310

    :try_start_17f
    const-string v3, "ex"

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_18e
    .catch Lorg/json/JSONException; {:try_start_17f .. :try_end_18e} :catch_2b0
    .catchall {:try_start_17f .. :try_end_18e} :catchall_30d

    :try_start_18e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/baidu/mtjstatsdk/DataCore;->b:Lcom/baidu/mtjstatsdk/GameCacheLoadListener;

    if-eqz v3, :cond_31f

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->b:Lcom/baidu/mtjstatsdk/GameCacheLoadListener;

    invoke-interface {v0, p2}, Lcom/baidu/mtjstatsdk/GameCacheLoadListener;->getBDGameAccountHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    move-object v3, v0

    :goto_19e
    monitor-enter v3
    :try_end_19f
    .catchall {:try_start_18e .. :try_end_19f} :catchall_30d

    :try_start_19f
    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->b:Lcom/baidu/mtjstatsdk/GameCacheLoadListener;

    if-eqz v0, :cond_1b2

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->b:Lcom/baidu/mtjstatsdk/GameCacheLoadListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/mtjstatsdk/GameCacheLoadListener;->getCacheLog(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_2c4

    const-string v0, "gm"

    const-string v10, ""

    invoke-virtual {v4, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b2
    .catch Lorg/json/JSONException; {:try_start_19f .. :try_end_1b2} :catch_2cb
    .catchall {:try_start_19f .. :try_end_1b2} :catchall_30a

    :cond_1b2
    :goto_1b2
    :try_start_1b2
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1b5
    .catchall {:try_start_1b2 .. :try_end_1b5} :catchall_30a

    move-result-object v0

    :try_start_1b6
    const-string v4, "http://hmma.baidu.com/app.gif"

    const v10, 0xc350

    const v11, 0xc350

    invoke-static {p1, v4, v0, v10, v11}, Lcom/baidu/mtjstatsdk/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1df

    const-string v4, "statsdk"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendLogData() send_sucess.data="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1df} :catch_2e0
    .catchall {:try_start_1b6 .. :try_end_1df} :catchall_30a

    :cond_1df
    move v1, v2

    :cond_1e0
    :goto_1e0
    :try_start_1e0
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_207

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "statsdk"

    aput-object v4, v0, v2

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "send log data over. result="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->b([Ljava/lang/Object;)I

    :cond_207
    if-eqz v1, :cond_263

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/baidu/mtjstatsdk/DataCore;->a(ZLjava/lang/String;)V

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->f:Lorg/json/JSONArray;

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->d:Lorg/json/JSONArray;

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->c:Lorg/json/JSONArray;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mtjstatsdk/DataCore;->flush(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/baidu/mtjstatsdk/m;->a(Ljava/lang/String;)Lcom/baidu/mtjstatsdk/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/m;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;

    invoke-virtual {v0}, Lcom/baidu/mtjstatsdk/SessionAnalysisObject;->setSessionCounted()V

    invoke-static {}, Lcom/baidu/mtjstatsdk/i;->a()Lcom/baidu/mtjstatsdk/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/i;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->b:Lcom/baidu/mtjstatsdk/GameCacheLoadListener;

    if-eqz v0, :cond_263

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->b:Lcom/baidu/mtjstatsdk/GameCacheLoadListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/mtjstatsdk/GameCacheLoadListener;->clearDataCoreHashWithAPPKey(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mtjstatsdk/DataCore;->b:Lcom/baidu/mtjstatsdk/GameCacheLoadListener;

    invoke-interface {v0, p1, p2}, Lcom/baidu/mtjstatsdk/GameCacheLoadListener;->writeLogToFile(Landroid/content/Context;Ljava/lang/String;)V

    :cond_263
    monitor-exit v3
    :try_end_264
    .catchall {:try_start_1e0 .. :try_end_264} :catchall_30a

    :try_start_264
    monitor-exit v9
    :try_end_265
    .catchall {:try_start_264 .. :try_end_265} :catchall_30d

    :try_start_265
    monitor-exit v8
    :try_end_266
    .catchall {:try_start_265 .. :try_end_266} :catchall_310

    :try_start_266
    monitor-exit v7
    :try_end_267
    .catchall {:try_start_266 .. :try_end_267} :catchall_313

    :try_start_267
    monitor-exit v6
    :try_end_268
    .catchall {:try_start_267 .. :try_end_268} :catchall_316

    :try_start_268
    monitor-exit v5
    :try_end_269
    .catchall {:try_start_268 .. :try_end_269} :catchall_319

    :try_start_269
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_276

    const-string v0, "statsdk"

    const-string v2, "sendLogData() end."

    invoke-static {v0, v2}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_276
    .catchall {:try_start_269 .. :try_end_276} :catchall_31c

    :cond_276
    move v0, v1

    goto/16 :goto_a3

    :catch_279
    move-exception v0

    :try_start_27a
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_285

    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_285
    monitor-exit v5
    :try_end_286
    .catchall {:try_start_27a .. :try_end_286} :catchall_319

    move v0, v1

    goto/16 :goto_a3

    :catch_289
    move-exception v0

    :try_start_28a
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_299

    const-string v2, "statsdk"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_299
    monitor-exit v6
    :try_end_29a
    .catchall {:try_start_28a .. :try_end_29a} :catchall_316

    :try_start_29a
    monitor-exit v5
    :try_end_29b
    .catchall {:try_start_29a .. :try_end_29b} :catchall_319

    move v0, v1

    goto/16 :goto_a3

    :catch_29e
    move-exception v0

    :try_start_29f
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2aa

    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2aa
    monitor-exit v7
    :try_end_2ab
    .catchall {:try_start_29f .. :try_end_2ab} :catchall_313

    :try_start_2ab
    monitor-exit v6
    :try_end_2ac
    .catchall {:try_start_2ab .. :try_end_2ac} :catchall_316

    :try_start_2ac
    monitor-exit v5
    :try_end_2ad
    .catchall {:try_start_2ac .. :try_end_2ad} :catchall_319

    move v0, v1

    goto/16 :goto_a3

    :catch_2b0
    move-exception v0

    :try_start_2b1
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2bc

    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2bc
    monitor-exit v9
    :try_end_2bd
    .catchall {:try_start_2b1 .. :try_end_2bd} :catchall_30d

    :try_start_2bd
    monitor-exit v8
    :try_end_2be
    .catchall {:try_start_2bd .. :try_end_2be} :catchall_310

    :try_start_2be
    monitor-exit v7
    :try_end_2bf
    .catchall {:try_start_2be .. :try_end_2bf} :catchall_313

    :try_start_2bf
    monitor-exit v6
    :try_end_2c0
    .catchall {:try_start_2bf .. :try_end_2c0} :catchall_316

    :try_start_2c0
    monitor-exit v5
    :try_end_2c1
    .catchall {:try_start_2c0 .. :try_end_2c1} :catchall_319

    move v0, v1

    goto/16 :goto_a3

    :cond_2c4
    :try_start_2c4
    const-string v10, "gm"

    invoke-virtual {v4, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c9
    .catch Lorg/json/JSONException; {:try_start_2c4 .. :try_end_2c9} :catch_2cb
    .catchall {:try_start_2c4 .. :try_end_2c9} :catchall_30a

    goto/16 :goto_1b2

    :catch_2cb
    move-exception v0

    :try_start_2cc
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d7

    const-string v2, "statsdk"

    invoke-static {v2, v0}, Lcom/baidu/mtjstatsdk/b/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d7
    monitor-exit v3
    :try_end_2d8
    .catchall {:try_start_2cc .. :try_end_2d8} :catchall_30a

    :try_start_2d8
    monitor-exit v9
    :try_end_2d9
    .catchall {:try_start_2d8 .. :try_end_2d9} :catchall_30d

    :try_start_2d9
    monitor-exit v8
    :try_end_2da
    .catchall {:try_start_2d9 .. :try_end_2da} :catchall_310

    :try_start_2da
    monitor-exit v7
    :try_end_2db
    .catchall {:try_start_2da .. :try_end_2db} :catchall_313

    :try_start_2db
    monitor-exit v6
    :try_end_2dc
    .catchall {:try_start_2db .. :try_end_2dc} :catchall_316

    :try_start_2dc
    monitor-exit v5
    :try_end_2dd
    .catchall {:try_start_2dc .. :try_end_2dd} :catchall_319

    move v0, v1

    goto/16 :goto_a3

    :catch_2e0
    move-exception v0

    :try_start_2e1
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v10, "statsdk"

    aput-object v10, v2, v4

    const/4 v4, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "httpPost:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcom/baidu/mtjstatsdk/b/f;->b([Ljava/lang/Object;)I

    goto/16 :goto_1e0

    :catchall_30a
    move-exception v0

    monitor-exit v3
    :try_end_30c
    .catchall {:try_start_2e1 .. :try_end_30c} :catchall_30a

    :try_start_30c
    throw v0

    :catchall_30d
    move-exception v0

    monitor-exit v9
    :try_end_30f
    .catchall {:try_start_30c .. :try_end_30f} :catchall_30d

    :try_start_30f
    throw v0

    :catchall_310
    move-exception v0

    monitor-exit v8
    :try_end_312
    .catchall {:try_start_30f .. :try_end_312} :catchall_310

    :try_start_312
    throw v0

    :catchall_313
    move-exception v0

    monitor-exit v7
    :try_end_315
    .catchall {:try_start_312 .. :try_end_315} :catchall_313

    :try_start_315
    throw v0

    :catchall_316
    move-exception v0

    monitor-exit v6
    :try_end_318
    .catchall {:try_start_315 .. :try_end_318} :catchall_316

    :try_start_318
    throw v0

    :catchall_319
    move-exception v0

    monitor-exit v5
    :try_end_31b
    .catchall {:try_start_318 .. :try_end_31b} :catchall_319

    :try_start_31b
    throw v0
    :try_end_31c
    .catchall {:try_start_31b .. :try_end_31c} :catchall_31c

    :catchall_31c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_31f
    move-object v3, v0

    goto/16 :goto_19e
.end method

.method public setAppChannel(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_c

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_c
    invoke-static {p4}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "statsdk"

    aput-object v1, v0, v2

    const-string v1, "\u8bbe\u7f6e\u7684\u6e20\u9053\u4e0d\u80fd\u4e3a\u7a7a\u6216\u8005\u4e3anull || The channel that you have been set is null or empty, please check it."

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_20
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0, p2}, Lcom/baidu/mtjstatsdk/HeadObject;->setAppChannel(Ljava/lang/String;)V

    if-eqz p3, :cond_40

    if-eqz p2, :cond_40

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4, v3}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setAppChannelWithPreferenceAndAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_40
    if-nez p3, :cond_4b

    invoke-static {}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->getInstance()Lcom/baidu/mtjstatsdk/BasicStoreTools;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1, p4, v2}, Lcom/baidu/mtjstatsdk/BasicStoreTools;->setAppChannelWithPreferenceAndAppKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4b
    return-void
.end method

.method public setAppChannel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_a
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8bbe\u7f6e\u7684\u6e20\u9053\u4e0d\u80fd\u4e3a\u7a7a\u6216\u8005\u4e3anull || The channel that you have been set is null or empty, please check it."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_1a
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/HeadObject;->setAppChannel(Ljava/lang/String;)V

    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_a
    invoke-static {p2}, Lcom/baidu/mtjstatsdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "statsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8bbe\u7f6e\u7684\u6e20\u9053\u4e0d\u80fd\u4e3a\u7a7a\u6216\u8005\u4e3anull || The channel that you have been set is null or empty, please check it."

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mtjstatsdk/b/f;->c([Ljava/lang/Object;)I

    :cond_20
    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    iget-object v0, v0, Lcom/baidu/mtjstatsdk/DataCoreObject;->h:Lcom/baidu/mtjstatsdk/HeadObject;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/HeadObject;->setAppVersionName(Ljava/lang/String;)V

    return-void
.end method

.method public setCacheLogWithCoreDataLock(Lcom/baidu/mtjstatsdk/GameCacheLoadListener;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/DataCore;->b:Lcom/baidu/mtjstatsdk/GameCacheLoadListener;

    return-void
.end method

.method public setGameExceptionOperation(Lcom/baidu/mtjstatsdk/GameExceptionListener;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mtjstatsdk/DataCore;->c:Lcom/baidu/mtjstatsdk/GameExceptionListener;

    return-void
.end method

.method public setLogSenderDelayed(ILjava/lang/String;)V
    .registers 4

    if-ltz p1, :cond_11

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_11

    sget-object v0, Lcom/baidu/mtjstatsdk/DataCore;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mtjstatsdk/DataCoreObject;

    invoke-virtual {v0, p1}, Lcom/baidu/mtjstatsdk/DataCoreObject;->a(I)V

    :cond_11
    return-void
.end method
