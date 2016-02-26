.class Lcom/baidu/bdgame/sdk/obf/dn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/dn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dn;

.field private b:Lcom/baidu/bdgame/sdk/obf/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/dp;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dn;Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V
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
    .line 57
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dn$a;->a:Lcom/baidu/bdgame/sdk/obf/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/dn$a;->b:Lcom/baidu/bdgame/sdk/obf/n;

    .line 59
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/dn$a;->c:Landroid/content/Context;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dn$a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$a;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/hl;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/hl;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 89
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/dn$a$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/dn$a$1;-><init>(Lcom/baidu/bdgame/sdk/obf/dn$a;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->b(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/dn$a;Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dn$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 106
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ds;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ds;-><init>()V

    .line 107
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dn$a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/bdgame/sdk/obf/ds;->a(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dn$a;->b:Lcom/baidu/bdgame/sdk/obf/n;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/dn$a;)Lcom/baidu/bdgame/sdk/obf/n;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$a;->b:Lcom/baidu/bdgame/sdk/obf/n;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dn;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 77
    if-nez v0, :cond_15

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$a;->a:Lcom/baidu/bdgame/sdk/obf/dn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dn$a;->c:Landroid/content/Context;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/dn;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/dn$a;->a()V

    .line 84
    :goto_14
    return-void

    .line 82
    :cond_15
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dn$a;->a(Lorg/json/JSONObject;)V

    goto :goto_14
.end method
