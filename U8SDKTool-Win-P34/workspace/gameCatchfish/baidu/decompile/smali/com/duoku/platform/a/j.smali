.class public Lcom/duoku/platform/a/j;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/a/j$a;
    }
.end annotation


# instance fields
.field a:Z

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/h/k;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/duoku/platform/util/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/h/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/duoku/platform/a/j;->c:Landroid/view/LayoutInflater;

    .line 28
    iput-object v0, p0, Lcom/duoku/platform/a/j;->d:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/a/j;->a:Z

    .line 33
    iput-object p1, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/duoku/platform/a/j;->d:Ljava/util/ArrayList;

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/a/j;->c:Landroid/view/LayoutInflater;

    .line 36
    new-instance v0, Lcom/duoku/platform/util/i;

    invoke-direct {v0}, Lcom/duoku/platform/util/i;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/a/j;->e:Lcom/duoku/platform/util/i;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/a/j;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/a/j;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/duoku/platform/a/j;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoku/platform/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/duoku/platform/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 62
    if-nez p2, :cond_184

    .line 63
    iget-object v0, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_173

    .line 64
    iget-object v0, p0, Lcom/duoku/platform/a/j;->c:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    const-string v2, "dk_numberbox_lv_item_land"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 68
    :goto_21
    new-instance v2, Lcom/duoku/platform/a/j$a;

    invoke-direct {v2, p0}, Lcom/duoku/platform/a/j$a;-><init>(Lcom/duoku/platform/a/j;)V

    .line 69
    iget-object v0, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    const-string v3, "tv_game_title"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/a/j$a;->c:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    const-string v3, "tv_game_endtime"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/a/j$a;->d:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    const-string v3, "tv_game_number"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/a/j$a;->e:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    const-string v3, "tv_gamebox_value"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/a/j$a;->f:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    const-string v3, "tv_numberbox_content"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/a/j$a;->g:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    const-string v3, "iv_numberbox_gamelogo"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/duoku/platform/a/j$a;->a:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    const-string v3, "iv_numberbox_more"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/duoku/platform/a/j$a;->b:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    const-string v3, "btn_gamenumberbox_copy"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/duoku/platform/a/j$a;->h:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    const-string v3, "rl_content"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/duoku/platform/a/j$a;->i:Landroid/widget/RelativeLayout;

    .line 78
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v1

    move-object v1, v2

    .line 83
    :goto_bb
    iget-object v2, v1, Lcom/duoku/platform/a/j$a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/k;

    invoke-virtual {v0}, Lcom/duoku/platform/h/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, v1, Lcom/duoku/platform/a/j$a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/k;

    invoke-virtual {v0}, Lcom/duoku/platform/h/k;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, v1, Lcom/duoku/platform/a/j$a;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/k;

    invoke-virtual {v0}, Lcom/duoku/platform/h/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v2, v1, Lcom/duoku/platform/a/j$a;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/duoku/platform/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/k;

    invoke-virtual {v0}, Lcom/duoku/platform/h/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u5143"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v2, v1, Lcom/duoku/platform/a/j$a;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "\u793c\u5305\u5185\u5bb9\uff1a"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/k;

    invoke-virtual {v0}, Lcom/duoku/platform/h/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, v1, Lcom/duoku/platform/a/j$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoku/platform/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/k;

    invoke-virtual {v0}, Lcom/duoku/platform/h/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object v0, v1, Lcom/duoku/platform/a/j$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    const-string v3, "dk_numberbox_gamelogo_bg"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v2, p0, Lcom/duoku/platform/a/j;->e:Lcom/duoku/platform/util/i;

    iget-object v0, p0, Lcom/duoku/platform/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/k;

    invoke-virtual {v0}, Lcom/duoku/platform/h/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p0, v1}, Lcom/duoku/platform/util/i;->a(Ljava/lang/String;Landroid/widget/BaseAdapter;Lcom/duoku/platform/a/j$a;)V

    .line 91
    iget-object v0, v1, Lcom/duoku/platform/a/j$a;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    iget-object v0, v1, Lcom/duoku/platform/a/j$a;->h:Landroid/widget/Button;

    new-instance v1, Lcom/duoku/platform/a/j$1;

    invoke-direct {v1, p0, p1}, Lcom/duoku/platform/a/j$1;-><init>(Lcom/duoku/platform/a/j;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-object p2

    .line 66
    :cond_173
    iget-object v0, p0, Lcom/duoku/platform/a/j;->c:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/a/j;->b:Landroid/content/Context;

    const-string v2, "dk_numberbox_lv_item_port"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_21

    .line 80
    :cond_184
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/a/j$a;

    move-object v1, v0

    goto/16 :goto_bb
.end method
