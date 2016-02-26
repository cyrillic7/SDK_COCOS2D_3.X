.class Lcom/baidu/bdgame/sdk/obf/ch$a;
.super Lcom/baidu/bdgame/sdk/obf/lv;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ch;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/ch;)V
    .registers 2

    .prologue
    .line 151
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/lv;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/ch;Lcom/baidu/bdgame/sdk/obf/ch$1;)V
    .registers 3

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ch$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ch;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/baidu/bdgame/sdk/obf/ch$a;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->i:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->c(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "txt_name"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->b:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->d(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "txt_bean"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->c:Landroid/widget/TextView;

    .line 167
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->e(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "txt_time"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->d:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->f(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lin_detail"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->e:Landroid/widget/LinearLayout;

    .line 169
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->g(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "txt_money_label"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->f:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->h(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "txt_money"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->g:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->i(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "txt_order_no"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->h:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->j(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "img_triangle"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->i:Landroid/widget/ImageView;

    .line 173
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->a:Lcom/baidu/bdgame/sdk/obf/ch;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ch;->k(Lcom/baidu/bdgame/sdk/obf/ch;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "img_have_more"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ch$a;->j:Landroid/widget/ImageView;

    .line 174
    return-void
.end method
