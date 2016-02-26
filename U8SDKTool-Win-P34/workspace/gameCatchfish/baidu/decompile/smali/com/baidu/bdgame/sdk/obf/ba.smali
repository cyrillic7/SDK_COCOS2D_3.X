.class public Lcom/baidu/bdgame/sdk/obf/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/ba$b;,
        Lcom/baidu/bdgame/sdk/obf/ba$c;,
        Lcom/baidu/bdgame/sdk/obf/ba$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/baidu/bdgame/sdk/obf/ba$a;

.field private d:Lcom/baidu/bdgame/sdk/obf/ba$c;

.field private e:Lcom/baidu/bdgame/sdk/obf/ba$b;

.field private f:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ba;->a:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ba;->b:Ljava/util/List;

    .line 33
    return-void
.end method

.method private a(IZ)Landroid/view/View;
    .registers 7

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/r;

    .line 37
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ba;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ba;->a:Landroid/content/Context;

    const-string v3, "bdp_adapter_account_history_list_item"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 39
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ba;->a:Landroid/content/Context;

    const-string v3, "txt_account"

    invoke-static {v1, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/r;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ba;->a:Landroid/content/Context;

    const-string v3, "img_del"

    invoke-static {v1, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/ba$1;

    invoke-direct {v3, p0, v0}, Lcom/baidu/bdgame/sdk/obf/ba$1;-><init>(Lcom/baidu/bdgame/sdk/obf/ba;Lcom/baidu/bdgame/sdk/obf/r;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ba;->a:Landroid/content/Context;

    const-string v3, "v_divider"

    invoke-static {v1, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p2, :cond_61

    const/4 v1, 0x0

    :goto_55
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ba$2;

    invoke-direct {v1, p0, v0}, Lcom/baidu/bdgame/sdk/obf/ba$2;-><init>(Lcom/baidu/bdgame/sdk/obf/ba;Lcom/baidu/bdgame/sdk/obf/r;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-object v2

    .line 53
    :cond_61
    const/4 v1, 0x4

    goto :goto_55
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ba;)Ljava/util/List;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba;->b:Ljava/util/List;

    return-object v0
.end method

.method private a()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba;->f:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ba;->a:Landroid/content/Context;

    const-string v3, "bdp_bg_white_round_border"

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba;->a:Landroid/content/Context;

    const/high16 v2, 0x40c00000

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;F)I

    move-result v0

    .line 70
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ba;->f:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 71
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4a

    move v0, v1

    .line 73
    :goto_29
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ba;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_53

    .line 74
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/ba;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_48

    move v2, v1

    .line 79
    :goto_3c
    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/ba;->f:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lcom/baidu/bdgame/sdk/obf/ba;->a(IZ)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 77
    :cond_48
    const/4 v2, 0x1

    goto :goto_3c

    .line 82
    :cond_4a
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba;->d:Lcom/baidu/bdgame/sdk/obf/ba$c;

    if-eqz v0, :cond_53

    .line 83
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba;->d:Lcom/baidu/bdgame/sdk/obf/ba$c;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/ba$c;->a()V

    .line 86
    :cond_53
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ba;)V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ba;->a()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ba;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ba;)Lcom/baidu/bdgame/sdk/obf/ba$b;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba;->e:Lcom/baidu/bdgame/sdk/obf/ba$b;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ba;)Lcom/baidu/bdgame/sdk/obf/ba$a;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ba;->c:Lcom/baidu/bdgame/sdk/obf/ba$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Lcom/baidu/bdgame/sdk/obf/ba$c;)V
    .registers 3

    .prologue
    .line 93
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ba;->f:Landroid/view/ViewGroup;

    .line 94
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ba;->d:Lcom/baidu/bdgame/sdk/obf/ba$c;

    .line 95
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/ba;->a()V

    .line 96
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ba$a;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ba;->c:Lcom/baidu/bdgame/sdk/obf/ba$a;

    .line 100
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ba$b;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ba;->e:Lcom/baidu/bdgame/sdk/obf/ba$b;

    .line 104
    return-void
.end method
