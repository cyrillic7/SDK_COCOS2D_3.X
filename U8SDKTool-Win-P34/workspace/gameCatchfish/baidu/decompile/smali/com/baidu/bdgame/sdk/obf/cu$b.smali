.class Lcom/baidu/bdgame/sdk/obf/cu$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/cu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cu;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/bdgame/sdk/obf/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cu;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/jr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->a:Lcom/baidu/bdgame/sdk/obf/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->c:Ljava/lang/String;

    .line 346
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->b:Landroid/content/Context;

    .line 347
    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->d:Lcom/baidu/bdgame/sdk/obf/n;

    .line 348
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cu$b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a()Z
    .registers 2

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cu$b;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 367
    const/4 v0, 0x1

    .line 378
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/cu$b;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 382
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jv;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/jv;

    move-result-object v0

    .line 383
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v1

    .line 384
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/cu$b$1;

    invoke-direct {v2, p0}, Lcom/baidu/bdgame/sdk/obf/cu$b$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cu$b;)V

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->b(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 402
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/cu$b;)Lcom/baidu/bdgame/sdk/obf/n;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->d:Lcom/baidu/bdgame/sdk/obf/n;

    return-object v0
.end method

.method private c()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 405
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/cu;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 406
    if-nez v1, :cond_13

    .line 407
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->a:Lcom/baidu/bdgame/sdk/obf/cu;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->b:Landroid/content/Context;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/cu;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 414
    :goto_12
    return v0

    .line 411
    :cond_13
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->d:Lcom/baidu/bdgame/sdk/obf/n;

    if-eqz v2, :cond_23

    .line 412
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->d:Lcom/baidu/bdgame/sdk/obf/n;

    const-string v3, ""

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/jr;

    invoke-direct {v4, v1}, Lcom/baidu/bdgame/sdk/obf/jr;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v0, v3, v4}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 414
    :cond_23
    const/4 v0, 0x1

    goto :goto_12
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->a:Lcom/baidu/bdgame/sdk/obf/cu;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cu;->a(Landroid/content/Context;)I

    move-result v0

    .line 354
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cu$b;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 357
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cu$b;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 363
    :goto_1a
    return-void

    .line 362
    :cond_1b
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cu$b;->b()V

    goto :goto_1a
.end method
