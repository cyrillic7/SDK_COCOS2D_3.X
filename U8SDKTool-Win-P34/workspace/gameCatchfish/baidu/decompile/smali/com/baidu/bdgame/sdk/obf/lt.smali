.class public Lcom/baidu/bdgame/sdk/obf/lt;
.super Lcom/baidu/bdgame/sdk/obf/ls;
.source "SourceFile"


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ls;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->a:Landroid/content/Context;

    const-string v1, "bdp_dialog_confirm"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->a:Landroid/content/Context;

    const-string v2, "txt_content"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->c:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->a:Landroid/content/Context;

    const-string v2, "btn_a"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->d:Landroid/widget/Button;

    .line 39
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->a:Landroid/content/Context;

    const-string v2, "btn_b"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->e:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/lt;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_4d
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->f:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_6c

    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/lt;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/lt;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 48
    :cond_6c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8b

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->g:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_8b

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->e:Landroid/widget/Button;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/lt;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->e:Landroid/widget/Button;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/lt;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lt;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    :cond_8b
    return-object v1
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/lt;->j:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    .line 57
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/lt;->h:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/lt;->f:Landroid/view/View$OnClickListener;

    .line 59
    return-void
.end method

.method public b(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 3

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/lt;->i:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/lt;->g:Landroid/view/View$OnClickListener;

    .line 64
    return-void
.end method
