.class public Lcom/baidu/bdgame/sdk/obf/he;
.super Lcom/baidu/bdgame/sdk/obf/hc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/hc",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/hf;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


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
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/hc;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/he$1;)V
    .registers 5

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/he;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/he;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/he;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/he$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/he$1;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 51
    const/16 v1, 0x15e

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->a(S)V

    .line 52
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->b(I)V

    .line 53
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->a(I)V

    .line 54
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/he;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/he;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/he$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/baidu/bdgame/sdk/obf/he$4;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 108
    const/16 v1, 0x170

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->a(S)V

    .line 109
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->b(I)V

    .line 110
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->a(I)V

    .line 111
    iput-object p1, v0, Lcom/baidu/bdgame/sdk/obf/he;->a:Ljava/lang/String;

    .line 113
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/he;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/he;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/he$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/he$2;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 74
    const/16 v1, 0x178

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->a(S)V

    .line 75
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->b(I)V

    .line 76
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->a(I)V

    .line 77
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/he;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/he;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/he$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/he$3;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 91
    const/16 v1, 0x16d

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->a(S)V

    .line 92
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->b(I)V

    .line 93
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->a(I)V

    .line 95
    return-object v0
.end method

.method public static d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/he;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/he;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/he$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/he$5;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 125
    const/16 v1, 0x16e

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->a(S)V

    .line 126
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->b(I)V

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/he;->a(I)V

    .line 128
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
    .line 136
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/hc;->a(Lcom/baidu/bdgame/sdk/obf/kd;)Lorg/json/JSONObject;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/he;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 138
    const-string v1, "PayPassword"

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/he;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    :cond_13
    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/iw;)V
    .registers 2

    .prologue
    .line 33
    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/kd;ILcom/baidu/bdgame/sdk/obf/ka;Lorg/json/JSONObject;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/kd;",
            "I",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/hf;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 147
    if-eqz p2, :cond_4

    .line 148
    const/4 v0, 0x1

    .line 189
    :goto_3
    return v0

    .line 150
    :cond_4
    const-string v0, "CashOrderSerial"

    invoke-static {p4, v0}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 152
    const-string v0, "CashOrderSerial"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/he;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 153
    const/4 v0, 0x0

    goto :goto_3

    .line 155
    :cond_1a
    const-string v1, "AccountMoney"

    invoke-static {p4, v1}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 157
    const-string v0, "AccountMoney"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/he;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 158
    const/4 v0, 0x0

    goto :goto_3

    .line 160
    :cond_30
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 162
    new-instance v3, Lcom/baidu/bdgame/sdk/obf/hf;

    invoke-direct {v3}, Lcom/baidu/bdgame/sdk/obf/hf;-><init>()V

    .line 163
    invoke-virtual {v3, v0}, Lcom/baidu/bdgame/sdk/obf/hf;->a(Ljava/lang/String;)V

    .line 165
    new-instance v4, Lcom/baidu/bdgame/sdk/obf/iw;

    invoke-direct {v4}, Lcom/baidu/bdgame/sdk/obf/iw;-><init>()V

    .line 166
    invoke-virtual {p0, v4}, Lcom/baidu/bdgame/sdk/obf/he;->a(Lcom/baidu/bdgame/sdk/obf/iw;)V

    .line 168
    const/16 v2, 0x64

    .line 169
    :try_start_46
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v0

    .line 171
    :cond_4e
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_66

    const-wide/16 v6, 0xa

    rem-long v6, v0, v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_66

    .line 172
    const-wide/16 v6, 0xa

    div-long/2addr v0, v6

    .line 173
    div-int/lit8 v2, v2, 0xa

    .line 175
    const/4 v5, 0x1

    if-ne v2, v5, :cond_4e

    .line 180
    :cond_66
    invoke-virtual {v4, v0, v1}, Lcom/baidu/bdgame/sdk/obf/iw;->a(J)V

    .line 181
    invoke-virtual {v4, v2}, Lcom/baidu/bdgame/sdk/obf/iw;->e(I)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6c} :catch_73

    .line 186
    invoke-virtual {v3, v4}, Lcom/baidu/bdgame/sdk/obf/hf;->a(Lcom/baidu/bdgame/sdk/obf/iw;)V

    .line 188
    iput-object v3, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    .line 189
    const/4 v0, 0x1

    goto :goto_3

    .line 182
    :catch_73
    move-exception v0

    .line 183
    const-string v0, "AccountMoney"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/he;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    .line 184
    const/4 v0, 0x0

    goto :goto_3
.end method
