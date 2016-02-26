.class public Lcom/baidu/bdgame/sdk/obf/ht;
.super Lcom/baidu/bdgame/sdk/obf/kc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/kc",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ho;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/kc;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ht;
    .registers 6

    .prologue
    .line 36
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ht;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ht;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 37
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ht;->b(I)V

    .line 38
    const/16 v1, 0x130

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ht;->a(S)V

    .line 39
    const-string v1, "CashOrderSerial"

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ht;->a:Ljava/lang/String;

    .line 40
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/ht;->b:Ljava/lang/String;

    .line 41
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/ht;->g:Ljava/lang/String;

    .line 42
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/ht;
    .registers 6

    .prologue
    .line 53
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ht;

    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ht;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/kd;)V

    .line 54
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ht;->b(I)V

    .line 55
    const/16 v1, 0x131

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ht;->a(S)V

    .line 56
    const-string v1, "CooperatorOrderSerial"

    iput-object v1, v0, Lcom/baidu/bdgame/sdk/obf/ht;->a:Ljava/lang/String;

    .line 57
    iput-object p2, v0, Lcom/baidu/bdgame/sdk/obf/ht;->b:Ljava/lang/String;

    .line 58
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/ht;->g:Ljava/lang/String;

    .line 59
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 149
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->p:Ljava/lang/String;

    .line 151
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
    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ht;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ht;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v1, "AccessToken"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ht;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    return-object v0
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/ho;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    if-eqz p2, :cond_5

    .line 134
    :goto_4
    return v0

    .line 69
    :cond_5
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/ho;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/ho;-><init>()V

    .line 71
    const-string v3, "CashOrderSerial"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 73
    const-string v0, "CashOrderSerial"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ht;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 74
    goto :goto_4

    .line 76
    :cond_20
    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ho;->a(Ljava/lang/String;)V

    .line 77
    const-string v3, "CooperatorOrderSerial"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 79
    const-string v0, "CooperatorOrderSerial"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ht;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 80
    goto :goto_4

    .line 82
    :cond_39
    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ho;->b(Ljava/lang/String;)V

    .line 84
    const-string v3, "OrderMoney"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 86
    const-string v0, "OrderMoney"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ht;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 87
    goto :goto_4

    .line 89
    :cond_52
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 91
    :try_start_56
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 92
    const/high16 v4, 0x42c80000

    mul-float/2addr v3, v4

    float-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/baidu/bdgame/sdk/obf/ho;->a(J)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_61} :catch_77

    .line 98
    const-string v3, "OrderStatus"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 100
    const-string v0, "OrderStatus"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ht;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 101
    goto :goto_4

    .line 93
    :catch_77
    move-exception v0

    .line 94
    const-string v0, "OrderStatus"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ht;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 95
    goto :goto_4

    .line 104
    :cond_82
    :try_start_82
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 106
    packed-switch v3, :pswitch_data_d4

    .line 114
    const-string v0, "OrderStatus"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ht;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 115
    goto/16 :goto_4

    .line 110
    :pswitch_98
    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ho;->a(I)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_9b} :catch_b2

    .line 121
    const-string v3, "StatusMsg"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 123
    const-string v0, "StatusMsg"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ht;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 124
    goto/16 :goto_4

    .line 117
    :catch_b2
    move-exception v0

    .line 118
    const-string v0, "OrderStatus"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ht;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 119
    goto/16 :goto_4

    .line 126
    :cond_be
    invoke-virtual {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ho;->c(Ljava/lang/String;)V

    .line 128
    const-string v1, "ActivityInfo"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d0

    .line 130
    invoke-virtual {v2, v1}, Lcom/baidu/bdgame/sdk/obf/ho;->d(Ljava/lang/String;)V

    .line 133
    :cond_d0
    iput-object v2, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    goto/16 :goto_4

    .line 106
    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_98
        :pswitch_98
        :pswitch_98
    .end packed-switch
.end method
