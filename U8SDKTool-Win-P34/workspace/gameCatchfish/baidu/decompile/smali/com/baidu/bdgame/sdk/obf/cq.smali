.class public Lcom/baidu/bdgame/sdk/obf/cq;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/cs;

.field private b:Lcom/baidu/bdgame/sdk/obf/co;

.field private c:Lcom/baidu/bdgame/sdk/obf/cp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cs;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cq;)Lcom/baidu/bdgame/sdk/obf/cs;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    return-object v0
.end method

.method private g()V
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/co;->a()V

    .line 125
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    if-eqz v0, :cond_9

    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/co;->g()V

    .line 87
    :cond_9
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->e()Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->r()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/co;->a(I)V

    .line 77
    :cond_11
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/cn;)V
    .registers 6

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->removeAllViews()V

    .line 116
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cp;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-direct {v0, v1, p1, v2}, Lcom/baidu/bdgame/sdk/obf/cp;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/cs;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cp;

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cp;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/cq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/co$b;)V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    if-nez v0, :cond_6

    .line 68
    :goto_5
    return-void

    .line 38
    :cond_6
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->removeAllViews()V

    .line 40
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/co;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/cs;->e()Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/baidu/bdgame/sdk/obf/co;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/cr;Lcom/baidu/bdgame/sdk/obf/co$b;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cq$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cq$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cq;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/co;->a(Lcom/baidu/bdgame/sdk/obf/co$a;)V

    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/bdgame/sdk/obf/cq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5
.end method

.method public b()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    if-eqz v0, :cond_9

    .line 91
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/co;->h()V

    .line 93
    :cond_9
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/co;->j()V

    .line 99
    :cond_9
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/co;->i()V

    .line 105
    :cond_9
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->e()Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->r()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 131
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cq;->g()V

    .line 138
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->b()V

    .line 139
    return-void

    .line 132
    :cond_15
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->e()Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->v()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cp;

    if-eqz v0, :cond_f

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->e()Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->w()Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cp;

    if-nez v0, :cond_35

    const-string v0, ""

    :cond_35
    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/cp;->a(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public f()V
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->e()Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->r()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 143
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->b:Lcom/baidu/bdgame/sdk/obf/co;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/co;->b()V

    .line 149
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->c()V

    .line 150
    return-void

    .line 144
    :cond_17
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->e()Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cr;->v()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 145
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cp;

    if-eqz v0, :cond_11

    .line 146
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cq;->a:Lcom/baidu/bdgame/sdk/obf/cs;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cs;->e()Lcom/baidu/bdgame/sdk/obf/cr;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cq;->c:Lcom/baidu/bdgame/sdk/obf/cp;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/cp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cr;->a(Ljava/lang/String;)V

    goto :goto_11
.end method
