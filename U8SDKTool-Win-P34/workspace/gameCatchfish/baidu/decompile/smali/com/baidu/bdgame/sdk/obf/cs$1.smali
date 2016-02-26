.class final Lcom/baidu/bdgame/sdk/obf/cs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/cs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cs;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/cs;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cs;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cs$1;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cs$1;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Lcom/baidu/bdgame/sdk/obf/cs;)V

    .line 53
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cs$1;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;->a(I)V

    .line 73
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ic;)V
    .registers 6

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cs$1;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->b(Lcom/baidu/bdgame/sdk/obf/cs;)Lcom/baidu/bdgame/sdk/obf/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->B()Lcom/baidu/bdgame/sdk/obf/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jd;->d()J

    move-result-wide v0

    .line 58
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ic;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/ix;->a(D)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_20

    .line 59
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cs$1;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-static {v2, p1, v0, v1}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Lcom/baidu/bdgame/sdk/obf/cs;Lcom/baidu/bdgame/sdk/obf/ic;J)V

    .line 63
    :goto_1f
    return-void

    .line 61
    :cond_20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cs$1;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cs;->a(Lcom/baidu/bdgame/sdk/obf/cs;Lcom/baidu/bdgame/sdk/obf/ic;)V

    goto :goto_1f
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ic;J)V
    .registers 6

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cs$1;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-static {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cs;->b(Lcom/baidu/bdgame/sdk/obf/cs;Lcom/baidu/bdgame/sdk/obf/ic;J)V

    .line 68
    return-void
.end method
