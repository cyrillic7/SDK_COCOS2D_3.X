.class public Lcom/baidu/bdgame/sdk/obf/dn;
.super Lcom/baidu/bdgame/sdk/obf/hz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/dn$b;,
        Lcom/baidu/bdgame/sdk/obf/dn$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "bdp_pay"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/hz;-><init>()V

    .line 28
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 3

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dn;->b(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 21
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/dn;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 3

    .prologue
    .line 153
    const-string v0, "bdp_pay"

    invoke-static {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/dn;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 157
    const-string v0, "bdp_pay"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dn;->c(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 31
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/lg;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 33
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result v0

    .line 36
    :goto_8
    return v0

    .line 34
    :catch_9
    move-exception v0

    .line 36
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dn$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/dn$a;-><init>(Lcom/baidu/bdgame/sdk/obf/dn;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dn;->a(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 40
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/lg;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 45
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dn$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/dn$b;-><init>(Lcom/baidu/bdgame/sdk/obf/dn;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dn;->a(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method
