.class public Lcom/baidu/bdgame/sdk/obf/ar;
.super Lcom/baidu/bdgame/sdk/obf/kc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kc",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ao;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:S = 0x12s


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ar;
    .registers 5

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ar;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 34
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ar;->b(I)V

    .line 35
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ar;->a(S)V

    .line 36
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/ar;->b:Ljava/lang/String;

    .line 37
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 74
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    .line 76
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
    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 44
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ar;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    return-object v0
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ao;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kc;->b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z

    .line 55
    if-nez p2, :cond_23

    .line 56
    const-string v0, "SecurityInfo"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 58
    const-string v1, "ok"

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 60
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ao;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/ao;-><init>()V

    .line 61
    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ao;->a(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ao;->a(I)V

    .line 63
    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    .line 68
    :cond_23
    const/4 v0, 0x1

    return v0
.end method
