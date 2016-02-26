.class public Lcom/duoku/platform/view/user/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/user/c$a;
    }
.end annotation


# instance fields
.field a:I

.field private b:Landroid/widget/GridView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/duoku/platform/a/a;

.field private h:Lcom/duoku/platform/a/b;

.field private i:Lcom/duoku/platform/a/g;

.field private j:Lcom/duoku/platform/view/user/a;

.field private k:Ljava/lang/String;

.field private l:Landroid/widget/Button;

.field private m:Landroid/content/Context;

.field private n:I

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/h/q;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/duoku/a/a/a/a/a;

.field private s:Z

.field private t:Z

.field private u:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/view/user/a;Landroid/content/Context;ILcom/duoku/a/a/a/a/a;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/user/c;->o:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/user/c;->p:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/view/user/c;->q:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/view/user/c;->a:I

    .line 61
    iput-boolean v1, p0, Lcom/duoku/platform/view/user/c;->s:Z

    .line 62
    iput-boolean v1, p0, Lcom/duoku/platform/view/user/c;->t:Z

    .line 344
    new-instance v0, Lcom/duoku/platform/view/user/c$1;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/user/c$1;-><init>(Lcom/duoku/platform/view/user/c;)V

    iput-object v0, p0, Lcom/duoku/platform/view/user/c;->u:Landroid/view/View$OnTouchListener;

    .line 72
    iput-object p1, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    .line 73
    iput-object p2, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    .line 74
    iput p3, p0, Lcom/duoku/platform/view/user/c;->n:I

    .line 75
    iput-object p4, p0, Lcom/duoku/platform/view/user/c;->r:Lcom/duoku/a/a/a/a/a;

    .line 76
    iput-object p5, p0, Lcom/duoku/platform/view/user/c;->k:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/duoku/platform/view/user/c;->a()V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/view/user/a;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    return-object v0
.end method

.method private a()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 86
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget v0, p0, Lcom/duoku/platform/view/user/c;->n:I

    if-ne v0, v5, :cond_108

    .line 90
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    const-string v2, "dk_tv_string_tools_cash"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    const-string v2, "dk_tv_string_tools_cash"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 103
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->j:Ljava/util/Stack;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    iget-object v1, v1, Lcom/duoku/platform/view/user/a;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    const-string v2, "dk_layout_progress_tool"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/c;->f:Landroid/widget/LinearLayout;

    .line 105
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    const-string v2, "dk_layout_net_error_tool"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/c;->d:Landroid/widget/LinearLayout;

    .line 106
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    const-string v2, "dk_layout_recharge_no_history_tool"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/c;->e:Landroid/widget/LinearLayout;

    .line 107
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    const-string v2, "dk_layout_data_error_tool"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/duoku/platform/view/user/c;->c:Landroid/widget/LinearLayout;

    .line 108
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    const-string v2, "lv_tooldetail"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/duoku/platform/view/user/c;->b:Landroid/widget/GridView;

    .line 109
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    const-string v2, "btn_cashcard_introduce"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/user/c;->l:Landroid/widget/Button;

    .line 110
    iget v0, p0, Lcom/duoku/platform/view/user/c;->n:I

    if-ne v0, v5, :cond_151

    .line 112
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->l:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 120
    :goto_c1
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->f()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 122
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->b:Landroid/widget/GridView;

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 125
    :cond_d0
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->b:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 132
    invoke-direct {p0}, Lcom/duoku/platform/view/user/c;->b()V

    .line 180
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->b:Landroid/widget/GridView;

    new-instance v1, Lcom/duoku/platform/view/user/c$2;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/c$2;-><init>(Lcom/duoku/platform/view/user/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 243
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->l:Landroid/widget/Button;

    new-instance v1, Lcom/duoku/platform/view/user/c$3;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/c$3;-><init>(Lcom/duoku/platform/view/user/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-void

    .line 93
    :cond_108
    iget v0, p0, Lcom/duoku/platform/view/user/c;->n:I

    if-ne v0, v6, :cond_12c

    .line 95
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    const-string v2, "dk_tv_string_tools_charge"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    const-string v2, "dk_tv_string_tools_charge"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_35

    .line 98
    :cond_12c
    iget v0, p0, Lcom/duoku/platform/view/user/c;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_35

    .line 100
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    const-string v2, "dk_tv_string_tools_prize"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/view/user/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    iget-object v0, v0, Lcom/duoku/platform/view/user/a;->s:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    const-string v2, "dk_tv_string_tools_prize"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_35

    .line 116
    :cond_151
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->l:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_c1
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/c;Lcom/duoku/platform/a/a;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/duoku/platform/view/user/c;->g:Lcom/duoku/platform/a/a;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/c;Lcom/duoku/platform/a/b;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/duoku/platform/view/user/c;->h:Lcom/duoku/platform/a/b;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/c;Lcom/duoku/platform/a/g;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/duoku/platform/view/user/c;->i:Lcom/duoku/platform/a/g;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/view/user/c;Z)V
    .registers 2

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/duoku/platform/view/user/c;->t:Z

    return-void
.end method

.method private b()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 264
    iget v0, p0, Lcom/duoku/platform/view/user/c;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 266
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/duoku/platform/view/user/c;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    invoke-virtual {v2}, Lcom/duoku/platform/view/user/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/f/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_TOOLSLIST_CASH_URL:Ljava/lang/String;

    const/16 v3, 0x47

    new-instance v4, Lcom/duoku/platform/view/user/c$a;

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/view/user/c$a;-><init>(Lcom/duoku/platform/view/user/c;Lcom/duoku/platform/view/user/c$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 279
    :cond_33
    :goto_33
    return-void

    .line 269
    :cond_34
    iget v0, p0, Lcom/duoku/platform/view/user/c;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_67

    .line 271
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/duoku/platform/view/user/c;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    invoke-virtual {v2}, Lcom/duoku/platform/view/user/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/f/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_TOOLSLIST_CHARGE_URL:Ljava/lang/String;

    const/16 v3, 0x48

    new-instance v4, Lcom/duoku/platform/view/user/c$a;

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/view/user/c$a;-><init>(Lcom/duoku/platform/view/user/c;Lcom/duoku/platform/view/user/c$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    goto :goto_33

    .line 274
    :cond_67
    iget v0, p0, Lcom/duoku/platform/view/user/c;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_33

    .line 276
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/duoku/platform/view/user/c;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/user/c;->j:Lcom/duoku/platform/view/user/a;

    invoke-virtual {v2}, Lcom/duoku/platform/view/user/a;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/f/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_TOOLSLIST_PRIZE_URL:Ljava/lang/String;

    const/16 v3, 0x49

    new-instance v4, Lcom/duoku/platform/view/user/c$a;

    invoke-direct {v4, p0, v5}, Lcom/duoku/platform/view/user/c$a;-><init>(Lcom/duoku/platform/view/user/c;Lcom/duoku/platform/view/user/c$a;)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    goto :goto_33
.end method

.method static synthetic b(Lcom/duoku/platform/view/user/c;)V
    .registers 1

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/duoku/platform/view/user/c;->c()V

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/view/user/c;Z)V
    .registers 2

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/duoku/platform/view/user/c;->s:Z

    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    const-string v2, "dk_btn_history_retry_tool"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 287
    new-instance v1, Lcom/duoku/platform/view/user/c$4;

    invoke-direct {v1, p0}, Lcom/duoku/platform/view/user/c$4;-><init>(Lcom/duoku/platform/view/user/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 303
    return-void
.end method

.method static synthetic c(Lcom/duoku/platform/view/user/c;)V
    .registers 1

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/duoku/platform/view/user/c;->d()V

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/view/user/c;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .registers 5

    .prologue
    .line 310
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    const-string v2, "dk_iv_data_fail_load_tool"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 311
    iget-object v1, p0, Lcom/duoku/platform/view/user/c;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    const-string v3, "dk_tv_data_fail_load_tool"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 313
    new-instance v2, Lcom/duoku/platform/view/user/c$5;

    invoke-direct {v2, p0}, Lcom/duoku/platform/view/user/c$5;-><init>(Lcom/duoku/platform/view/user/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    new-instance v0, Lcom/duoku/platform/view/user/c$6;

    invoke-direct {v0, p0}, Lcom/duoku/platform/view/user/c$6;-><init>(Lcom/duoku/platform/view/user/c;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/view/user/c;)I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/duoku/platform/view/user/c;->n:I

    return v0
.end method

.method static synthetic f(Lcom/duoku/platform/view/user/c;)Landroid/widget/GridView;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->b:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic g(Lcom/duoku/platform/view/user/c;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/duoku/platform/view/user/c;)Ljava/util/List;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/duoku/platform/view/user/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/a/a;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->g:Lcom/duoku/platform/a/a;

    return-object v0
.end method

.method static synthetic k(Lcom/duoku/platform/view/user/c;)Ljava/util/List;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic l(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/a/b;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->h:Lcom/duoku/platform/a/b;

    return-object v0
.end method

.method static synthetic m(Lcom/duoku/platform/view/user/c;)Ljava/util/List;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic n(Lcom/duoku/platform/view/user/c;)Lcom/duoku/a/a/a/a/a;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->r:Lcom/duoku/a/a/a/a/a;

    return-object v0
.end method

.method static synthetic o(Lcom/duoku/platform/view/user/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/duoku/platform/view/user/c;)Lcom/duoku/platform/a/g;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->i:Lcom/duoku/platform/a/g;

    return-object v0
.end method

.method static synthetic q(Lcom/duoku/platform/view/user/c;)Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/duoku/platform/view/user/c;->s:Z

    return v0
.end method

.method static synthetic r(Lcom/duoku/platform/view/user/c;)Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/duoku/platform/view/user/c;->t:Z

    return v0
.end method

.method static synthetic s(Lcom/duoku/platform/view/user/c;)V
    .registers 1

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/duoku/platform/view/user/c;->b()V

    return-void
.end method

.method static synthetic t(Lcom/duoku/platform/view/user/c;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic u(Lcom/duoku/platform/view/user/c;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/duoku/platform/view/user/c;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method
