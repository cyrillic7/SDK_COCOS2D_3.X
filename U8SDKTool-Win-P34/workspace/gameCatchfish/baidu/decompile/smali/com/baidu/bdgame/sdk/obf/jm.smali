.class public Lcom/baidu/bdgame/sdk/obf/jm;
.super Lcom/baidu/bdgame/sdk/obf/it;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3


# instance fields
.field private d:Ljava/lang/String;

.field private h:Lcom/baidu/bdgame/sdk/obf/jn;

.field private i:Lcom/baidu/bdgame/sdk/obf/jd;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/jn;Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/it;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 32
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/jm;->h:Lcom/baidu/bdgame/sdk/obf/jn;

    .line 33
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/jm;->i:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 34
    return-void
.end method


# virtual methods
.method protected a(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 4

    .prologue
    .line 39
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jl;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/jl;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/jm;)V

    .line 40
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jl;->b(Z)V

    .line 41
    return-object v0
.end method

.method protected a(ZLandroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/it;->a(ZLandroid/os/Bundle;)V

    .line 55
    if-eqz p1, :cond_1d

    .line 56
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/jm;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/jg;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_15

    .line 58
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/jg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jm;->d:Ljava/lang/String;

    .line 60
    :cond_15
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jm$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/jm$1;-><init>(Lcom/baidu/bdgame/sdk/obf/jm;)V

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jm;->a(Ljava/lang/Runnable;)V

    .line 68
    :cond_1d
    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/ce;)Lcom/baidu/bdgame/sdk/obf/cc;
    .registers 4

    .prologue
    .line 47
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jl;

    invoke-direct {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/jl;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;Lcom/baidu/bdgame/sdk/obf/jm;)V

    .line 48
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jl;->b(Z)V

    .line 49
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jm;->j:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jm;->k:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public f()Lcom/baidu/bdgame/sdk/obf/jn;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jm;->h:Lcom/baidu/bdgame/sdk/obf/jn;

    return-object v0
.end method

.method protected g()V
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jm;->b(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public o()Lcom/baidu/bdgame/sdk/obf/jd;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jm;->i:Lcom/baidu/bdgame/sdk/obf/jd;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jm;->d:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jm;->j:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jm;->k:Ljava/lang/String;

    return-object v0
.end method
