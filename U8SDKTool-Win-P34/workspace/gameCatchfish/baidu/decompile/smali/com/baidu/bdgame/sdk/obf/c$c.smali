.class Lcom/baidu/bdgame/sdk/obf/c$c;
.super Lcom/duoku/platform/IDKSDKCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

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


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/duoku/platform/IDKSDKCallBack;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/c$c;->a:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/c$c;->b:Lcom/baidu/gamesdk/IResponse;

    .line 144
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/c$c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)Lcom/baidu/bdgame/sdk/obf/c$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/baidu/bdgame/sdk/obf/c$c;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/c$c;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/c$c;-><init>(Landroid/content/Context;Lcom/baidu/gamesdk/IResponse;)V

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/c$c;)Lcom/baidu/gamesdk/IResponse;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$c;->b:Lcom/baidu/gamesdk/IResponse;

    return-object v0
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 152
    .line 154
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v1, "state_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_18

    move-result v0

    .line 162
    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_1d

    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$c;->a:Landroid/content/Context;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/c$c;->b:Lcom/baidu/gamesdk/IResponse;

    invoke-static {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;ILcom/baidu/gamesdk/IResponse;)V

    .line 174
    :cond_17
    :goto_17
    return-void

    .line 156
    :catch_18
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    .line 164
    :cond_1d
    const/16 v1, 0x7d6

    if-ne v0, v1, :cond_17

    .line 166
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/c$c;->a:Landroid/content/Context;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/c$c$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/c$c$1;-><init>(Lcom/baidu/bdgame/sdk/obf/c$c;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/a;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_17
.end method
