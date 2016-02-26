.class public Lcom/baidu/bdgame/sdk/obf/an;
.super Lcom/baidu/bdgame/sdk/obf/y;
.source "SourceFile"


# static fields
.field private static final a:S = 0x1fs


# instance fields
.field private b:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 4

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/y;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/an;
    .registers 5

    .prologue
    .line 32
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/an;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/an;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 33
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/an;->b(I)V

    .line 34
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/an;->a(S)V

    .line 35
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/an;->b:Lorg/json/JSONObject;

    .line 36
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ai;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/ai;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/y;->a(Lcom/baidu/bdgame/sdk/obf/ai;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ka;

    .line 48
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    const-string v1, "AccountID"

    invoke-static {p2, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 52
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 53
    const-string v1, "AccountID"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/an;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    .line 78
    :goto_29
    return-object v0

    .line 57
    :cond_2a
    const-string v2, "AutoLoginSign"

    invoke-static {p2, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 59
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 60
    const-string v1, "AutoLoginSign"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/an;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    goto :goto_29

    .line 64
    :cond_45
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/s;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/s;-><init>()V

    .line 65
    invoke-virtual {v3, v4}, Lcom/baidu/bdgame/sdk/obf/s;->a(I)V

    .line 66
    invoke-virtual {v3, v1}, Lcom/baidu/bdgame/sdk/obf/s;->a(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/s;->b(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v3}, Lcom/baidu/bdgame/sdk/obf/ai;->a(Lcom/baidu/bdgame/sdk/obf/s;)V

    goto :goto_29
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/an;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public bridge synthetic a(Z)V
    .registers 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/y;->a(Z)V

    return-void
.end method
