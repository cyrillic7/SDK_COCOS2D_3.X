.class public Lcom/baidu/bdgame/sdk/obf/db;
.super Lcom/baidu/bdgame/sdk/obf/hz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/db$b;,
        Lcom/baidu/bdgame/sdk/obf/db$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "bdp_activity_config"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/hz;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/db;Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/db;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/db;Lorg/json/JSONObject;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/db;->a(Lorg/json/JSONObject;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/da;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/da;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/da;-><init>()V

    .line 109
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/da;->a(Lorg/json/JSONObject;)V

    .line 110
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 4

    .prologue
    .line 114
    const-string v0, "bdp_activity_config"

    invoke-static {p1, p2, v0}, Lcom/baidu/bdgame/sdk/obf/db;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/db;Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/db;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    .prologue
    .line 118
    const-string v0, "bdp_activity_config"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/db;->c(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 26
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/db$b;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/db$b;-><init>(Lcom/baidu/bdgame/sdk/obf/db;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/db;->a(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/da;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/db$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/db$a;-><init>(Lcom/baidu/bdgame/sdk/obf/db;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/db;->a(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method
