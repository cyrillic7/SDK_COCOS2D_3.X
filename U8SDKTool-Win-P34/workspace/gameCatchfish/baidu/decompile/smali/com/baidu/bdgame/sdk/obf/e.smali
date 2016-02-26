.class public Lcom/baidu/bdgame/sdk/obf/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/e$1;,
        Lcom/baidu/bdgame/sdk/obf/e$c;,
        Lcom/baidu/bdgame/sdk/obf/e$b;,
        Lcom/baidu/bdgame/sdk/obf/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/bdgame/sdk/obf/e$c;

.field private d:Lcom/baidu/bdgame/sdk/obf/e$b;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/e$1;)V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/e;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .registers 3

    .prologue
    .line 70
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/e;->b()Lcom/baidu/bdgame/sdk/obf/e;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/e;->a(Landroid/content/Context;)V

    .line 71
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/c;->a(Landroid/app/Application;)V

    .line 72
    return-void
.end method

.method public static b()Lcom/baidu/bdgame/sdk/obf/e;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/e$a;->a:Lcom/baidu/bdgame/sdk/obf/e;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/e;->a:Landroid/content/Context;

    .line 63
    return-void
.end method

.method public a(Lcom/baidu/gamesdk/IResponse;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/gamesdk/IResponse",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/e$c;

    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/e$c;-><init>(Lcom/baidu/gamesdk/IResponse;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e;->c:Lcom/baidu/bdgame/sdk/obf/e$c;

    .line 190
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/e;->b:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public c()Landroid/content/Context;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method public d()V
    .registers 3

    .prologue
    .line 78
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/e$b;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/e$b;-><init>(Lcom/baidu/bdgame/sdk/obf/e;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e;->d:Lcom/baidu/bdgame/sdk/obf/e$b;

    .line 79
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e;->d:Lcom/baidu/bdgame/sdk/obf/e$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/e$b;->a(Z)V

    .line 80
    return-void
.end method

.method e()Lcom/baidu/bdgame/sdk/obf/g;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e;->c:Lcom/baidu/bdgame/sdk/obf/e$c;

    return-object v0
.end method

.method public f()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e;->c:Lcom/baidu/bdgame/sdk/obf/e$c;

    if-eqz v0, :cond_a

    .line 198
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e;->c:Lcom/baidu/bdgame/sdk/obf/e$c;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/e$c;->a()V

    .line 200
    :cond_a
    iput-object v2, p0, Lcom/baidu/bdgame/sdk/obf/e;->c:Lcom/baidu/bdgame/sdk/obf/e$c;

    .line 202
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e;->d:Lcom/baidu/bdgame/sdk/obf/e$b;

    if-eqz v0, :cond_16

    .line 203
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/e;->d:Lcom/baidu/bdgame/sdk/obf/e$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/e$b;->a(Z)V

    .line 205
    :cond_16
    iput-object v2, p0, Lcom/baidu/bdgame/sdk/obf/e;->d:Lcom/baidu/bdgame/sdk/obf/e$b;

    .line 206
    return-void
.end method
