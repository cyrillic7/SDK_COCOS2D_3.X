.class public Lcom/baidu/bdgame/sdk/obf/bo;
.super Lcom/baidu/bdgame/sdk/obf/bn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/baidu/bdgame/sdk/obf/bn;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/kc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/kc",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/baidu/bdgame/sdk/obf/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/bdgame/sdk/obf/jq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/baidu/bdgame/sdk/obf/kc",
            "<TT;>;",
            "Lcom/baidu/bdgame/sdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/bn;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/bo;->a:Lcom/baidu/bdgame/sdk/obf/kc;

    .line 22
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/bo;->b:Lcom/baidu/bdgame/sdk/obf/n;

    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bo;->c:Lcom/baidu/bdgame/sdk/obf/jq;

    if-eqz v0, :cond_c

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bo;->c:Lcom/baidu/bdgame/sdk/obf/jq;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jq;->a()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bo;->c:Lcom/baidu/bdgame/sdk/obf/jq;

    .line 52
    :cond_c
    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 41
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/jq;->d()Lcom/baidu/bdgame/sdk/obf/jq;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bo;->c:Lcom/baidu/bdgame/sdk/obf/jq;

    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bo;->c:Lcom/baidu/bdgame/sdk/obf/jq;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bo;->a:Lcom/baidu/bdgame/sdk/obf/kc;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bo;->b:Lcom/baidu/bdgame/sdk/obf/n;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/jq;->a(Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 43
    return-void
.end method

.method protected final a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bo;->b:Lcom/baidu/bdgame/sdk/obf/n;

    if-eqz v0, :cond_a

    .line 29
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bo;->b:Lcom/baidu/bdgame/sdk/obf/n;

    const/4 v1, 0x0

    invoke-interface {v0, p2, p3, v1}, Lcom/baidu/bdgame/sdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V

    .line 31
    :cond_a
    return-void
.end method

.method protected final c(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 36
    return-void
.end method
