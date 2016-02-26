.class public Lcom/baidu/bdgame/sdk/obf/bw;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/bw$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/baidu/bdgame/sdk/obf/bw$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 23
    const-string v0, "bdp_dialog_style"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 24
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/bw;->a(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v1

    .line 63
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bw;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41300000

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v2

    .line 64
    const/4 v0, 0x0

    .line 65
    const/4 v3, 0x1

    if-ne v1, v3, :cond_30

    .line 66
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->h(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    .line 67
    int-to-float v0, v0

    const v1, 0x3f933333

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 71
    :cond_27
    :goto_27
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bw;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 72
    return-void

    .line 68
    :cond_30
    if-nez v1, :cond_27

    .line 69
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bw;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->g(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    goto :goto_27
.end method

.method protected a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_tips_dialog"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    const-string v0, "bdp_title"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->a:Landroid/view/View;

    .line 31
    const-string v0, "bdp_title_text"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->b:Landroid/widget/TextView;

    .line 32
    const-string v0, "bdp_content_text"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->c:Landroid/widget/TextView;

    .line 33
    const-string v0, "bdp_cancel"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->d:Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const-string v0, "bdp_ok"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->e:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/bw;->setContentView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/bw$a;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bw;->f:Lcom/baidu/bdgame/sdk/obf/bw$a;

    .line 108
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bw;->a:Landroid/view/View;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    return-void

    .line 93
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->f:Lcom/baidu/bdgame/sdk/obf/bw$a;

    if-nez v0, :cond_5

    .line 52
    :cond_4
    :goto_4
    return-void

    .line 47
    :cond_5
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_f

    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->f:Lcom/baidu/bdgame/sdk/obf/bw$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/bw$a;->b()V

    goto :goto_4

    .line 49
    :cond_f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bw;->f:Lcom/baidu/bdgame/sdk/obf/bw$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/bw$a;->a()V

    goto :goto_4
.end method

.method public show()V
    .registers 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 57
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bw;->a()V

    .line 58
    return-void
.end method
