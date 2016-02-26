.class Lcom/baidu/bdgame/sdk/obf/jt;
.super Lcom/baidu/bdgame/sdk/obf/hz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/jt$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "bdp_error"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/hz;-><init>()V

    .line 24
    return-void
.end method

.method private static a(Lorg/json/JSONObject;I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 27
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 32
    :goto_e
    return-object v0

    :cond_f
    const-string v0, "Default"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method static synthetic a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 3

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/jt;->b(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/content/Context;I)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/jt;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1a

    .line 74
    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/jt;->a(Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 76
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static declared-synchronized b(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 144
    const-class v1, Lcom/baidu/bdgame/sdk/obf/jt;

    monitor-enter v1

    :try_start_3
    const-string v0, "bdp_error"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jt;->c(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 4

    .prologue
    .line 140
    const-class v1, Lcom/baidu/bdgame/sdk/obf/jt;

    monitor-enter v1

    :try_start_3
    const-string v0, "bdp_error"

    invoke-static {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/jt;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Landroid/content/Context;I)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/jt;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1a

    .line 85
    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/jt;->a(Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 87
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static c(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 148
    const-string v0, "bdp_error"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/jt;->a(Landroid/content/Context;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 36
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/lg;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result v0

    .line 42
    :goto_8
    return v0

    .line 39
    :catch_9
    move-exception v0

    .line 42
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/content/Context;I)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/jt;->b(Landroid/content/Context;I)Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_7

    .line 68
    :cond_6
    :goto_6
    return-object v0

    .line 62
    :cond_7
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/jt;->c(Landroid/content/Context;I)Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v0

    .line 63
    if-nez v0, :cond_6

    .line 67
    const-string v0, "bdp_request_net_error"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 47
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/lg;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 95
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jt$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jt$a;-><init>(Lcom/baidu/bdgame/sdk/obf/jt;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jt;->a(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method
