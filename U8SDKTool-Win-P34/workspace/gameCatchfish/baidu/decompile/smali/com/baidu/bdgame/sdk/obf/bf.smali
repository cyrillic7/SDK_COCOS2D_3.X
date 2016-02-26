.class public Lcom/baidu/bdgame/sdk/obf/bf;
.super Lcom/baidu/bdgame/sdk/obf/ls;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/bf$a;
    }
.end annotation


# instance fields
.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/ImageView;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/baidu/bdgame/sdk/obf/bf$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ls;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Lcom/baidu/bdgame/sdk/obf/bf$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/baidu/bdgame/sdk/obf/bf$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_12

    .line 105
    :cond_8
    const-string v0, "bdp_account_register_name_exist_tip"

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    .line 112
    :goto_11
    return-void

    .line 108
    :cond_12
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bf;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/bf;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-direct {v0, p1}, Lcom/baidu/bdgame/sdk/obf/bf;->a(Ljava/util/List;)V

    .line 110
    invoke-direct {v0, p2}, Lcom/baidu/bdgame/sdk/obf/bf;->a(Lcom/baidu/bdgame/sdk/obf/bf$a;)V

    .line 111
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bf;->show()V

    goto :goto_11
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/bf$a;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bf;->h:Lcom/baidu/bdgame/sdk/obf/bf$a;

    .line 80
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/bf;->g:Ljava/util/List;

    .line 76
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->a:Landroid/content/Context;

    const-string v1, "bdp_dialog_suggestion_username"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->a:Landroid/content/Context;

    const-string v2, "btn_name_1"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->c:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->a:Landroid/content/Context;

    const-string v2, "btn_name_2"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->d:Landroid/widget/Button;

    .line 41
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->a:Landroid/content/Context;

    const-string v2, "btn_name_3"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->e:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->a:Landroid/content/Context;

    const-string v2, "img_close"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->f:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->g:Ljava/util/List;

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b1

    .line 44
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 45
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bf;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->g:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_92

    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->d:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bf;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->g:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_b1

    .line 53
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 54
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/bf;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->g:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_b1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-object v1
.end method

.method public a()V
    .registers 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->f(Landroid/content/Context;)I

    move-result v1

    .line 64
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->a:Landroid/content/Context;

    const/high16 v2, 0x41200000

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v2

    .line 65
    const/4 v0, 0x0

    .line 66
    const/4 v3, 0x1

    if-ne v1, v3, :cond_24

    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->h(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    .line 71
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bf;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 72
    return-void

    .line 68
    :cond_24
    if-nez v1, :cond_1b

    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/kw;->g(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    goto :goto_1b
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->h:Lcom/baidu/bdgame/sdk/obf/bf$a;

    if-nez v0, :cond_8

    .line 85
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bf;->dismiss()V

    .line 101
    :cond_7
    :goto_7
    return-void

    .line 88
    :cond_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_1e

    .line 89
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bf;->h:Lcom/baidu/bdgame/sdk/obf/bf$a;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->g:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/baidu/bdgame/sdk/obf/bf$a;->a(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bf;->dismiss()V

    goto :goto_7

    .line 91
    :cond_1e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_34

    .line 92
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bf;->h:Lcom/baidu/bdgame/sdk/obf/bf$a;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->g:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/baidu/bdgame/sdk/obf/bf$a;->a(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bf;->dismiss()V

    goto :goto_7

    .line 94
    :cond_34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_4a

    .line 95
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/bf;->h:Lcom/baidu/bdgame/sdk/obf/bf$a;

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->g:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/baidu/bdgame/sdk/obf/bf$a;->a(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bf;->dismiss()V

    goto :goto_7

    .line 97
    :cond_4a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_7

    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/bf;->h:Lcom/baidu/bdgame/sdk/obf/bf$a;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/bf$a;->a()V

    .line 99
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/bf;->dismiss()V

    goto :goto_7
.end method
