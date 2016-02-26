.class public Lcom/duoku/platform/a/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/a/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/h/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/h/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/duoku/platform/a/b;->a:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/duoku/platform/a/b;->b:Landroid/view/LayoutInflater;

    .line 21
    iput-object v0, p0, Lcom/duoku/platform/a/b;->c:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Lcom/duoku/platform/a/b;->a:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/duoku/platform/a/b;->c:Ljava/util/ArrayList;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/a/b;->b:Landroid/view/LayoutInflater;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/a/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/duoku/platform/a/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/a/b;)Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/duoku/platform/a/b;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/duoku/platform/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/duoku/platform/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 51
    if-nez p2, :cond_d3

    .line 52
    iget-object v0, p0, Lcom/duoku/platform/a/b;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/a/b;->a:Landroid/content/Context;

    const-string v2, "dk_tool_lv_chargecard_port"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v1, Lcom/duoku/platform/a/b$a;

    invoke-direct {v1, p0, v3}, Lcom/duoku/platform/a/b$a;-><init>(Lcom/duoku/platform/a/b;Lcom/duoku/platform/a/b$a;)V

    .line 54
    iget-object v0, p0, Lcom/duoku/platform/a/b;->a:Landroid/content/Context;

    .line 55
    const-string v2, "tv_list_chargecarddate"

    .line 54
    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/b$a;->a:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/duoku/platform/a/b;->a:Landroid/content/Context;

    .line 57
    const-string v2, "textView_value"

    .line 56
    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/b$a;->b:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/duoku/platform/a/b;->a:Landroid/content/Context;

    .line 59
    const-string v2, "tv_chargecard_number"

    .line 58
    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/b$a;->c:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/duoku/platform/a/b;->a:Landroid/content/Context;

    .line 61
    const-string v2, "tv_chargecardpassword"

    .line 60
    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/b$a;->d:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/duoku/platform/a/b;->a:Landroid/content/Context;

    .line 63
    const-string v2, "tv_chargecardtype"

    .line 62
    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/b$a;->e:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    :goto_69
    iget-object v2, v1, Lcom/duoku/platform/a/b$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/d;

    invoke-virtual {v0}, Lcom/duoku/platform/h/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v1, Lcom/duoku/platform/a/b$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/d;

    invoke-virtual {v0}, Lcom/duoku/platform/h/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, v1, Lcom/duoku/platform/a/b$a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/d;

    invoke-virtual {v0}, Lcom/duoku/platform/h/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, v1, Lcom/duoku/platform/a/b$a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/d;

    invoke-virtual {v0}, Lcom/duoku/platform/h/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v2, v1, Lcom/duoku/platform/a/b$a;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/d;

    invoke-virtual {v0}, Lcom/duoku/platform/h/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, v1, Lcom/duoku/platform/a/b$a;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/duoku/platform/a/b$1;

    invoke-direct {v2, p0, p1}, Lcom/duoku/platform/a/b$1;-><init>(Lcom/duoku/platform/a/b;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 85
    iget-object v0, v1, Lcom/duoku/platform/a/b$a;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/duoku/platform/a/b$2;

    invoke-direct {v1, p0, p1}, Lcom/duoku/platform/a/b$2;-><init>(Lcom/duoku/platform/a/b;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 97
    return-object p2

    .line 67
    :cond_d3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/a/b$a;

    move-object v1, v0

    goto :goto_69
.end method
