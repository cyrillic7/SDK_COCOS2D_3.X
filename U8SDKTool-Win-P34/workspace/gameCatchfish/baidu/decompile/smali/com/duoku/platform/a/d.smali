.class public Lcom/duoku/platform/a/d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/a/d$a;
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
            "Lcom/duoku/platform/h/o;",
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
            "Lcom/duoku/platform/h/o;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/duoku/platform/a/d;->a:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/duoku/platform/a/d;->b:Landroid/view/LayoutInflater;

    .line 20
    iput-object v0, p0, Lcom/duoku/platform/a/d;->c:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Lcom/duoku/platform/a/d;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/duoku/platform/a/d;->c:Ljava/util/ArrayList;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/a/d;->b:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/duoku/platform/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/duoku/platform/a/d;->c:Ljava/util/ArrayList;

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

    .line 52
    if-nez p2, :cond_80

    .line 54
    iget-object v0, p0, Lcom/duoku/platform/a/d;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/a/d;->a:Landroid/content/Context;

    const-string v2, "dk_introduce_lv_item_port"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    new-instance v1, Lcom/duoku/platform/a/d$a;

    invoke-direct {v1, p0, v3}, Lcom/duoku/platform/a/d$a;-><init>(Lcom/duoku/platform/a/d;Lcom/duoku/platform/a/d$a;)V

    .line 56
    iget-object v0, p0, Lcom/duoku/platform/a/d;->a:Landroid/content/Context;

    const-string v2, "tv_introduce_question"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/d$a;->a:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/duoku/platform/a/d;->a:Landroid/content/Context;

    const-string v2, "tv_introduce_answer"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/d$a;->b:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/duoku/platform/a/d;->a:Landroid/content/Context;

    const-string v2, "textView_index"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/d$a;->c:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_49
    iget-object v2, v1, Lcom/duoku/platform/a/d$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/o;

    invoke-virtual {v0}, Lcom/duoku/platform/h/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, v1, Lcom/duoku/platform/a/d$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/h/o;

    invoke-virtual {v0}, Lcom/duoku/platform/h/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    add-int/lit8 v0, p1, 0x1

    .line 68
    iget-object v1, v1, Lcom/duoku/platform/a/d$a;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-object p2

    .line 63
    :cond_80
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/a/d$a;

    move-object v1, v0

    goto :goto_49
.end method
