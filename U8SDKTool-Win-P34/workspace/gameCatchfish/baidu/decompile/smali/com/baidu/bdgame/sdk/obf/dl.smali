.class public Lcom/baidu/bdgame/sdk/obf/dl;
.super Lcom/baidu/bdgame/sdk/obf/it;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/bdgame/sdk/obf/ca;

.field private d:Lcom/baidu/bdgame/sdk/obf/di;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/it;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 4

    .prologue
    .line 26
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/dk;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/dl;)V

    .line 27
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dk;->b(Z)V

    .line 28
    return-object v0
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ca;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dl;->c:Lcom/baidu/bdgame/sdk/obf/ca;

    .line 103
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/di;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dl;->d:Lcom/baidu/bdgame/sdk/obf/di;

    .line 109
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 3

    .prologue
    .line 115
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dl;->h:Ljava/lang/String;

    .line 116
    iput-boolean p2, p0, Lcom/baidu/bdgame/sdk/obf/dl;->i:Z

    .line 117
    return-void
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/it;->a(ZLandroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 4

    .prologue
    .line 34
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dk;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/dk;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/dl;)V

    .line 35
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dk;->b(Z)V

    .line 36
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dl;->b:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dl;->a:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_11

    .line 71
    :cond_f
    const/4 v0, 0x0

    .line 73
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public e(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->d:Lcom/baidu/bdgame/sdk/obf/di;

    if-eqz v0, :cond_9

    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->d:Lcom/baidu/bdgame/sdk/obf/di;

    invoke-interface {v0, p1}, Lcom/baidu/bdgame/sdk/obf/di;->a(Ljava/lang/String;)V

    .line 80
    :cond_9
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/dl;->b(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public n()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->c:Lcom/baidu/bdgame/sdk/obf/ca;

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->c:Lcom/baidu/bdgame/sdk/obf/ca;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/ca;->a()V

    .line 97
    :cond_9
    return-void
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public p()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->d:Lcom/baidu/bdgame/sdk/obf/di;

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->d:Lcom/baidu/bdgame/sdk/obf/di;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/di;->a()V

    .line 86
    :cond_9
    return-void
.end method

.method public q()V
    .registers 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/dl;->g()V

    .line 90
    return-void
.end method

.method public r()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public s()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/dl;->i:Z

    return v0
.end method
