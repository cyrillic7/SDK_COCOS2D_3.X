.class public Lcom/baidu/bdgame/sdk/obf/cj;
.super Lcom/baidu/bdgame/sdk/obf/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/cj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/lw",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/hi;",
        "Lcom/baidu/bdgame/sdk/obf/hh;",
        ">;"
    }
.end annotation


# static fields
.field private static final k:I = 0x14


# instance fields
.field private l:I

.field private m:Lcom/baidu/bdgame/sdk/obf/bz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/lw;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cj;->l:I

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cj;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cj;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cj;->e(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/cj;)V
    .registers 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->k()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/cj;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/cj;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/cj;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/cj;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/cj;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/cj;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/cj;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/cj;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/cj;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/baidu/bdgame/sdk/obf/cj;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/baidu/bdgame/sdk/obf/cj;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .registers 4

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_adapter_pay_order_detail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/view/View;)Lcom/baidu/bdgame/sdk/obf/lv;
    .registers 4

    .prologue
    .line 60
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cj$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/cj$a;-><init>(Lcom/baidu/bdgame/sdk/obf/cj;Lcom/baidu/bdgame/sdk/obf/cj$1;)V

    .line 61
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/cj$a;->a(Landroid/view/View;)V

    .line 62
    invoke-virtual {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/cj$a;->a(Landroid/view/View;Lcom/baidu/bdgame/sdk/obf/lv$a;)V

    .line 63
    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/hi;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/hi;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/hh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/hi;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 68
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/cj;->l:I

    if-ne v0, p1, :cond_e

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cj;->l:I

    .line 73
    :goto_7
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->notifyDataSetChanged()V

    .line 74
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/lw;->a(I)V

    .line 75
    return-void

    .line 71
    :cond_e
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/cj;->l:I

    goto :goto_7
.end method

.method protected a(ILcom/baidu/bdgame/sdk/obf/hh;Lcom/baidu/bdgame/sdk/obf/lv;)V
    .registers 9

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 79
    if-eqz p2, :cond_93

    .line 80
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/cj$a;

    .line 81
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->a(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/hh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->b(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/hh;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/hh;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyyMMdd HH:mm:ss"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ku;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_35

    .line 85
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->c(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "yyyy.M.d HH:mm"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/ku;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_35
    const-string v0, "0"

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/hh;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 88
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->d(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_icon_pay_order_list_init"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    :goto_52
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->e(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/hh;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->f(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/hh;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->g(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/hh;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->h(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 103
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/cj;->l:I

    if-ne p1, v0, :cond_d9

    .line 104
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->i(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->j(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->k(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    :cond_93
    :goto_93
    return-void

    .line 90
    :cond_94
    const-string v0, "1"

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/hh;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 91
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->d(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_icon_pay_order_list_success"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_52

    .line 93
    :cond_b2
    const-string v0, "2"

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/hh;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 94
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->d(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_icon_pay_order_list_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_52

    .line 97
    :cond_d0
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->d(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_52

    .line 108
    :cond_d9
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->i(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->j(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/cj$a;->k(Lcom/baidu/bdgame/sdk/obf/cj$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_93
.end method

.method protected bridge synthetic a(ILjava/lang/Object;Lcom/baidu/bdgame/sdk/obf/lv;)V
    .registers 4

    .prologue
    .line 30
    check-cast p2, Lcom/baidu/bdgame/sdk/obf/hh;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/cj;->a(ILcom/baidu/bdgame/sdk/obf/hh;Lcom/baidu/bdgame/sdk/obf/lv;)V

    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/bz;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cj;->m:Lcom/baidu/bdgame/sdk/obf/bz;

    .line 155
    return-void
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/lv;)V
    .registers 2

    .prologue
    .line 116
    return-void
.end method

.method protected a(Z)V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cj;->m:Lcom/baidu/bdgame/sdk/obf/bz;

    if-eqz v0, :cond_9

    .line 126
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cj;->m:Lcom/baidu/bdgame/sdk/obf/bz;

    invoke-interface {v0, p1}, Lcom/baidu/bdgame/sdk/obf/bz;->a(Z)V

    .line 128
    :cond_9
    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 30
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/hi;

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cj;->b(Lcom/baidu/bdgame/sdk/obf/hi;)Z

    move-result v0

    return v0
.end method

.method protected synthetic b(Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    .prologue
    .line 30
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/hi;

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cj;->a(Lcom/baidu/bdgame/sdk/obf/hi;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)V
    .registers 8

    .prologue
    .line 132
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyyMM"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ku;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "7"

    const/16 v3, 0x14

    new-instance v5, Lcom/baidu/bdgame/sdk/obf/cj$1;

    invoke-direct {v5, p0}, Lcom/baidu/bdgame/sdk/obf/cj$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cj;)V

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/bm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 147
    if-nez v0, :cond_33

    .line 148
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_token_invalid"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    .line 149
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->k()V

    .line 151
    :cond_33
    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/hi;)Z
    .registers 6

    .prologue
    .line 49
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/hi;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/hi;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    const/4 v0, 0x1

    .line 52
    :goto_13
    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->getCount()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2e

    .line 53
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/cj;->b()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_amazing_loading_no_more_page"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    .line 55
    :cond_2e
    return v0

    .line 49
    :cond_2f
    const/4 v0, 0x0

    goto :goto_13
.end method
