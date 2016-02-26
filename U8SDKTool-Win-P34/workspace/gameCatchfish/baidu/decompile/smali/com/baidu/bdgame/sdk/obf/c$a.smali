.class Lcom/baidu/bdgame/sdk/obf/c$a;
.super Lcom/duoku/platform/IDKSDKCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/baidu/gamesdk/BDGameSDKSetting;

.field private b:Lcom/baidu/gamesdk/IResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/baidu/gamesdk/BDGameSDKSetting;Lcom/baidu/gamesdk/IResponse;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/BDGameSDKSetting;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/duoku/platform/IDKSDKCallBack;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/c$a;->a:Lcom/baidu/gamesdk/BDGameSDKSetting;

    .line 77
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/c$a;->b:Lcom/baidu/gamesdk/IResponse;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$a;->c:Landroid/content/Context;

    .line 79
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/gamesdk/BDGameSDKSetting;Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/c$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/BDGameSDKSetting;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/c$a;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/c$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/c$a;-><init>(Landroid/content/Context;Lcom/baidu/gamesdk/BDGameSDKSetting;Lcom/baidu/gamesdk/IResponse;)V

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    .line 83
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e;->d()V

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$a;->b:Lcom/baidu/gamesdk/IResponse;

    if-eqz v0, :cond_1a

    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$a;->b:Lcom/baidu/gamesdk/IResponse;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/c$a;->c:Landroid/content/Context;

    const-string v3, "bd_game_init_success"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    .line 87
    :cond_1a
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$a;->b:Lcom/baidu/gamesdk/IResponse;

    if-eqz v0, :cond_14

    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$a;->b:Lcom/baidu/gamesdk/IResponse;

    const/16 v1, -0xa

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/c$a;->c:Landroid/content/Context;

    const-string v3, "bd_game_init_fail"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/gamesdk/IResponse;->onResponse(ILjava/lang/String;Ljava/lang/Object;)V

    .line 93
    :cond_14
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/c$a;->a:Lcom/baidu/gamesdk/BDGameSDKSetting;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;Lcom/baidu/gamesdk/BDGameSDKSetting;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 101
    .line 104
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    const-string v1, "init_state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_12

    move-result v0

    .line 111
    packed-switch v0, :pswitch_data_1e

    .line 122
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/c$a;->b()V

    .line 125
    :goto_11
    return-void

    .line 106
    :catch_12
    move-exception v0

    .line 107
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/c$a;->b()V

    goto :goto_11

    .line 114
    :pswitch_17
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/c$a;->c()V

    .line 115
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/c$a;->a()V

    goto :goto_11

    .line 111
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_17
    .end packed-switch
.end method
