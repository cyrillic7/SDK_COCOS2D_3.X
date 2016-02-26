.class public Lcom/baidu/bdgame/sdk/obf/gq;
.super Lcom/baidu/bdgame/sdk/obf/kc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kc",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/gq;
    .registers 5

    .prologue
    .line 34
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gq;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/gq;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 35
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gq;->b(I)V

    .line 36
    const/16 v1, 0x177

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gq;->a(S)V

    .line 37
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/gq;->a:Ljava/lang/String;

    .line 38
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 66
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    .line 68
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/gq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    return-object v0
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 46
    if-eqz p2, :cond_4

    .line 52
    :goto_3
    return v0

    .line 50
    :cond_4
    iput-object p4, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    goto :goto_3
.end method
