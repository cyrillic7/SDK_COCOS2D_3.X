.class public Lcom/duoku/platform/a/h;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/a/h$a;
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
            "Lcom/duoku/platform/ui/a/j;",
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
            "Lcom/duoku/platform/ui/a/j;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/duoku/platform/a/h;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/duoku/platform/a/h;->c:Ljava/util/ArrayList;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/a/h;->b:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method


# virtual methods
.method public a(I)Lcom/duoku/platform/ui/a/j;
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/duoku/platform/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/ui/a/j;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/duoku/platform/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/duoku/platform/a/h;->a(I)Lcom/duoku/platform/ui/a/j;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 67
    .line 69
    if-nez p2, :cond_68

    .line 70
    iget-object v0, p0, Lcom/duoku/platform/a/h;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_fragment_common_item_title"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 71
    new-instance v1, Lcom/duoku/platform/a/h$a;

    invoke-direct {v1, p0, v3}, Lcom/duoku/platform/a/h$a;-><init>(Lcom/duoku/platform/a/h;Lcom/duoku/platform/a/h$a;)V

    .line 72
    iget-object v0, p0, Lcom/duoku/platform/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_tv_question_number"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/h$a;->a:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/duoku/platform/a/h;->a:Landroid/content/Context;

    const-string v2, "dk_tv_question_title"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/duoku/platform/a/h$a;->b:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 80
    :goto_3a
    iget-object v1, p0, Lcom/duoku/platform/a/h;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/duoku/platform/a/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_67

    .line 81
    iget-object v1, v0, Lcom/duoku/platform/a/h$a;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, v0, Lcom/duoku/platform/a/h$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/duoku/platform/a/h;->a(I)Lcom/duoku/platform/ui/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoku/platform/ui/a/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_67
    return-object p2

    .line 77
    :cond_68
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/a/h$a;

    goto :goto_3a
.end method
