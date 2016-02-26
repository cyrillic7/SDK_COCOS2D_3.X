.class public Lcom/baidu/bdgame/sdk/obf/if;
.super Lcom/baidu/bdgame/sdk/obf/hc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/hc",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ig;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/hc;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/if;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/if;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/if;

    invoke-direct {v0, p0, p5, p6}, Lcom/baidu/bdgame/sdk/obf/if;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 37
    const/16 v1, 0x166

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/if;->a(S)V

    .line 38
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/if;->b(I)V

    .line 39
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/if;->a:Ljava/lang/String;

    .line 40
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/if;->b:Ljava/lang/String;

    .line 41
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/if;->g:Ljava/lang/String;

    .line 42
    iput-object p4, v0, Lcom/baidu/bdgame/sdk/obf/if;->h:Ljava/lang/String;

    .line 43
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/if;->a(I)V

    .line 44
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/if;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/if;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/if;

    invoke-direct {v0, p0, p5, p6}, Lcom/baidu/bdgame/sdk/obf/if;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 51
    const/16 v1, 0x17b

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/if;->a(S)V

    .line 52
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/if;->b(I)V

    .line 53
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/if;->a:Ljava/lang/String;

    .line 54
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/if;->h:Ljava/lang/String;

    .line 55
    iput-object p3, v0, Lcom/baidu/bdgame/sdk/obf/if;->i:Ljava/lang/String;

    .line 56
    iput-object p4, v0, Lcom/baidu/bdgame/sdk/obf/if;->j:Ljava/lang/String;

    .line 57
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/hc;->a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;

    move-result-object v0

    .line 102
    const-string v1, "CardNo"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/if;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/if;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 104
    const-string v1, "ValidThru"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/if;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    :cond_1a
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/if;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 107
    const-string v1, "Cvv2"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/if;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    :cond_29
    const-string v1, "MobilePhone"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/if;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/if;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 111
    const-string v1, "IdCard"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/if;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :cond_3f
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/if;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 114
    const-string v1, "RealName"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/if;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    :cond_4e
    return-object v0
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ig;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    if-eqz p2, :cond_5

    .line 95
    :goto_4
    return v0

    .line 67
    :cond_5
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ig;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/ig;-><init>()V

    .line 68
    const-string v2, "SmsConfirm"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 70
    const-string v0, "SmsConfirm"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/if;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 71
    goto :goto_4

    .line 74
    :cond_20
    :try_start_20
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_40

    move v2, v1

    .line 75
    :goto_27
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/ig;->a(Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_42

    .line 80
    const-string v2, "CashOrderSerial"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 82
    const-string v0, "CashOrderSerial"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/if;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 83
    goto :goto_4

    :cond_40
    move v2, v0

    .line 74
    goto :goto_27

    .line 76
    :catch_42
    move-exception v0

    .line 77
    const-string v0, "SmsConfirm"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/if;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 78
    goto :goto_4

    .line 85
    :cond_4d
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/ig;->a(Ljava/lang/String;)V

    .line 87
    const-string v2, "BankOrderSerial"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 89
    const-string v0, "BankOrderSerial"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/if;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 90
    goto :goto_4

    .line 92
    :cond_66
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/ig;->b(Ljava/lang/String;)V

    .line 94
    iput-object v3, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    goto :goto_4
.end method
