.class public Lcom/tencent/mid/util/e;
.super Ljava/lang/Object;


# static fields
.field static a:Lcom/tencent/mid/util/g;

.field private static d:Lorg/json/JSONObject;


# instance fields
.field b:Ljava/lang/Integer;

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mid/util/e;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mid/util/e;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/tencent/mid/util/e;->c:Ljava/lang/String;

    :try_start_8
    invoke-static {p1}, Lcom/tencent/mid/util/e;->a(Landroid/content/Context;)Lcom/tencent/mid/util/g;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mid/util/i;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/e;->b:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/tencent/mid/util/i;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mid/util/e;->c:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->logWarn(Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/mid/util/g;
    .registers 5

    const-class v1, Lcom/tencent/mid/util/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/tencent/mid/util/e;->a:Lcom/tencent/mid/util/g;

    if-nez v0, :cond_13

    new-instance v0, Lcom/tencent/mid/util/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/tencent/mid/util/g;-><init>(Landroid/content/Context;Lcom/tencent/mid/util/f;)V

    sput-object v0, Lcom/tencent/mid/util/e;->a:Lcom/tencent/mid/util/g;

    :cond_13
    sget-object v0, Lcom/tencent/mid/util/e;->a:Lcom/tencent/mid/util/g;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    sget-object v1, Lcom/tencent/mid/util/e;->a:Lcom/tencent/mid/util/g;

    if-eqz v1, :cond_e

    sget-object v1, Lcom/tencent/mid/util/e;->a:Lcom/tencent/mid/util/g;

    invoke-virtual {v1, v0}, Lcom/tencent/mid/util/g;->a(Lorg/json/JSONObject;)V

    :cond_e
    const-string v1, "cn"

    iget-object v2, p0, Lcom/tencent/mid/util/e;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mid/util/Util;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mid/util/e;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    const-string v1, "tn"

    iget-object v2, p0, Lcom/tencent/mid/util/e;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_20
    const-string v1, "ev"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/tencent/mid/util/e;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_38

    sget-object v0, Lcom/tencent/mid/util/e;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_38

    const-string v0, "eva"

    sget-object v1, Lcom/tencent/mid/util/e;->d:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_38} :catch_39

    :cond_38
    :goto_38
    return-void

    :catch_39
    move-exception v0

    invoke-static {v0}, Lcom/tencent/mid/util/Util;->logWarn(Ljava/lang/Throwable;)V

    goto :goto_38
.end method
