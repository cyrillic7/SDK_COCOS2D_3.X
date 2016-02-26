.class public Lcom/baidu/bdgame/sdk/obf/ae;
.super Lcom/baidu/bdgame/sdk/obf/kc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kc",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/at;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:S = 0x7s


# instance fields
.field private b:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 30
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ae;
    .registers 6

    .prologue
    .line 33
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ae;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ae;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 34
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ae;->b(I)V

    .line 35
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ae;->a(S)V

    .line 36
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/ae;->b:Ljava/lang/String;

    .line 37
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/ae;->g:Ljava/lang/String;

    .line 38
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 93
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    .line 95
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
    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    const-string v1, "ThirdPlatformType"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ae;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ae;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 47
    const-string v1, "OAuthVersion"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ae;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :goto_1b
    return-object v0

    .line 49
    :cond_1c
    const-string v1, "OAuthVersion"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1b
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/at;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kc;->b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z

    .line 63
    if-nez p2, :cond_46

    .line 64
    const-string v1, "LoginUrl"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 66
    const-string v1, "LoginUrl"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/ae;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 87
    :goto_1a
    return v0

    .line 70
    :cond_1b
    const-string v2, "CallbackUrl"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 72
    const-string v1, "CallbackUrl"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/ae;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    goto :goto_1a

    .line 76
    :cond_30
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/at;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/at;-><init>()V

    .line 77
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ae;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/baidu/bdgame/sdk/obf/at;->a(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/at;->c(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/at;->b(Ljava/lang/String;)V

    .line 81
    const-string v1, "ok"

    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 82
    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    .line 87
    :cond_46
    const/4 v0, 0x1

    goto :goto_1a
.end method
