.class public Lcom/baidu/bdgame/sdk/obf/er;
.super Lcom/baidu/bdgame/sdk/obf/is;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/is;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->h:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/er;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_15
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->g:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/er;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_20
    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_dialog_iv_close"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->b:Landroid/widget/ImageView;

    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_btn_dialog_close"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->e:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_layout_balance_tips"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->f:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tv_dialog_tip_title"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->a:Landroid/widget/TextView;

    .line 40
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/er;->b()V

    .line 41
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_layout_dialog_balance_can_pay"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/er;->b(Landroid/view/View;)V

    .line 78
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 58
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/er;->h:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/er;->g:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 61
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/er;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :cond_f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/er;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/er;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_1a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/er;->dismiss()V

    .line 71
    return-void
.end method
