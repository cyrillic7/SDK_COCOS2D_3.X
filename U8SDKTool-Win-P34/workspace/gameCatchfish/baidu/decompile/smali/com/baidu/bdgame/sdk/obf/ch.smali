.class public Lcom/baidu/bdgame/sdk/obf/ch;
.super Lcom/baidu/bdgame/sdk/obf/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ch$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/baidu/bdgame/sdk/obf/lw",
        "<",
        "Lcom/baidu/bdgame/sdk/obf/ha;",
        "Lcom/baidu/bdgame/sdk/obf/gz;",
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
    .line 38
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/lw;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ch;->l:I

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ch;Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ch;->e(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ch;)V
    .registers 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->k()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .registers 4

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_adapter_pay_baidu_bean_detail"

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
    .line 59
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ch$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/ch$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ch;Lcom/baidu/bdgame/sdk/obf/ch$1;)V

    .line 60
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ch$a;->a(Landroid/view/View;)V

    .line 61
    invoke-virtual {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/ch$a;->a(Landroid/view/View;Lcom/baidu/bdgame/sdk/obf/lv$a;)V

    .line 62
    return-object v0
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/ha;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/ha;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/gz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ha;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 67
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ch;->l:I

    if-ne v0, p1, :cond_e

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/ch;->l:I

    .line 72
    :goto_7
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->notifyDataSetChanged()V

    .line 73
    invoke-super {p0, p1}, Lcom/baidu/bdgame/sdk/obf/lw;->a(I)V

    .line 74
    return-void

    .line 70
    :cond_e
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ch;->l:I

    goto :goto_7
.end method

.method protected a(ILcom/baidu/bdgame/sdk/obf/gz;Lcom/baidu/bdgame/sdk/obf/lv;)V
    .registers 12

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 78
    if-eqz p2, :cond_af

    .line 79
    check-cast p3, Lcom/baidu/bdgame/sdk/obf/ch$a;

    .line 80
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->a(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/gz;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/gz;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyyMMdd HH:mm:ss"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ku;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_2d

    .line 83
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->b(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "yyyy.M.d HH:mm"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/ku;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_2d
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->c(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/gz;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const-string v0, ""

    .line 87
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/gz;->a()I

    move-result v1

    if-eq v1, v4, :cond_46

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/gz;->a()I

    move-result v1

    if-ne v1, v7, :cond_b0

    .line 88
    :cond_46
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->d(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_order_list_recharge_money_label"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->e(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_paycenter_order_list_recharge_money"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/gz;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const-string v0, "+"

    .line 96
    :cond_7a
    :goto_7a
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->f(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/gz;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ch;->l:I

    if-ne p1, v0, :cond_dc

    .line 98
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->g(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->h(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->i(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :cond_af
    :goto_af
    return-void

    .line 91
    :cond_b0
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/gz;->a()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_bd

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/gz;->a()I

    move-result v1

    if-ne v1, v6, :cond_7a

    .line 92
    :cond_bd
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->d(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_paycenter_order_list_consume_content"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->e(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/gz;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const-string v0, "-"

    goto :goto_7a

    .line 102
    :cond_dc
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->g(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->h(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    invoke-static {p3}, Lcom/baidu/bdgame/sdk/obf/ch$a;->i(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_af
.end method

.method protected bridge synthetic a(ILjava/lang/Object;Lcom/baidu/bdgame/sdk/obf/lv;)V
    .registers 4

    .prologue
    .line 29
    check-cast p2, Lcom/baidu/bdgame/sdk/obf/gz;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ch;->a(ILcom/baidu/bdgame/sdk/obf/gz;Lcom/baidu/bdgame/sdk/obf/lv;)V

    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/bz;)V
    .registers 2

    .prologue
    .line 147
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ch;->m:Lcom/baidu/bdgame/sdk/obf/bz;

    .line 148
    return-void
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/lv;)V
    .registers 2

    .prologue
    .line 110
    return-void
.end method

.method protected a(Z)V
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch;->m:Lcom/baidu/bdgame/sdk/obf/bz;

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch;->m:Lcom/baidu/bdgame/sdk/obf/bz;

    invoke-interface {v0, p1}, Lcom/baidu/bdgame/sdk/obf/bz;->a(Z)V

    .line 122
    :cond_9
    return-void
.end method

.method protected synthetic a(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 29
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/ha;

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ch;->b(Lcom/baidu/bdgame/sdk/obf/ha;)Z

    move-result v0

    return v0
.end method

.method protected synthetic b(Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    .prologue
    .line 29
    check-cast p1, Lcom/baidu/bdgame/sdk/obf/ha;

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ch;->a(Lcom/baidu/bdgame/sdk/obf/ha;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)V
    .registers 8

    .prologue
    .line 126
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyyMM"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ku;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "15"

    const/16 v3, 0x14

    new-instance v5, Lcom/baidu/bdgame/sdk/obf/ch$1;

    invoke-direct {v5, p0}, Lcom/baidu/bdgame/sdk/obf/ch$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ch;)V

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 140
    if-nez v0, :cond_33

    .line 141
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_error_token_invalid"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    .line 142
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->k()V

    .line 144
    :cond_33
    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/ha;)Z
    .registers 6

    .prologue
    .line 48
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ha;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ha;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2f

    const/4 v0, 0x1

    .line 51
    :goto_13
    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->getCount()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2e

    .line 52
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/ch;->b()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bdp_amazing_loading_no_more_page"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ln;->a(Landroid/content/Context;I)V

    .line 54
    :cond_2e
    return v0

    .line 48
    :cond_2f
    const/4 v0, 0x0

    goto :goto_13
.end method
