.class public Lcom/baidu/bdgame/sdk/obf/ik;
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
.field private a:Lcom/baidu/bdgame/sdk/obf/ij;


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
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/hc;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ij;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/ik;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/ik;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ik;

    invoke-direct {v0, p0, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ik;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 32
    const/16 v1, 0x167

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ik;->a(S)V

    .line 33
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ik;->b(I)V

    .line 34
    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ik;->a(Lcom/baidu/bdgame/sdk/obf/ij;)V

    .line 35
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ik;->a(I)V

    .line 36
    return-object v0
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/ij;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ik;->a:Lcom/baidu/bdgame/sdk/obf/ij;

    .line 51
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ij;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/ik;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/ij;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/ik;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ik;

    invoke-direct {v0, p0, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ik;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 42
    const/16 v1, 0x17c

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ik;->a(S)V

    .line 43
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ik;->b(I)V

    .line 44
    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ik;->a(Lcom/baidu/bdgame/sdk/obf/ij;)V

    .line 45
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
    .line 56
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/hc;->a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ik;->a:Lcom/baidu/bdgame/sdk/obf/ij;

    if-nez v1, :cond_14

    .line 58
    const-class v1, Lcom/baidu/bdgame/sdk/obf/ik;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bank card null"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/la;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_13
    return-object v0

    .line 60
    :cond_14
    const-string v1, "BindId"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ik;->a:Lcom/baidu/bdgame/sdk/obf/ij;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ij;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_13
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

    .line 70
    if-eqz p2, :cond_5

    .line 101
    :goto_4
    return v0

    .line 73
    :cond_5
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ig;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/ig;-><init>()V

    .line 74
    const-string v2, "SmsConfirm"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 76
    const-string v0, "SmsConfirm"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ik;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 77
    goto :goto_4

    .line 80
    :cond_20
    :try_start_20
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_40

    move v2, v1

    .line 81
    :goto_27
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/ig;->a(Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_42

    .line 86
    const-string v2, "CashOrderSerial"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 88
    const-string v0, "CashOrderSerial"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ik;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 89
    goto :goto_4

    :cond_40
    move v2, v0

    .line 80
    goto :goto_27

    .line 82
    :catch_42
    move-exception v0

    .line 83
    const-string v0, "SmsConfirm"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ik;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 84
    goto :goto_4

    .line 91
    :cond_4d
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/ig;->a(Ljava/lang/String;)V

    .line 93
    const-string v2, "BankOrderSerial"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 95
    const-string v0, "BankOrderSerial"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ik;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 96
    goto :goto_4

    .line 98
    :cond_66
    invoke-virtual {v3, v2}, Lcom/baidu/bdgame/sdk/obf/ig;->b(Ljava/lang/String;)V

    .line 100
    iput-object v3, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    goto :goto_4
.end method
