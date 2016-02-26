.class public Lcom/duoku/platform/a/i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/a/i$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/bean/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/bean/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/duoku/platform/a/i;->c:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/duoku/platform/a/i;->a:Ljava/util/List;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/a/i;->b:Landroid/view/LayoutInflater;

    .line 35
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/duoku/platform/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v0, p0, Lcom/duoku/platform/a/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_ac

    .line 65
    iget-object v0, p0, Lcom/duoku/platform/a/i;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/a/i;->c:Landroid/content/Context;

    const-string v2, "bd_dialog_errornotice_item"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 71
    :goto_1f
    new-instance v2, Lcom/duoku/platform/a/i$a;

    invoke-direct {v2, p0}, Lcom/duoku/platform/a/i$a;-><init>(Lcom/duoku/platform/a/i;)V

    .line 72
    iget-object v0, p0, Lcom/duoku/platform/a/i;->c:Landroid/content/Context;

    const-string v3, "bd_errornotice_tv_text"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/a/i$a;->a:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/duoku/platform/a/i;->c:Landroid/content/Context;

    const-string v3, "bd_errornotice_tv_time"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/a/i$a;->b:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/duoku/platform/a/i;->c:Landroid/content/Context;

    const-string v3, "bd_errornotice_tv_title"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/duoku/platform/a/i$a;->c:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/duoku/platform/a/i;->c:Landroid/content/Context;

    const-string v3, "bd_errornotice_iv_new"

    invoke-static {v0, v3}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/duoku/platform/a/i$a;->d:Landroid/widget/ImageView;

    .line 82
    iget-object v3, v2, Lcom/duoku/platform/a/i$a;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/c;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v3, v2, Lcom/duoku/platform/a/i$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/c;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v3, v2, Lcom/duoku/platform/a/i$a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoku/platform/a/i;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/c;

    invoke-virtual {v0}, Lcom/duoku/platform/bean/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    if-nez p1, :cond_ab

    .line 87
    iget-object v0, v2, Lcom/duoku/platform/a/i$a;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :cond_ab
    return-object v1

    .line 69
    :cond_ac
    iget-object v0, p0, Lcom/duoku/platform/a/i;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/a/i;->c:Landroid/content/Context;

    const-string v2, "bd_dialog_errornotice_item_port"

    invoke-static {v1, v2}, Lcom/duoku/platform/util/m;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1f
.end method
