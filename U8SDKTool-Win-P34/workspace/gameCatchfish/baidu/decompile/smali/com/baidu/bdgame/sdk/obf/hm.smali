.class public Lcom/baidu/bdgame/sdk/obf/hm;
.super Lcom/baidu/bdgame/sdk/obf/hc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/hc",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/hn;",
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

.method public static a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)Lcom/baidu/bdgame/sdk/obf/hm;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<*>;",
            "Lcom/baidu/bdgame/sdk/obf/jd;",
            ")",
            "Lcom/baidu/bdgame/sdk/obf/hm;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/hm;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/hm;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 30
    const/16 v1, 0x162

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hm;->a(S)V

    .line 31
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hm;->b(I)V

    .line 32
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/hm;->a(I)V

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
            "Lcom/baidu/bdgame/sdk/obf/hn;",
            ">;",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-eqz p2, :cond_5

    .line 61
    :goto_4
    return v0

    .line 46
    :cond_5
    const-string v2, "CashOrderSerial"

    invoke-static {p4, v2}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 48
    const-string v0, "CashOrderSerial"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/hm;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 49
    goto :goto_4

    .line 51
    :cond_1b
    const-string v3, "JumpURL"

    invoke-static {p4, v3}, Lcom/baidu/bdgame/sdk/obf/kz;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 53
    const-string v0, "JumpURL"

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/hm;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/baidu/bdgame/sdk/obf/ka;->a:Ljava/lang/Object;

    move v0, v1

    .line 54
    goto :goto_4

    .line 56
    :cond_31
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/hn;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/hn;-><init>()V

    .line 57
    invoke-virtual {v1, v2}, Lcom/baidu/bdgame/sdk/obf/hn;->b(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v3}, Lcom/baidu/bdgame/sdk/obf/hn;->a(Ljava/lang/String;)V

    .line 60
    iput-object v1, p3, Lcom/baidu/bdgame/sdk/obf/ka;->b:Ljava/lang/Object;

    goto :goto_4
.end method
