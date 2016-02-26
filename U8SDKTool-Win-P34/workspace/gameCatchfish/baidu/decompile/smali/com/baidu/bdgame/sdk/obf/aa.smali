.class public Lcom/baidu/bdgame/sdk/obf/aa;
.super Lcom/baidu/bdgame/sdk/obf/y;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/baidu/bdgame/sdk/obf/s;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 31
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/y;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/aa;
    .registers 7

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/aa;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/aa;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/aa;->a(S)V

    .line 37
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/aa;->b(I)V

    .line 39
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/aa;->a:Ljava/lang/String;

    .line 40
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/aa;->b:Ljava/lang/String;

    .line 41
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/aa;->g:Ljava/lang/String;

    .line 42
    iput-object p4, v0, Lcom/baidu/bdgame/sdk/obf/aa;->h:Ljava/lang/String;

    .line 44
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/aa;
    .registers 7

    .prologue
    .line 48
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/aa;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/aa;-><init>(Landroid/content/Context;)V

    .line 49
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/aa;->a(S)V

    .line 50
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/aa;->b(I)V

    .line 52
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/aa;->a:Ljava/lang/String;

    .line 53
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/aa;->b:Ljava/lang/String;

    .line 54
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/aa;->g:Ljava/lang/String;

    .line 55
    iput-object p4, v0, Lcom/baidu/bdgame/sdk/obf/aa;->h:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/as;->a()Lcom/baidu/bdgame/sdk/obf/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v1

    .line 60
    if-eqz v1, :cond_26

    .line 61
    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/aa;->i:Lcom/baidu/bdgame/sdk/obf/s;

    .line 63
    :cond_26
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ai;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 7
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
    const/4 v3, 0x0

    .line 69
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/y;->a(Lcom/baidu/bdgame/sdk/obf/ai;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ka;

    .line 70
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ka;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ka;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    const-string v1, "AccountID"

    invoke-static {p2, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 73
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 74
    const-string v1, "AccountID"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/aa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    .line 94
    :goto_29
    return-object v0

    .line 78
    :cond_2a
    const-string v2, "AutoLoginSign"

    invoke-static {p2, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 80
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 81
    const-string v1, "AutoLoginSign"

    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/aa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    goto :goto_29

    .line 85
    :cond_45
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/s;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/s;-><init>()V

    .line 86
    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/s;->a(I)V

    .line 87
    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/s;->a(Ljava/lang/String;)V

    .line 89
    const-string v1, ""

    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/s;->b(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/aa;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/baidu/bdgame/sdk/obf/ai;->h(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, v2}, Lcom/baidu/bdgame/sdk/obf/ai;->a(Lcom/baidu/bdgame/sdk/obf/s;)V

    goto :goto_29
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 132
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/aa;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v1, "BindUserName"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v1, "BindCode"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/aa;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v1, "PassWord"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/aa;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    invoke-super/range {p0 .. p5}, Lcom/baidu/bdgame/sdk/obf/y;->a(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/aa;->i:Lcom/baidu/bdgame/sdk/obf/s;

    if-eqz v0, :cond_4c

    .line 105
    check-cast p4, Lcom/baidu/bdgame/sdk/obf/ai;

    .line 107
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ag;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ag;-><init>()V

    .line 108
    invoke-virtual {p4}, Lcom/baidu/bdgame/sdk/obf/ai;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p4}, Lcom/baidu/bdgame/sdk/obf/ai;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->b(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p4}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a(I)V

    .line 114
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ah;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/ah;-><init>()V

    .line 115
    const-string v2, "AlertMessageTitle"

    invoke-static {p5, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ah;->a(Ljava/lang/String;)V

    .line 116
    const-string v2, "AlertMessageBody"

    invoke-static {p5, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ah;->b(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ag;->a(Lcom/baidu/bdgame/sdk/obf/ah;)V

    .line 120
    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    .line 123
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/aa;->e()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/aa;->i:Lcom/baidu/bdgame/sdk/obf/s;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bl;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V

    .line 126
    :cond_4c
    return-void
.end method

.method public bridge synthetic a(Z)V
    .registers 2

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/y;->a(Z)V

    return-void
.end method
