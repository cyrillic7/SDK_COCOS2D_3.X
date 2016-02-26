.class public Lcom/baidu/bdgame/sdk/obf/iu;
.super Lcom/baidu/bdgame/sdk/obf/is;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/iu$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/is;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tv_dialog_tip_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->a:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tv_dialog_is_give_up_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->b:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_btn_dialog_ensure"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->e:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_btn_dialog_cancel"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->f:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->g:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 39
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iu;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_4b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->h:Ljava/lang/String;

    if-eqz v0, :cond_56

    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iu;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    :cond_56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->i:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_61

    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iu;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    :cond_61
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->j:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_6c

    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iu;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    :cond_6c
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_layout_dialog_close"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/iu;->b(Landroid/view/View;)V

    .line 125
    return-object v0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .registers 4

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iu;->i:Landroid/view/View$OnClickListener;

    .line 74
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->e:Landroid/widget/Button;

    if-eqz v0, :cond_d

    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iu;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 56
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iu;->g:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iu;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_d
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .registers 4

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iu;->j:Landroid/view/View$OnClickListener;

    .line 81
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->f:Landroid/widget/Button;

    if-eqz v0, :cond_d

    .line 82
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iu;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_d
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 63
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/iu;->h:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/iu;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/iu;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_d
    return-void
.end method
