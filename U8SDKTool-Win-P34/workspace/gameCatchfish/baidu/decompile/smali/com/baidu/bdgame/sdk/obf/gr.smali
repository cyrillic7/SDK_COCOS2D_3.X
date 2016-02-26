.class public Lcom/baidu/bdgame/sdk/obf/gr;
.super Lcom/baidu/bdgame/sdk/obf/hc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/hc",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/gs;",
        ">;"
    }
.end annotation


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
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/hc;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/gr;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/gr;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/gr;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/gr;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 30
    const/16 v1, 0x160

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gr;->a(S)V

    .line 31
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gr;->b(I)V

    .line 32
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/gr;->a(I)V

    .line 33
    return-object v0
.end method


# virtual methods
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
            "Lcom/baidu/bdgame/sdk/obf/gs;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 40
    if-eqz p2, :cond_5

    .line 57
    :goto_4
    return v0

    .line 43
    :cond_5
    const-string v2, "CashOrderSerial"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 45
    const-string v0, "CashOrderSerial"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/gr;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 46
    goto :goto_4

    .line 48
    :cond_1b
    const-string v3, "Parameter"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 50
    const-string v0, "Parameter"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/gr;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 51
    goto :goto_4

    .line 53
    :cond_31
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/gs;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/gs;-><init>()V

    .line 54
    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/gs;->b(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v3}, Lcom/baidu/bdgame/sdk/obf/gs;->a(Ljava/lang/String;)V

    .line 56
    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    goto :goto_4
.end method
