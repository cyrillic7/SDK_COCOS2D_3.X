.class public Lcom/baidu/bdgame/sdk/obf/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/cn;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/cn;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->b:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cw;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->b:Ljava/util/List;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cw;Lcom/baidu/bdgame/sdk/obf/iy;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cw;->a(Lcom/baidu/bdgame/sdk/obf/iy;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cw;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cw;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/iy;)V
    .registers 4

    .prologue
    .line 122
    if-nez p1, :cond_3

    .line 129
    :goto_2
    return-void

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->K()Lcom/baidu/bdgame/sdk/obf/iy;

    move-result-object v0

    if-nez v0, :cond_15

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/iy;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/iy;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 128
    :cond_15
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->K()Lcom/baidu/bdgame/sdk/obf/iy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/iy;->a(Lcom/baidu/bdgame/sdk/obf/iy;)Lcom/baidu/bdgame/sdk/obf/iy;

    goto :goto_2
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 94
    :cond_8
    :goto_8
    return-void

    .line 91
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->b(I)V

    goto :goto_8
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/cw;Ljava/util/List;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cw;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 112
    :cond_8
    :goto_8
    return-void

    .line 108
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->b(I)V

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    goto :goto_8
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->b:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 47
    const/4 v0, 0x1

    .line 49
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cw$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cw$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cw;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bm;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->a:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cw$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cw$2;-><init>(Lcom/baidu/bdgame/sdk/obf/cw;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bm;->d(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z

    .line 77
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->b:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cw;->b:Ljava/util/List;

    .line 137
    :cond_c
    return-void
.end method
