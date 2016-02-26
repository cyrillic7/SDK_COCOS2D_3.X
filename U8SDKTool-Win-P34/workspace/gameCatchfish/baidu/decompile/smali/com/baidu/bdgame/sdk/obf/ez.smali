.class public Lcom/baidu/bdgame/sdk/obf/ez;
.super Lcom/baidu/bdgame/sdk/obf/is;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:Ljava/lang/String;

.field private i:Lcom/baidu/bdgame/sdk/obf/ev;

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/is;-><init>(Landroid/content/Context;)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->j:Z

    .line 30
    return-void
.end method

.method private b(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_dialog_iv_close"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->a:Landroid/widget/ImageView;

    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_btn_dialog_cancel"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->b:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_btn_dialog_pay"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->e:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_find_pwd"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->f:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFlags(I)V

    .line 48
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ez;->f:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->j:Z

    if-eqz v0, :cond_91

    move v0, v1

    :goto_53
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_input"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->g:Landroid/widget/EditText;

    .line 51
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ez;->c:Landroid/content/Context;

    const-string v3, "bdp_paycenter_hint_input_pay_pwd"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ez;->k:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->g:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ez;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_color_text_hint"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 53
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ez;->c()V

    .line 54
    return-void

    .line 48
    :cond_91
    const/4 v0, 0x4

    goto :goto_53
.end method

.method private c()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 115
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_9
    return v0

    .line 118
    :cond_a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_tips_input_verify_pwd_null"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private d()V
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_b

    .line 138
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_b
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->c:Landroid/content/Context;

    const-string v1, "bdp_paycenter_layout_dialog_verify_paypwd"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ez;->b(Landroid/view/View;)V

    .line 127
    return-object v0
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ev;)V
    .registers 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ez;->i:Lcom/baidu/bdgame/sdk/obf/ev;

    .line 134
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public a_()V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_13

    .line 110
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ez;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_13
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->j:Z

    .line 149
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 150
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    :cond_d
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 161
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ez;->k:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_2c

    .line 163
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ez;->c:Landroid/content/Context;

    const-string v2, "bdp_paycenter_hint_input_pay_pwd"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/ez;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ez;->c:Landroid/content/Context;

    const-string v2, "bdp_color_text_hint"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 167
    :cond_2c
    return-void
.end method

.method public dismiss()V
    .registers 3

    .prologue
    .line 101
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/is;->dismiss()V

    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->h:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->g:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kr;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 97
    :cond_6
    :goto_6
    return-void

    .line 81
    :cond_7
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->a:Landroid/widget/ImageView;

    if-eq p1, v0, :cond_f

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_16

    .line 82
    :cond_f
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ez;->dismiss()V

    .line 83
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ez;->d()V

    goto :goto_6

    .line 84
    :cond_16
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_38

    .line 85
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ez;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 87
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ez;->i:Lcom/baidu/bdgame/sdk/obf/ev;

    if-eqz v1, :cond_6

    .line 88
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ez;->i:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-interface {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ev;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 91
    :cond_38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_6

    .line 93
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->i:Lcom/baidu/bdgame/sdk/obf/ev;

    if-eqz v0, :cond_6

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ez;->i:Lcom/baidu/bdgame/sdk/obf/ev;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/ev;->a()V

    goto :goto_6
.end method
