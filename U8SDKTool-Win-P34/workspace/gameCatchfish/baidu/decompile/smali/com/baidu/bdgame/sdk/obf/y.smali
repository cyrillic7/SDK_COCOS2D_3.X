.class Lcom/baidu/bdgame/sdk/obf/y;
.super Lcom/baidu/bdgame/sdk/obf/kc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kc",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 5

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/y;->a:Z

    .line 25
    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/kd;Lcom/baidu/bdgame/sdk/obf/ai;)V
    .registers 4

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/y;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/baidu/bdgame/sdk/obf/kd;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)V

    .line 165
    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ai;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 4
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
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 170
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->o:Ljava/lang/String;

    .line 172
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/kc;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .registers 7
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
    .line 159
    const-string v0, "ok"

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    .line 161
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/y;->a:Z

    .line 141
    return-void
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 6
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
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method protected final b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 15
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
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/kc;->b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z

    .line 33
    if-eqz p2, :cond_f

    .line 34
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/y;->a(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 35
    const/4 v0, 0x0

    .line 134
    :goto_c
    return v0

    .line 37
    :cond_d
    const/4 v0, 0x1

    goto :goto_c

    .line 40
    :cond_f
    const-string v0, "Uid"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 42
    const-string v0, "Uid"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/y;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    goto :goto_c

    .line 46
    :cond_25
    const-string v0, "UserName"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string v0, "DisplayName"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    const-string v0, "HasPhoneNum"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 51
    const-string v0, "HasPhoneNum"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/y;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    goto :goto_c

    .line 55
    :cond_47
    const-string v0, "AccessToken"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 57
    const-string v0, "AccessToken"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/y;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    goto :goto_c

    .line 61
    :cond_5d
    const-string v0, "Baidu_AccessToken"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 62
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 63
    const-string v0, "Baidu_AccessToken"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/y;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 64
    const/4 v0, 0x0

    goto :goto_c

    .line 67
    :cond_73
    new-instance v4, Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-direct {v4}, Lcom/baidu/bdgame/sdk/obf/ai;-><init>()V

    .line 69
    const-string v0, "IsGuest"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8f

    .line 71
    const-string v0, "IsGuest"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/y;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 75
    :cond_8f
    :try_start_8f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b0

    const/4 v0, 0x0

    .line 76
    :goto_96
    invoke-virtual {v4, v0}, Lcom/baidu/bdgame/sdk/obf/ai;->c(Z)V
    :try_end_99
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_99} :catch_b2

    .line 82
    const-string v0, "BaiduOauthID"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 83
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 84
    const-string v0, "BaiduOauthID"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/y;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 75
    :cond_b0
    const/4 v0, 0x1

    goto :goto_96

    .line 77
    :catch_b2
    move-exception v0

    .line 78
    const-string v0, "IsGuest"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/y;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 88
    :cond_be
    invoke-virtual {p0, v4, p4}, Lcom/baidu/bdgame/sdk/obf/y;->a(Lcom/baidu/bdgame/sdk/obf/ai;Lorg/json/JSONObject;)Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v9

    .line 89
    iget-object v0, v9, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d3

    .line 90
    iget-object v0, v9, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 94
    :cond_d3
    invoke-virtual {v4}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_ff

    .line 95
    const-string v0, "HasEmail_91"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f5

    .line 97
    const-string v0, "HasEmail_91"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/y;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 101
    :cond_f5
    :try_start_f5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_134

    const/4 v0, 0x0

    .line 102
    :goto_fc
    invoke-virtual {v4, v0}, Lcom/baidu/bdgame/sdk/obf/ai;->a(Z)V
    :try_end_ff
    .catch Ljava/lang/NumberFormatException; {:try_start_f5 .. :try_end_ff} :catch_136

    .line 110
    :cond_ff
    invoke-virtual {v4, v1}, Lcom/baidu/bdgame/sdk/obf/ai;->c(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v4, v2}, Lcom/baidu/bdgame/sdk/obf/ai;->d(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v4, v3}, Lcom/baidu/bdgame/sdk/obf/ai;->e(Ljava/lang/String;)V

    .line 114
    :try_start_108
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_142

    const/4 v0, 0x0

    .line 115
    :goto_10f
    invoke-virtual {v4, v0}, Lcom/baidu/bdgame/sdk/obf/ai;->b(Z)V
    :try_end_112
    .catch Ljava/lang/NumberFormatException; {:try_start_108 .. :try_end_112} :catch_144

    .line 120
    invoke-virtual {v4, v6}, Lcom/baidu/bdgame/sdk/obf/ai;->f(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v4, v7}, Lcom/baidu/bdgame/sdk/obf/ai;->g(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v4, v8}, Lcom/baidu/bdgame/sdk/obf/ai;->b(Ljava/lang/String;)V

    .line 126
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/y;->a:Z

    if-eqz v0, :cond_129

    .line 129
    invoke-direct {p0, p1, v4}, Lcom/baidu/bdgame/sdk/obf/y;->a(Lcom/baidu/bdgame/sdk/obf/kd;Lcom/baidu/bdgame/sdk/obf/ai;)V

    .line 130
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/y;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/baidu/bdgame/sdk/obf/kd;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)V

    :cond_129
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 133
    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/y;->a(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 134
    const/4 v0, 0x1

    goto/16 :goto_c

    .line 101
    :cond_134
    const/4 v0, 0x1

    goto :goto_fc

    .line 103
    :catch_136
    move-exception v0

    .line 104
    const-string v0, "HasEmail_91"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/y;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 105
    const/4 v0, 0x0

    goto/16 :goto_c

    .line 114
    :cond_142
    const/4 v0, 0x1

    goto :goto_10f

    .line 116
    :catch_144
    move-exception v0

    .line 117
    const-string v0, "HasPhoneNum"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/y;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 118
    const/4 v0, 0x0

    goto/16 :goto_c
.end method
